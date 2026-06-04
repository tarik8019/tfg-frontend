import 'package:flutter/material.dart';
import 'package:mijornada/data/repositories/empleado/empleado_repository.dart';
import 'package:mijornada/data/repositories/fichaje/fichaje_repository.dart';
import 'package:mijornada/data/repositories/auth/auth_repository.dart';
import 'package:mijornada/domain/models/fichaje/fichaje.dart';
import 'package:mijornada/infrastructure/services/location_services.dart';
import '../../../utils/result.dart';
import '../../models/empleado/dominio/empleado.dart';
import '../../models/empleado/summary/empleado_summary.dart';
import '../../models/fichaje/fichajes_empleado.dart';
import '../../models/fichaje/fichajes_por_dia.dart';

class FichajeUseCase {
  FichajeUseCase({ 
   required FichajeRepository fichajeRepository,
   required AuthRepository authRepository, 
   required LocationService  locationService ,
   required EmpleadoRepository empleadoRepository,

   }):
   _fichajeRepository = fichajeRepository,
   _locationService  = locationService,
   _authRepository = authRepository,
   _empleadoRepository = empleadoRepository;

  final FichajeRepository _fichajeRepository;
  final LocationService  _locationService;
  final AuthRepository _authRepository;
  final EmpleadoRepository _empleadoRepository;

  /// Fichar según el usuario logueado
Future<Result<void>> fichar({
  required String tipo,
  double? latitud,
  double? longitud,
  bool validadoFacial = false,
  String fuente = 'online',
}) async {
  // Tipos permitidos
  const tiposPermitidos = {'entrada', 'salida', 'pausa_inicio', 'pausa_fin'};
  if (!tiposPermitidos.contains(tipo)) {
    return Result.error(Exception('Tipo de fichaje no válido'));
  }

  final user = _authRepository.currentUser;
  if (user == null) return Result.error(Exception('Usuario no autenticado'));

  final empleadoResult = await _empleadoRepository.getByEmail(user.email);
  if (empleadoResult is! Ok || empleadoResult.value == null) {
    return Result.error(Exception('No se encontró empleado'));
  }
  final emple = empleadoResult.value!;
  final idEmpleado = emple.idEmpleado!;

  // Fichajes de HOY
  final hoyResult = await _fichajeRepository.getFichajesHoyPorEmpleado(idEmpleado);
  if (hoyResult.isFailure) return Result.error(hoyResult.error!);

  final fichajesHoy = hoyResult.value;

  // Validar reglas del día
  if (!_validarReglasDelDia(fichajesHoy!, tipo)) {
    return Result.error(Exception('Reglas de fichaje no válidas para hoy'));
  }

  // Validar transición solo usando último fichaje de hoy
  final ultimoHoy = fichajesHoy.isNotEmpty ? fichajesHoy.last : null;
  if (!_esTransicionValida(ultimoHoy?.tipoFichaje, tipo)) {
    return Result.error(Exception('Secuencia de fichaje no válida'));
  }

  final position = await _locationService.determinePosition();

  final fichaje = Fichaje(
    idEmpleado: idEmpleado,
    tipoFichaje: tipo,
    //timestamp: position.timestamp.toLocal(),
    latitud: position.latitude,
    longitud: position.longitude,
    validadoFacial: validadoFacial,
    fuenteFichaje: fuente,
  );

  final result = await _fichajeRepository.createFichaje(fichaje);
  if (result.isFailure) return Result.error(result.error!);

  return const Result.ok(null);
}

Future<Result<List<FichajesEmpleado>>> execute() async {
  try {
    final result = await _fichajeRepository.getFichajesHoyAgrupados();

    if (result is Ok<List<FichajesEmpleado>>) {
      return Result.ok(result.value);
    }

    if (result is Error<List<FichajesEmpleado>>) {
      return Result.error(result.error);
    }

    return Result.error(Exception('Resultado inesperado'));
  } catch (e) {
    return Result.error(Exception(e.toString()));
  }
}

Future<Result<List<FichajesPorDia>>> getFichajesFiltrados({
  String? nombre,
  String? apellidos,
  DateTime? fecha,
}) async {
  try {
    return await _fichajeRepository.getFichajesFiltrados(
      nombre: nombre,
      apellidos: apellidos,
      fecha: fecha,
    );
  } catch (e) {
    return Result.error(Exception('Error en UseCase: $e'));
  }
}

bool _validarReglasDelDia(List<Fichaje> fichajesHoy, String tipo) {
  final tiposHoy = fichajesHoy.map((f) => f.tipoFichaje).toList();

  // Solo una entrada al día (hasta que haya salida)
  if (tipo == 'entrada') {
    final tieneEntrada = tiposHoy.contains('entrada');
    final tieneSalida = tiposHoy.contains('salida');

    if (tieneEntrada && !tieneSalida) return false;
  }

  // No puede salir sin haber entrado
  if (tipo == 'salida' && !tiposHoy.contains('entrada')) {
    return false;
  }

  // No puede iniciar pausa sin entrada
  if (tipo == 'pausa_inicio' && !tiposHoy.contains('entrada')) {
    return false;
  }

  // No puede finalizar pausa sin haberla iniciado
  if (tipo == 'pausa_fin' && !tiposHoy.contains('pausa_inicio')) {
    return false;
  }

  // No puede repetir pausa_inicio sin pausa_fin
  if (tipo == 'pausa_inicio') {
    final pausasInicio = tiposHoy.where((t) => t == 'pausa_inicio').length;
    final pausasFin = tiposHoy.where((t) => t == 'pausa_fin').length;

    if (pausasInicio > pausasFin) return false;
  }

  return true;
}

bool _esTransicionValida(String? ultimo, String actual) {
  if (ultimo == null) return actual == 'entrada';

  // No permitir repetir el mismo tipo seguido
  if (ultimo == actual) return false;

  const transicionesValidas = {
    'entrada': ['pausa_inicio', 'salida'],
    'pausa_inicio': ['pausa_fin'],
    'pausa_fin': ['pausa_inicio', 'salida'],
    'salida': ['entrada'],
  };

  return transicionesValidas[ultimo]?.contains(actual) ?? false;
}
}

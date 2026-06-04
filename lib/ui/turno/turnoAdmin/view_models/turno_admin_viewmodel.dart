import 'package:flutter/material.dart';

import '../../../../domain/models/turno/dominio/turno.dart';
import '../../../../domain/models/sede/dominio/sede.dart';
import '../../../../domain/use_cases/turno/turno_use_case.dart';
import '../../../../domain/use_cases/sede/sede_use_case.dart';
import '../../../../data/repositories/auth/auth_repository.dart';
import '../../../../utils/command.dart';
import '../../../../utils/result.dart';

class TurnoAdminViewModel extends ChangeNotifier {
  TurnoAdminViewModel({
    required TurnoUseCase turnoUseCase,
    required SedeUseCase sedeUseCase,
    required AuthRepository authRepository,
  })  : _turnoUseCase = turnoUseCase,
        _sedeUseCase = sedeUseCase,
        _authRepository = authRepository {
    loadTurnos = Command0<void>(_loadTurnos);
    loadSedes = Command0<void>(_loadSedes);
    createTurno = Command1<Turno, Turno>(_create);
    updateTurno = Command1<void, Turno>(_update);
    deleteTurno = Command1<void, Turno>(_delete);
  }

  final TurnoUseCase _turnoUseCase;
  final SedeUseCase _sedeUseCase;
  final AuthRepository _authRepository;

  /// LISTADO DE TURNOS
  List<Turno> _turnos = [];
  List<Turno> get turnos => _turnos;

  /// LISTADO DE SEDES (para el formulario)
  List<Sede> _sedes = [];
  List<Sede> get sedes => _sedes;

  /// COMMANDS
  late final Command0<void> loadTurnos;
  late final Command0<void> loadSedes;
  late final Command1<Turno, Turno> createTurno;
  late final Command1<void, Turno> updateTurno;
  late final Command1<void, Turno> deleteTurno;

  // LOAD TURNOS
  Future<Result<void>> _loadTurnos() async {
    final result = await _turnoUseCase.getAllTurnos();

    if (result is Ok<List<Turno>>) {
      _turnos = result.value;
        // DEBUG: imprime sedes 
    for (var t in _turnos) {
      debugPrint('Turno: ${t.nombre}, Sede: ${t.sede?.nombre}');
    }

      notifyListeners();
      return const Result.ok(null);
    }

    if (result is Error<List<Turno>>) {
      return Result.error(result.error);
    }

    return Result.error(Exception('Error cargando turnos'));
  }

  // LOAD SEDES
  Future<Result<void>> _loadSedes() async {
    final result = await _sedeUseCase.getAllSedes();

    if (result is Ok<List<Sede>>) {
      _sedes = result.value;
      notifyListeners();
      return const Result.ok(null);
    }

    if (result is Error<List<Sede>>) {
      return Result.error(result.error);
    }

    return Result.error(Exception('Error cargando sedes'));
  }

  // CREATE
  Future<Result<Turno>> _create(Turno turno) async {
    try {
      turno = turno.copyWith(idSede: turno.sede?.idSede, horaInicio: turno.horaInicio,
      horaFin: turno.horaFin
);

       debugPrint('_create llamado con turno: ${turno.toJson()}');
      final user = _authRepository.currentUser;

      if (user == null) {
        return Result.error(Exception('Usuario no autenticado'));
      }

      final result = await _turnoUseCase.crearTurno(turno);
         debugPrint("VALUE: ${result.value}");

      if (result is Ok<Turno>) {
        _turnos.add(result.value);
        notifyListeners();
        return Result.ok(result.value);
      }

      if (result is Error<Turno>) {
        return Result.error(result.error);
      }

      return Result.error(Exception('Error desconocido al crear turno'));
    } catch (e) {
      return Result.error(Exception(e.toString()));
    }
  }

  // UPDATE
  Future<Result<void>> _update(Turno turno) async {
    try {
      final result = await _turnoUseCase.editarTurno(turno);

      if (result is Ok<void>) {
        final index = _turnos.indexWhere((t) => t.idTurno == turno.idTurno);

        if (index != -1) {
          _turnos[index] = turno;
          notifyListeners();
        }

        return const Result.ok(null);
      }

      if (result is Error<void>) {
        return Result.error(result.error);
      }

      return Result.error(Exception('Error desconocido al editar turno'));
    } catch (e) {
      return Result.error(Exception(e.toString()));
    }
  }

  // DELETE
  Future<Result<void>> _delete(Turno turno) async {
    try {
      final result = await _turnoUseCase.borrarTurno(turno.idTurno!);

      if (result is Ok<void>) {
        _turnos.removeWhere((t) => t.idTurno == turno.idTurno);
        notifyListeners();
        return const Result.ok(null);
      }

      if (result is Error<void>) {
        return Result.error(result.error);
      }

      return Result.error(Exception('Error desconocido al borrar turno'));
    } catch (e) {
      return Result.error(Exception(e.toString()));
    }
  }
}

import 'package:flutter/material.dart';
import '../../../../domain/models/empleado/dominio/empleado.dart';
import '../../../../domain/models/empleado/summary/empleado_summary.dart';
import '../../../../domain/use_cases/empleado/empleado_create_use_case.dart';
import '../../../../data/repositories/empleado/empleado_repository.dart';
import '../../../../data/repositories/user/user_repository.dart';
import '../../../../data/repositories/departamento/departamento_repository.dart';
import '../../../../domain/use_cases/empleado/empleado_use_case.dart';
import '../../../../utils/command.dart';
import '../../../../utils/result.dart';

class EmpleadoDialogoViewModel extends ChangeNotifier {
  EmpleadoDialogoViewModel({
    required EmpleadoCreateUseCase empleadoCreateUseCase,
    required EmpleadoRepository empleadoRepository,
    required UserRepository userRepository,
    required EmpleadoUseCase empleadoUseCase,
    required DepartamentoRepository departamentoRepository,
  })  : _empleadoCreateUseCase = empleadoCreateUseCase,
        _empleadoRepository = empleadoRepository,
        _userRepository = userRepository,
        _empleadoUseCase = empleadoUseCase,
        _departamentoRepository = departamentoRepository {
    loadEmpleados = Command0<void>(_load);
    createEmpleado = Command1<Empleado, Empleado>(_create);
    updateEmpleado = Command1<Empleado, Empleado>(_update);
    deleteEmpleado = Command1<void, Empleado>(_delete);
  }

  final EmpleadoCreateUseCase _empleadoCreateUseCase;
  final EmpleadoUseCase _empleadoUseCase;
  final EmpleadoRepository _empleadoRepository;
  final UserRepository _userRepository;
  final DepartamentoRepository _departamentoRepository;

  /// LISTA INTERNA
  List<Empleado> _empleados = [];
  List<Empleado> get empleados => _empleados;

  /// COMMANDS
  late final Command1<Empleado, Empleado> createEmpleado;
  late final Command0<void> loadEmpleados;
  late final Command1<Empleado, Empleado> updateEmpleado;
  late final Command1<void, Empleado> deleteEmpleado;


  // LOAD
  Future<Result<void>> _load() async {
    final result = await _empleadoRepository.getAll();

    if (result is Ok<List<Empleado>>) {
      _empleados = result.value;
      notifyListeners();
      return const Result.ok(null);
    }

    if (result is Error<List<Empleado>>) {
      return Result.error(result.error);
    }

    return Result.error(Exception('Error cargando empleados'));
  }

  // CREATE
  Future<Result<Empleado>> _create(Empleado empleado) async {
    try {
      // Obtener usuario por email
      final usuarioResult = await _userRepository.getByEmail(empleado.email);
      if (usuarioResult is! Ok) {
         debugPrint('No se encontró usuario para este email');
        return Result.error(Exception('No se encontró usuario para este email'));
      }

      final user = usuarioResult.value;
      if (user!.idUsuario == null) {
        debugPrint('El usuario no tiene idUsuario');
        return Result.error(Exception('El usuario no tiene idUsuario'));
      }

      // Obtener departamentoId por nombre
      final depResult = await _departamentoRepository.getByNombre(user.idEmpresa,empleado.departamentoNombre);
      debugPrint('Resultado getByNombre departamento: $depResult');
      if (depResult is! Ok) {
            debugPrint('Departamento no válido');
        return Result.error(Exception('Departamento no válido'));
      }

      final departamento = depResult.value;

      // Construir empleado final
      final empleadoFinal = empleado.copyWith(
        idUsuario: user.idUsuario!,
        idEmpresa: user.idEmpresa,
        idDepartamento: departamento!.idDepartamento!,
      );
       debugPrint('Empleado final que se enviará al useCase: ${empleadoFinal.toJson()}');

      final result = await _empleadoCreateUseCase.create(empleadoFinal);

      if (result is Ok<Empleado>) {
        // Opcional: recargar lista
        await loadEmpleados.execute();
          debugPrint('Empleado creado correctamente: ${result.value.toJson()}');
        return Result.ok(result.value);
      }

      if (result is Error<Empleado>) {
        debugPrint('Error al crear empleado: ${result.error}');
        return Result.error(result.error);
      }
      debugPrint('Error desconocido al crear empleado');
      return Result.error(Exception('Error desconocido al crear empleado'));
    } on Exception catch (e) {
      debugPrint('Excepción en _create(): $e');
      return Result.error(e);
    }
  }

    // UPDATE
  Future<Result<Empleado>> _update(Empleado empleado) async {
    debugPrint("=== UPDATE VIEWMODEL ===" *50);
    debugPrint("Empleado recibido: ${empleado.toString()}");

    final result = await _empleadoUseCase.update(empleado);
    if (result is Ok) {
      await loadEmpleados.execute();
    }
    return result;
  }

  // DELETE
  Future<Result<void>> _delete(Empleado empleado) async {
    final result = await _empleadoUseCase.delete(empleado.idEmpleado!);
    if (result is Ok) {
      await loadEmpleados.execute();
    }
    return result;
  }
}

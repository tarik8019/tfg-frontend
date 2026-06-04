import 'package:flutter/material.dart';
import 'package:mijornada/domain/use_cases/asignacion_turno/asignacion_turno_empleado_use_case.dart';
import '../../../../domain/models/asignacion_turno/dominio/asignacion_turno.dart';
import '../../../../utils/command.dart';
import '../../../../utils/result.dart';

class TurnoEmpleadoViewModel extends ChangeNotifier {
  TurnoEmpleadoViewModel({
    required AsignacionTurnoEmpleadoUseCase asignacionTurnoEmpleadoUseCase,
  }) : _asignacionTurnoEmpleadoUseCase = asignacionTurnoEmpleadoUseCase {
    loadMisTurnos = Command0<void>(_loadMisTurnos);
    confirmarTurno = Command1<void, AsignacionTurno>(_confirmarTurno);
    cancelarTurno = Command1<void, AsignacionTurno>(_cancelarTurno);
  }

  final AsignacionTurnoEmpleadoUseCase _asignacionTurnoEmpleadoUseCase;

  // STATE
  List<AsignacionTurno> _misTurnos = [];
  List<AsignacionTurno> get misTurnos => _misTurnos;

  // COMMANDS
  late final Command0<void> loadMisTurnos;
  late final Command1<void, AsignacionTurno> confirmarTurno;
  late final Command1<void, AsignacionTurno> cancelarTurno;

  // LOAD
  Future<Result<void>> _loadMisTurnos() async {
    final result = await _asignacionTurnoEmpleadoUseCase.getMisAsignaciones();

    if (result is Ok<List<AsignacionTurno>>) {
      _misTurnos = result.value;
      notifyListeners();
      return const Result.ok(null);
    }

    if (result is Error<List<AsignacionTurno>>) {
      return Result.error(result.error);
    }

    return Result.error(Exception('Error cargando turnos del empleado'));
  }

  // CONFIRMAR
  Future<Result<void>> _confirmarTurno(AsignacionTurno asignacion) async {
    final result =
        await _asignacionTurnoEmpleadoUseCase.confirmarTurno(asignacion);

    if (result is Ok<AsignacionTurno>) {
      _replace(result.value);
      return const Result.ok(null);
    }

    if (result is Error<AsignacionTurno>) {
      return Result.error(result.error);
    }

    return Result.error(Exception('Error al confirmar turno'));
  }

  // CANCELAR
  Future<Result<void>> _cancelarTurno(AsignacionTurno asignacion) async {
    final result =
        await _asignacionTurnoEmpleadoUseCase.cancelarTurno(asignacion);

    if (result is Ok<AsignacionTurno>) {
      _replace(result.value);
      return const Result.ok(null);
    }

    if (result is Error<AsignacionTurno>) {
      return Result.error(result.error);
    }

    return Result.error(Exception('Error al cancelar turno'));
  }

  void _replace(AsignacionTurno updated) {
    final index = _misTurnos.indexWhere(
      (a) => a.idAsignacion == updated.idAsignacion,
    );

    if (index != -1) {
      _misTurnos[index] = updated;
      notifyListeners();
    }
  }
}

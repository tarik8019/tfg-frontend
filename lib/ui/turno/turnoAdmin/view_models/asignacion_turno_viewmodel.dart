import 'package:flutter/material.dart';

import '../../../../data/services/api/model/asignacion_turno/asignacion_turno_api_model.dart';
import '../../../../domain/models/asignacion_turno/dominio/asignacion_turno.dart';
import '../../../../domain/models/empleado/dominio/empleado.dart';
import '../../../../domain/models/turno/dominio/turno.dart';
import '../../../../domain/use_cases/empleado/empleado_use_case.dart';
import '../../../../domain/use_cases/asignacion_turno/asignacion_turno_use_case.dart';
import '../../../../domain/use_cases/turno/turno_use_case.dart';

import '../../../../utils/command.dart';
import '../../../../utils/result.dart';

class AsignacionTurnoViewModel extends ChangeNotifier {
  AsignacionTurnoViewModel({
    required AsignacionTurnoUseCase asignacionUseCase,
    required EmpleadoUseCase empleadoUseCase,
    required TurnoUseCase turnoUseCase,
  })  : _asignacionUseCase = asignacionUseCase,
        _empleadoUseCase = empleadoUseCase,
        _turnoUseCase = turnoUseCase {
    loadAsignaciones = Command0<void>(_loadAsignaciones);
    loadEmpleados = Command0<void>(_loadEmpleados);
    loadTurnos = Command0<void>(_loadTurnos);

    createAsignacion = Command1<AsignacionTurno, AsignacionTurno>(_create);
    updateAsignacion = Command1<void, AsignacionTurno>(_update);
    deleteAsignacion = Command1<void, AsignacionTurno>(_delete);
  }

  final AsignacionTurnoUseCase _asignacionUseCase;
  final EmpleadoUseCase _empleadoUseCase;
  final TurnoUseCase _turnoUseCase;

  // LISTADOS

  List<AsignacionTurno> _asignaciones = [];
  List<AsignacionTurno> get asignaciones => _asignaciones;

  List<Empleado> _empleados = [];
  List<Empleado> get empleados => _empleados;

  List<Turno> _turnos = [];
  List<Turno> get turnos => _turnos;

  // COMMANDS

  late final Command0<void> loadAsignaciones;
  late final Command0<void> loadEmpleados;
  late final Command0<void> loadTurnos;

  late final Command1<AsignacionTurno, AsignacionTurno> createAsignacion;
  late final Command1<void, AsignacionTurno> updateAsignacion;
  late final Command1<void, AsignacionTurno> deleteAsignacion;

  // LOAD ASIGNACIONES

  Future<Result<void>> _loadAsignaciones() async {
    final result = await _asignacionUseCase.getAllAsignaciones();

    if (result is Ok<List<AsignacionTurno>>) {
      _asignaciones = result.value;
      notifyListeners();
      return const Result.ok(null);
    }

    if (result is Error<List<AsignacionTurno>>) {
      return Result.error(result.error);
    }

    return Result.error(Exception('Error cargando asignaciones'));
  }

  // LOAD EMPLEADOS

  Future<Result<void>> _loadEmpleados() async {
    final result = await _empleadoUseCase.getAll();

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

  // LOAD TURNOS

  Future<Result<void>> _loadTurnos() async {
    final result = await _turnoUseCase.getAllTurnos();

    if (result is Ok<List<Turno>>) {
      _turnos = result.value;
      notifyListeners();
      return const Result.ok(null);
    }

    if (result is Error<List<Turno>>) {
      return Result.error(result.error);
    }

    return Result.error(Exception('Error cargando turnos'));
  }
  // CREATE

  Future<Result<AsignacionTurno>> _create(AsignacionTurno asignacion) async {
    try {

      final result = await _asignacionUseCase.crearAsignacion(asignacion);   

      if (result is Ok<AsignacionTurno>) {
        _asignaciones.add(result.value);
        notifyListeners();
        return Result.ok(result.value);
      }

      if (result is Error<AsignacionTurno>) {
        return Result.error(result.error);
      }

      return Result.error(Exception('Error desconocido al crear asignación'));
    } catch (e) {
      return Result.error(Exception(e.toString()));
    }
  }

  // UPDATE

  Future<Result<void>> _update(AsignacionTurno asignacion) async {
    try {
      final result = await _asignacionUseCase.editarAsignacion(asignacion);

      if (result is Ok<AsignacionTurno>) {
        final index = _asignaciones.indexWhere(
          (a) => a.idAsignacion == asignacion.idAsignacion,
        );

        if (index != -1) {
          _asignaciones[index] = result.value;
           await _loadAsignaciones();
          notifyListeners();
        }

        return const Result.ok(null);
      }

      if (result is Error<AsignacionTurno>) {
        return Result.error(result.error);
      }

      return Result.error(Exception('Error desconocido al editar asignación'));
    } catch (e) {
      return Result.error(Exception(e.toString()));
    }
  }
  // DELETE

  Future<Result<void>> _delete(AsignacionTurno asignacion) async {
    try {
      final result = await _asignacionUseCase.borrarAsignacion(asignacion.idAsignacion!);

      if (result is Ok<void>) {
        _asignaciones.removeWhere(
          (a) => a.idAsignacion == asignacion.idAsignacion,
        );
        notifyListeners();
        return const Result.ok(null);
      }

      if (result is Error<void>) {
        return Result.error(result.error);
      }

      return Result.error(Exception('Error desconocido al borrar asignación'));
    } catch (e) {
      return Result.error(Exception(e.toString()));
    }
  }
}

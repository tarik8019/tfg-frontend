import 'package:mijornada/domain/models/asignacion_turno/dominio/asignacion_turno.dart';
import 'package:mijornada/utils/result.dart';
import 'package:mijornada/data/repositories/asignacion_turno/asignacion_turno_repository.dart';

class FakeAsignacionTurnoRepository implements AsignacionTurnoRepository {
  final Map<int, AsignacionTurno> _storage = {};
  int _autoIncrementId = 1;

  // GET ALL
  @override
  Future<Result<List<AsignacionTurno>>> getAll() async {
    return Result.ok(_storage.values.toList());
  }

  // GET BY ID
  @override
  Future<Result<AsignacionTurno>> getById(int id) async {
    final asignacion = _storage[id];

    if (asignacion == null) {
      return Result.error(Exception('Asignación de turno no encontrada'));
    }

    return Result.ok(asignacion);
  }

  // CREATE
  @override
  Future<Result<AsignacionTurno>> create(AsignacionTurno asignacion) async {
    final created = asignacion.copyWith(
      idAsignacion: _autoIncrementId++,
    );

    _storage[created.idAsignacion!] = created;

    return Result.ok(created);
  }

  // UPDATE
  @override
  Future<Result<AsignacionTurno>> updateAsignacionTurno(
    AsignacionTurno asignacion,
  ) async {
    final id = asignacion.idAsignacion;

    if (id == null || !_storage.containsKey(id)) {
      return Result.error(Exception('Asignación no existe'));
    }

    _storage[id] = asignacion;
    return Result.ok(asignacion);
  }

  // DELETE
  @override
  Future<Result<void>> delete(int id) async {
    _storage.remove(id);
    return const Result.ok(null);
  }
  
  @override
  Future<Result<List<AsignacionTurno>>> getByEmpleado(int idEmpleado) {
    // TODO: implement getByEmpleado
    throw UnimplementedError();
  }
}

import 'package:mijornada/domain/models/sede/dominio/sede.dart';
import 'package:mijornada/utils/result.dart';
import 'package:mijornada/data/repositories/sede/sede_repository.dart';

class FakeSedeRepository implements SedeRepository {
  final Map<int, Sede> _storage = {};
  int _autoIncrementId = 1;

  // GET ALL
  @override
  Future<Result<List<Sede>>> getAll() async {
    return Result.ok(_storage.values.toList());
  }

  // GET BY ID
  @override
  Future<Result<Sede>> getById(int id) async {
    final sede = _storage[id];

    if (sede == null) {
      return Result.error(Exception('Sede no encontrada'));
    }

    return Result.ok(sede);
  }

  // CREATE
  @override
  Future<Result<Sede>> create(Sede sede) async {
    final created = sede.copyWith(idSede: _autoIncrementId++);

    _storage[created.idSede!] = created;

    return Result.ok(created);
  }

  // UPDATE
  @override
  Future<Result<Sede>> updateSede(Sede sede) async {
    final id = sede.idSede;

    if (id == null || !_storage.containsKey(id)) {
      return Result.error(Exception('Sede no existe'));
    }

    _storage[id] = sede;
    return Result.ok(sede);
  }

  // DELETE
  @override
  Future<Result<void>> delete(int id) async {
    _storage.remove(id);
    return const Result.ok(null);
  }
}

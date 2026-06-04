import 'package:mijornada/domain/models/turno/dominio/turno.dart';
import 'package:mijornada/utils/result.dart';
import 'package:mijornada/data/repositories/turno/turno_repository.dart';

class FakeTurnoRepository implements TurnoRepository {
  final Map<int, Turno> _storage = {
    1: Turno(
      idTurno: 1,
      nombre: 'Mañana',
      horaInicio: '08:00',
      horaFin: '14:00',
      fecha: DateTime(2025, 1, 1),
      esNocturno: false,
    ),
    2: Turno(
      idTurno: 2,
      nombre: 'Tarde',
      horaInicio: '14:00',
      horaFin: '22:00',
      fecha: DateTime(2025, 1, 1),
      esNocturno: false,
    ),
  };

  int _autoIncrementId = 3;

  // GET ALL
  @override
  Future<Result<List<Turno>>> getAll() async {
    return Result.ok(_storage.values.toList());
  }

  // GET BY ID
  @override
  Future<Result<Turno>> getById(int id) async {
    final turno = _storage[id];

    if (turno == null) {
      return Result.error(Exception('Turno no encontrado'));
    }

    return Result.ok(turno);
  }

  // CREATE
  @override
  Future<Result<Turno>> create(Turno turno) async {
    final created = turno.copyWith(idTurno: _autoIncrementId++);

    _storage[created.idTurno!] = created;

    return Result.ok(created);
  }

  // UPDATE
  @override
  Future<Result<Turno>> updateTurno(Turno turno) async {
    final id = turno.idTurno;

    if (id == null || !_storage.containsKey(id)) {
      return Result.error(Exception('Turno no existe'));
    }

    _storage[id] = turno;
    return Result.ok(turno);
  }

  // DELETE
  @override
  Future<Result<void>> delete(int id) async {
    _storage.remove(id);
    return const Result.ok(null);
  }
}

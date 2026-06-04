import 'dart:async';
import '../../../domain/models/regla_turno/regla_turno.dart';
import '../../../utils/result.dart';
import 'regla_turno_repository.dart';

class ReglaTurnoRepositoryLocal implements ReglaTurnoRepository {
  ReglaTurnoRepositoryLocal({required localDataService});

  
  int _sequentialId = 0;

  final _reglas = List<ReglaTurno>.empty(growable: true);

  @override
  Future<Result<List<ReglaTurno>>> getAll() async {
    try {
      return Result.ok(List.unmodifiable(_reglas));
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<ReglaTurno>> getById(int id) async {
    try {
      final regla = _reglas.where((r) => r.idRegla == id).firstOrNull;
      if (regla == null) {
        return Result.error(Exception('Regla no encontrada'));
      }
      return Result.ok(regla);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<ReglaTurno>> create(ReglaTurno r) async {
    try {
      final nueva = r.copyWith(idRegla: _sequentialId++);
      _reglas.add(nueva);
      return Result.ok(nueva);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<ReglaTurno>> update(ReglaTurno r) async {
    try {
      final index = _reglas.indexWhere((x) => x.idRegla == r.idRegla);
      if (index == -1) {
        return Result.error(Exception('Regla no encontrada'));
      }

      _reglas[index] = r;
      return Result.ok(r);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> delete(int id) async {
    try {
      _reglas.removeWhere((r) => r.idRegla == id);
      return const Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<List<ReglaTurno>>> getByTipo(String tipo) async {
    try {
      final filtradas =
          _reglas.where((r) => r.tipo.toLowerCase() == tipo.toLowerCase()).toList();
      return Result.ok(filtradas);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}

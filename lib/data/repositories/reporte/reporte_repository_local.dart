import 'dart:async';
import '../../../domain/models/reporte/reporte.dart';
import '../../../utils/result.dart';
import 'reporte_repository.dart';

class ReporteRepositoryLocal implements ReporteRepository {
  ReporteRepositoryLocal({required localDataService});

  int _sequentialId = 0;

  final _reportes = List<Reporte>.empty(growable: true);

  @override
  Future<Result<List<Reporte>>> getAll() async {
    try {
      return Result.ok(List.unmodifiable(_reportes));
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<Reporte>> getById(int id) async {
    try {
      final reporte = _reportes.where((r) => r.idReporte == id).firstOrNull;
      if (reporte == null) {
        return Result.error(Exception('Reporte no encontrado'));
      }
      return Result.ok(reporte);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<Reporte>> create(Reporte r) async {
    try {
      final nuevo = r.copyWith(idReporte: _sequentialId++);
      _reportes.add(nuevo);
      return Result.ok(nuevo);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<Reporte>> update(Reporte r) async {
    try {
      final index = _reportes.indexWhere((x) => x.idReporte == r.idReporte);
      if (index == -1) {
        return Result.error(Exception('Reporte no encontrado'));
      }

      _reportes[index] = r;
      return Result.ok(r);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> delete(int id) async {
    try {
      _reportes.removeWhere((r) => r.idReporte == id);
      return const Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<List<Reporte>>> getByTipo(String tipo) async {
    try {
      final filtrados =
          _reportes.where((r) => r.tipo.toLowerCase() == tipo.toLowerCase()).toList();
      return Result.ok(filtrados);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}

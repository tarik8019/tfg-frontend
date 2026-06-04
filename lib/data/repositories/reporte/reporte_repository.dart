import '../../../../domain/models/reporte/reporte.dart';
import '../../../../utils/result.dart';

abstract class ReporteRepository {
  Future<Result<List<Reporte>>> getAll();
  Future<Result<Reporte>> getById(int id);
  Future<Result<Reporte>> create(Reporte reporte);
  Future<Result<Reporte>> update(Reporte reporte);
  Future<Result<void>> delete(int id);
  Future<Result<List<Reporte>>> getByTipo(String tipo);
}

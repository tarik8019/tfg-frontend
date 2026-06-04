import '../../../../domain/models/solicitud_ausencia/solicitud_ausencia.dart';
import '../../../../utils/result.dart';

abstract class SolicitudAusenciaRepository {
  Future<Result<List<SolicitudAusencia>>> getAll();
  Future<Result<SolicitudAusencia>> getById(int id);
  Future<Result<SolicitudAusencia>> create(SolicitudAusencia solicitud);
  Future<Result<SolicitudAusencia>> update(SolicitudAusencia solicitud);
  Future<Result<void>> delete(int id);
  Future<Result<List<SolicitudAusencia>>> getByEmpleado(int idEmpleado);
}

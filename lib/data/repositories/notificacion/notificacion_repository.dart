import '../../../../domain/models/notificacion/notificacion.dart';
import '../../../../utils/result.dart';

abstract class NotificacionRepository {
  Future<Result<List<Notificacion>>> getAll();
  Future<Result<Notificacion>> getById(int id);
  Future<Result<Notificacion>> create(Notificacion notificacion);
  Future<Result<Notificacion>> update(Notificacion notificacion);
  Future<Result<void>> delete(int id);
  Future<Result<List<Notificacion>>> getByUsuario(int idUsuario);
}

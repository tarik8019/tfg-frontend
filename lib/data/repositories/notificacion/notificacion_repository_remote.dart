// import '../../../domain/models/notificacion/notificacion.dart';
// import '../../../utils/result.dart';
// import '../../services/api/api_client.dart';
// import '../../services/api/model/notificacion/notificacion_api_model.dart';
// import 'notificacion_repository.dart';

// class NotificacionRepositoryRemote implements NotificacionRepository {
//   NotificacionRepositoryRemote({required ApiClient apiClient}) : _apiClient = apiClient;

//   final ApiClient _apiClient;

//   List<Notificacion>? _cachedNotificaciones;

//   @override
//   Future<Result<List<Notificacion>>> getAll() async {
//     try {
//       if (_cachedNotificaciones != null) {
//         return Result.ok(_cachedNotificaciones!);
//       }

//       final result = await _apiClient.getNotificaciones();

//       if (result is Ok<List<NotificacionApiModel>>) {
//         final data = result as Ok<List<NotificacionApiModel>>;
//         final notificaciones = data.value
//             .map((n) => Notificacion(
//                   idNotificacion: n.idNotificacion,
//                   idUsuario: n.idUsuario,
//                   titulo: n.titulo,
//                   mensaje: n.mensaje,
//                   tipo: n.tipo,
//                   fechaEnvio: n.fechaEnvio,
//                   estado: n.estado,
//                 ))
//             .toList();

//         _cachedNotificaciones = notificaciones;
//         return Result.ok(notificaciones);
//       } else if (result is Error<List<NotificacionApiModel>>) {
//         final err = result as Error<List<NotificacionApiModel>>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Notificacion>> getById(int id) async {
//     try {
//       final result = await _apiClient.getNotificacionById(id);

//       if (result is Ok<NotificacionApiModel>) {
//         final n = (result as Ok<NotificacionApiModel>).value;
//         return Result.ok(Notificacion(
//           idNotificacion: n.idNotificacion,
//           idUsuario: n.idUsuario,
//           titulo: n.titulo,
//           mensaje: n.mensaje,
//           tipo: n.tipo,
//           fechaEnvio: n.fechaEnvio,
//           estado: n.estado,
//         ));
//       } else if (result is Error<NotificacionApiModel>) {
//         final err = result as Error<NotificacionApiModel>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Notificacion>> create(Notificacion notificacion) async {
//     try {
//       final apiModel = NotificacionApiModel(
//         idUsuario: notificacion.idUsuario,
//         titulo: notificacion.titulo,
//         mensaje: notificacion.mensaje,
//         tipo: notificacion.tipo,
//         fechaEnvio: notificacion.fechaEnvio,
//         estado: notificacion.estado,
//       );

//       final result = await _apiClient.postNotificacion(apiModel);

//       if (result is Ok<NotificacionApiModel>) {
//         final n = (result as Ok<NotificacionApiModel>).value;
//         return Result.ok(Notificacion(
//           idNotificacion: n.idNotificacion,
//           idUsuario: n.idUsuario,
//           titulo: n.titulo,
//           mensaje: n.mensaje,
//           tipo: n.tipo,
//           fechaEnvio: n.fechaEnvio,
//           estado: n.estado,
//         ));
//       } else if (result is Error<NotificacionApiModel>) {
//         final err = result as Error<NotificacionApiModel>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Notificacion>> update(Notificacion notificacion) async {
//     try {
//       final apiModel = NotificacionApiModel(
//         idNotificacion: notificacion.idNotificacion,
//         idUsuario: notificacion.idUsuario,
//         titulo: notificacion.titulo,
//         mensaje: notificacion.mensaje,
//         tipo: notificacion.tipo,
//         fechaEnvio: notificacion.fechaEnvio,
//         estado: notificacion.estado,
//       );

//       final result = await _apiClient.updateNotificacion(apiModel);

//       if (result is Ok<NotificacionApiModel>) {
//         final n = (result as Ok<NotificacionApiModel>).value;
//         return Result.ok(Notificacion(
//           idNotificacion: n.idNotificacion,
//           idUsuario: n.idUsuario,
//           titulo: n.titulo,
//           mensaje: n.mensaje,
//           tipo: n.tipo,
//           fechaEnvio: n.fechaEnvio,
//           estado: n.estado,
//         ));
//       } else if (result is Error<NotificacionApiModel>) {
//         final err = result as Error<NotificacionApiModel>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<void>> delete(int id) async {
//     try {
//       final result = await _apiClient.deleteNotificacion(id);

//       if (result is Ok<void>) {
//         return const Result.ok(null);
//       } else if (result is Error<void>) {
//         final err = result;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<List<Notificacion>>> getByUsuario(int idUsuario) async {
//     try {
//       final result = await _apiClient.getNotificacionesByUsuario(idUsuario);

//       if (result is Ok<List<NotificacionApiModel>>) {
//         final data = result as Ok<List<NotificacionApiModel>>;
//         final notificaciones = data.value
//             .map((n) => Notificacion(
//                   idNotificacion: n.idNotificacion,
//                   idUsuario: n.idUsuario,
//                   titulo: n.titulo,
//                   mensaje: n.mensaje,
//                   tipo: n.tipo,
//                   fechaEnvio: n.fechaEnvio,
//                   estado: n.estado,
//                 ))
//             .toList();

//         return Result.ok(notificaciones);
//       } else if (result is Error<List<NotificacionApiModel>>) {
//         final err = result as Error<List<NotificacionApiModel>>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }
// }

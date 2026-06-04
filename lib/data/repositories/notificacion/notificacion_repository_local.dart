// import 'dart:async';
// import '../../../domain/models/notificacion/notificacion.dart';
// import '../../../utils/result.dart';
// import 'notificacion_repository.dart';

// class NotificacionRepositoryLocal implements NotificacionRepository {
//   NotificacionRepositoryLocal({required localDataService});


//   int _sequentialId = 0;

//   final _notificaciones = List<Notificacion>.empty(growable: true);

//   @override
//   Future<Result<List<Notificacion>>> getAll() async {
//     try {
//       return Result.ok(List.unmodifiable(_notificaciones));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Notificacion>> getById(int id) async {
//     try {
//       final notificacion =
//           _notificaciones.where((n) => n.idNotificacion == id).firstOrNull;
//       if (notificacion == null) {
//         return Result.error(Exception('Notificación no encontrada'));
//       }
//       return Result.ok(notificacion);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<List<Notificacion>>> getByUsuario(int idUsuario) async {
//     try {
//       final filtradas = _notificaciones
//           .where((n) => n.idUsuario == idUsuario)
//           .toList(growable: false);
//       return Result.ok(filtradas);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Notificacion>> create(Notificacion notificacion) async {
//     try {
//       final nueva = notificacion.copyWith(idNotificacion: _sequentialId++);
//       _notificaciones.add(nueva);
//       return Result.ok(nueva);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Notificacion>> update(Notificacion notificacion) async {
//     try {
//       final index = _notificaciones
//           .indexWhere((n) => n.idNotificacion == notificacion.idNotificacion);
//       if (index == -1) {
//         return Result.error(Exception('Notificación no encontrada'));
//       }

//       _notificaciones[index] = notificacion;
//       return Result.ok(notificacion);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<void>> delete(int id) async {
//     try {
//       _notificaciones.removeWhere((n) => n.idNotificacion == id);
//       return const Result.ok(null);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }
// }

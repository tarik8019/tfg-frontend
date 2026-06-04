// import '../../../domain/models/solicitud_ausencia/solicitud_ausencia.dart';
// import '../../../utils/result.dart';
// import '../../services/api/api_client.dart';
// import '../../services/api/model/solicitud_ausencia/solicitud_ausencia_api_model.dart';
// import 'solicitud_ausencia_repository.dart';

// class SolicitudAusenciaRepositoryRemote implements SolicitudAusenciaRepository {
//   SolicitudAusenciaRepositoryRemote({required ApiClient apiClient})
//       : _apiClient = apiClient;

//   final ApiClient _apiClient;

//   List<SolicitudAusencia>? _cachedSolicitudes;

//   @override
//   Future<Result<List<SolicitudAusencia>>> getAll() async {
//     try {
//       if (_cachedSolicitudes != null) return Result.ok(_cachedSolicitudes!);

//       final result = await _apiClient.getSolicitudesAusencia();

//       if (result is Ok<List<SolicitudAusenciaApiModel>>) {
//         final solicitudes = (result as Ok<List<SolicitudAusenciaApiModel>>).value
//             .map((s) => SolicitudAusencia(
//                   idSolicitud: s.idSolicitud,
//                   idEmpleado: s.idEmpleado,
//                   tipo: s.tipo,
//                   fechaInicio: s.fechaInicio,
//                   fechaFin: s.fechaFin,
//                   estado: s.estado,
//                   documentoJustificante: s.documentoJustificante,
//                 ))
//             .toList();
//         _cachedSolicitudes = solicitudes;
//         return Result.ok(solicitudes);
//       } else if (result is Error<List<SolicitudAusenciaApiModel>>) {
//         return Result.error((result as Error<List<SolicitudAusenciaApiModel>>).error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<SolicitudAusencia>> getById(int id) async {
//     try {
//       final result = await _apiClient.getSolicitudAusenciaById(id);

//       if (result is Ok<SolicitudAusenciaApiModel>) {
//         final s = (result as Ok<SolicitudAusenciaApiModel>).value;
//         return Result.ok(SolicitudAusencia(
//           idSolicitud: s.idSolicitud,
//           idEmpleado: s.idEmpleado,
//           tipo: s.tipo,
//           fechaInicio: s.fechaInicio,
//           fechaFin: s.fechaFin,
//           estado: s.estado,
//           documentoJustificante: s.documentoJustificante,
//         ));
//       } else if (result is Error<SolicitudAusenciaApiModel>) {
//         return Result.error((result as Error<SolicitudAusenciaApiModel>).error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<SolicitudAusencia>> create(SolicitudAusencia solicitud) async {
//     try {
//       final apiModel = SolicitudAusenciaApiModel(
//         idEmpleado: solicitud.idEmpleado,
//         tipo: solicitud.tipo,
//         fechaInicio: solicitud.fechaInicio,
//         fechaFin: solicitud.fechaFin,
//         estado: solicitud.estado,
//         documentoJustificante: solicitud.documentoJustificante,
//       );

//       final result = await _apiClient.postSolicitudAusencia(apiModel);

//       if (result is Ok<SolicitudAusenciaApiModel>) {
//         final s = (result as Ok<SolicitudAusenciaApiModel>).value;
//         return Result.ok(SolicitudAusencia(
//           idSolicitud: s.idSolicitud,
//           idEmpleado: s.idEmpleado,
//           tipo: s.tipo,
//           fechaInicio: s.fechaInicio,
//           fechaFin: s.fechaFin,
//           estado: s.estado,
//           documentoJustificante: s.documentoJustificante,
//         ));
//       } else if (result is Error<SolicitudAusenciaApiModel>) {
//         return Result.error((result as Error<SolicitudAusenciaApiModel>).error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<SolicitudAusencia>> update(SolicitudAusencia solicitud) async {
//     try {
//       final apiModel = SolicitudAusenciaApiModel(
//         idSolicitud: solicitud.idSolicitud,
//         idEmpleado: solicitud.idEmpleado,
//         tipo: solicitud.tipo,
//         fechaInicio: solicitud.fechaInicio,
//         fechaFin: solicitud.fechaFin,
//         estado: solicitud.estado,
//         documentoJustificante: solicitud.documentoJustificante,
//       );

//       final result = await _apiClient.updateSolicitudAusencia(apiModel);

//       if (result is Ok<SolicitudAusenciaApiModel>) {
//         final s = (result as Ok<SolicitudAusenciaApiModel>).value;
//         return Result.ok(SolicitudAusencia(
//           idSolicitud: s.idSolicitud,
//           idEmpleado: s.idEmpleado,
//           tipo: s.tipo,
//           fechaInicio: s.fechaInicio,
//           fechaFin: s.fechaFin,
//           estado: s.estado,
//           documentoJustificante: s.documentoJustificante,
//         ));
//       } else if (result is Error<SolicitudAusenciaApiModel>) {
//         return Result.error((result as Error<SolicitudAusenciaApiModel>).error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<void>> delete(int id) async {
//     try {
//       final result = await _apiClient.deleteSolicitudAusencia(id);

//       if (result is Ok<void>) return const Result.ok(null);
//       if (result is Error<void>) return Result.error((result).error);

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<List<SolicitudAusencia>>> getByEmpleado(int idEmpleado) async {
//     try {
//       final result = await _apiClient.getSolicitudesByEmpleado(idEmpleado);

//       if (result is Ok<List<SolicitudAusenciaApiModel>>) {
//         final solicitudes = (result as Ok<List<SolicitudAusenciaApiModel>>).value
//             .map((s) => SolicitudAusencia(
//                   idSolicitud: s.idSolicitud,
//                   idEmpleado: s.idEmpleado,
//                   tipo: s.tipo,
//                   fechaInicio: s.fechaInicio,
//                   fechaFin: s.fechaFin,
//                   estado: s.estado,
//                   documentoJustificante: s.documentoJustificante,
//                 ))
//             .toList();
//         return Result.ok(solicitudes);
//       } else if (result is Error<List<SolicitudAusenciaApiModel>>) {
//         return Result.error((result as Error<List<SolicitudAusenciaApiModel>>).error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }
// }

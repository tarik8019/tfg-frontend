// import '../../../domain/models/reporte/reporte.dart';
// import '../../../utils/result.dart';
// import '../../services/api/api_client.dart';
// import '../../services/api/model/reporte/reporte_api_model.dart';
// import 'reporte_repository.dart';

// class ReporteRepositoryRemote implements ReporteRepository {
//   ReporteRepositoryRemote({required ApiClient apiClient})
//       : _apiClient = apiClient;

//   final ApiClient _apiClient;

//   List<Reporte>? _cachedReportes;

//   @override
//   Future<Result<List<Reporte>>> getAll() async {
//     try {
//       if (_cachedReportes != null) {
//         return Result.ok(_cachedReportes!);
//       }

//       final result = await _apiClient.getReportes();

//       if (result is Ok<List<ReporteApiModel>>) {
//         final data = result as Ok<List<ReporteApiModel>>;
//         final reportes = data.value
//             .map((r) => Reporte(
//                   idReporte: r.idReporte,
//                   tipo: r.tipo,
//                   fechaGeneracion: r.fechaGeneracion,
//                   archivoUrl: r.archivoUrl,
//                 ))
//             .toList();

//         _cachedReportes = reportes;
//         return Result.ok(reportes);
//       } else if (result is Error<List<ReporteApiModel>>) {
//         final err = result as Error<List<ReporteApiModel>>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Reporte>> getById(int id) async {
//     try {
//       final result = await _apiClient.getReporteById(id);

//       if (result is Ok<ReporteApiModel>) {
//         final r = (result as Ok<ReporteApiModel>).value;
//         return Result.ok(Reporte(
//           idReporte: r.idReporte,
//           tipo: r.tipo,
//           fechaGeneracion: r.fechaGeneracion,
//           archivoUrl: r.archivoUrl,
//         ));
//       } else if (result is Error<ReporteApiModel>) {
//         final err = result as Error<ReporteApiModel>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Reporte>> create(Reporte reporte) async {
//     try {
//       final apiModel = ReporteApiModel(
//         tipo: reporte.tipo,
//         fechaGeneracion: reporte.fechaGeneracion,
//         archivoUrl: reporte.archivoUrl,
//       );

//       final result = await _apiClient.postReporte(apiModel);

//       if (result is Ok<ReporteApiModel>) {
//         final r = (result as Ok<ReporteApiModel>).value;
//         return Result.ok(Reporte(
//           idReporte: r.idReporte,
//           tipo: r.tipo,
//           fechaGeneracion: r.fechaGeneracion,
//           archivoUrl: r.archivoUrl,
//         ));
//       } else if (result is Error<ReporteApiModel>) {
//         final err = result as Error<ReporteApiModel>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Reporte>> update(Reporte reporte) async {
//     try {
//       final apiModel = ReporteApiModel(
//         idReporte: reporte.idReporte,
//         tipo: reporte.tipo,
//         fechaGeneracion: reporte.fechaGeneracion,
//         archivoUrl: reporte.archivoUrl,
//       );

//       final result = await _apiClient.updateReporte(apiModel);

//       if (result is Ok<ReporteApiModel>) {
//         final r = (result as Ok<ReporteApiModel>).value;
//         return Result.ok(Reporte(
//           idReporte: r.idReporte,
//           tipo: r.tipo,
//           fechaGeneracion: r.fechaGeneracion,
//           archivoUrl: r.archivoUrl,
//         ));
//       } else if (result is Error<ReporteApiModel>) {
//         final err = result as Error<ReporteApiModel>;
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
//       final result = await _apiClient.deleteReporte(id);

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
//   Future<Result<List<Reporte>>> getByTipo(String tipo) async {
//     try {
//       final result = await _apiClient.getReportesByTipo(tipo);

//       if (result is Ok<List<ReporteApiModel>>) {
//         final data = result as Ok<List<ReporteApiModel>>;
//         final reportes = data.value
//             .map((r) => Reporte(
//                   idReporte: r.idReporte,
//                   tipo: r.tipo,
//                   fechaGeneracion: r.fechaGeneracion,
//                   archivoUrl: r.archivoUrl,
//                 ))
//             .toList();

//         return Result.ok(reportes);
//       } else if (result is Error<List<ReporteApiModel>>) {
//         final err = result as Error<List<ReporteApiModel>>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }
// }

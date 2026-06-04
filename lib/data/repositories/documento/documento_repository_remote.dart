// import '../../../domain/models/documento_empleado/documento_empleado.dart';
// import '../../../utils/result.dart';
// import '../../services/api/api_client.dart';
// import '../../services/api/model/documento_empleado/documento_empleado_api_model.dart';
// import 'documento_repository.dart';

// class DocumentoEmpleadoRepositoryRemote implements DocumentoEmpleadoRepository {
//   DocumentoEmpleadoRepositoryRemote({required ApiClient apiClient})
//       : _apiClient = apiClient;

//   final ApiClient _apiClient;

//   List<DocumentoEmpleado>? _cachedDocumentos;

//   @override
//   Future<Result<List<DocumentoEmpleado>>> getAll() async {
//     try {
//       if (_cachedDocumentos != null) {
//         return Result.ok(_cachedDocumentos!);
//       }

//       final result = await _apiClient.getDocumentoEmpleados();

//       if (result is Ok<List<DocumentoEmpleadoApiModel>>) {
//         final data = result as Ok<List<DocumentoEmpleadoApiModel>>;
//         final documentos = data.value
//             .map(
//               (d) => DocumentoEmpleado(
//                 idDocumento: d.idDocumento,
//                 idEmpleado: d.idEmpleado,
//                 tipo: d.tipo,
//                 rutaArchivo: d.rutaArchivo,
//               ),
//             )
//             .toList();
//         _cachedDocumentos = documentos;
//         return Result.ok(documentos);
//       } else if (result is Error<List<DocumentoEmpleadoApiModel>>) {
//         final err = result as Error<List<DocumentoEmpleadoApiModel>>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<DocumentoEmpleado>> getById(int id) async {
//     try {
//       final result = await _apiClient.getDocumentoEmpleadoById(id);

//       if (result is Ok<DocumentoEmpleadoApiModel>) {
//         final data = result as Ok<DocumentoEmpleadoApiModel>;
//         final d = data.value;
//         return Result.ok(
//           DocumentoEmpleado(
//             idDocumento: d.idDocumento,
//             idEmpleado: d.idEmpleado,
//             tipo: d.tipo,
//             rutaArchivo: d.rutaArchivo,
//           ),
//         );
//       } else if (result is Error<DocumentoEmpleadoApiModel>) {
//         final err = result as Error<DocumentoEmpleadoApiModel>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<DocumentoEmpleado>> create(DocumentoEmpleado documento) async {
//     try {
//       final apiModel = DocumentoEmpleadoApiModel(
//         idEmpleado: documento.idEmpleado,
//         tipo: documento.tipo,
//         rutaArchivo: documento.rutaArchivo,
//       );

//       final result = await _apiClient.postDocumentoEmpleado(apiModel);

//       if (result is Ok<DocumentoEmpleadoApiModel>) {
//         final data = result as Ok<DocumentoEmpleadoApiModel>;
//         final d = data.value;
//         return Result.ok(
//           DocumentoEmpleado(
//             idDocumento: d.idDocumento,
//             idEmpleado: d.idEmpleado,
//             tipo: d.tipo,
//             rutaArchivo: d.rutaArchivo,
//           ),
//         );
//       } else if (result is Error<DocumentoEmpleadoApiModel>) {
//         final err = result as Error<DocumentoEmpleadoApiModel>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<DocumentoEmpleado>> update(DocumentoEmpleado documento) async {
//     try {
//       final apiModel = DocumentoEmpleadoApiModel(
//         idDocumento: documento.idDocumento,
//         idEmpleado: documento.idEmpleado,
//         tipo: documento.tipo,
//         rutaArchivo: documento.rutaArchivo,
//       );

//       final result = await _apiClient.updateDocumentoEmpleado(apiModel);

//       if (result is Ok<DocumentoEmpleadoApiModel>) {
//         final data = result as Ok<DocumentoEmpleadoApiModel>;
//         final d = data.value;
//         return Result.ok(
//           DocumentoEmpleado(
//             idDocumento: d.idDocumento,
//             idEmpleado: d.idEmpleado,
//             tipo: d.tipo,
//             rutaArchivo: d.rutaArchivo,
//           ),
//         );
//       } else if (result is Error<DocumentoEmpleadoApiModel>) {
//         final err = result as Error<DocumentoEmpleadoApiModel>;
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
//       final result = await _apiClient.deleteDocumentoEmpleado(id);

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
//   Future<Result<List<DocumentoEmpleado>>> getByEmpleado(int idEmpleado) async {
//     try {
//       final result = await _apiClient.getDocumentosByEmpleado(idEmpleado);

//       if (result is Ok<List<DocumentoEmpleadoApiModel>>) {
//         final data = result as Ok<List<DocumentoEmpleadoApiModel>>;
//         final documentos = data.value
//             .map(
//               (d) => DocumentoEmpleado(
//                 idDocumento: d.idDocumento,
//                 idEmpleado: d.idEmpleado,
//                 tipo: d.tipo,
//                 rutaArchivo: d.rutaArchivo,
//               ),
//             )
//             .toList();
//         return Result.ok(documentos);
//       } else if (result is Error<List<DocumentoEmpleadoApiModel>>) {
//         final err = result as Error<List<DocumentoEmpleadoApiModel>>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }
// }

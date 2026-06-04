// import 'dart:async';
// import '../../../domain/models/documento_empleado/documento_empleado.dart';
// import '../../../utils/result.dart';
// import 'documento_repository.dart';

// class DocumentoEmpleadoRepositoryLocal implements DocumentoEmpleadoRepository {
//   DocumentoEmpleadoRepositoryLocal({required localDataService});


//   int _sequentialId = 0;

//   final _documentos = List<DocumentoEmpleado>.empty(growable: true);

//   @override
//   Future<Result<List<DocumentoEmpleado>>> getAll() async {
//     try {
//       return Result.ok(List.unmodifiable(_documentos));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<DocumentoEmpleado>> getById(int id) async {
//     try {
//       final documento =
//           _documentos.where((d) => d.idDocumento == id).firstOrNull;
//       if (documento == null) {
//         return Result.error(Exception('Documento no encontrado'));
//       }
//       return Result.ok(documento);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<List<DocumentoEmpleado>>> getByEmpleado(int idEmpleado) async {
//     try {
//       final filtrados = _documentos
//           .where((d) => d.idEmpleado == idEmpleado)
//           .toList(growable: false);
//       return Result.ok(filtrados);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<DocumentoEmpleado>> create(DocumentoEmpleado documento) async {
//     try {
//       final documentoConId =
//           documento.copyWith(idDocumento: _sequentialId++);
//       _documentos.add(documentoConId);
//       return Result.ok(documentoConId);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<DocumentoEmpleado>> update(DocumentoEmpleado documento) async {
//     try {
//       final index = _documentos
//           .indexWhere((d) => d.idDocumento == documento.idDocumento);
//       if (index == -1) {
//         return Result.error(Exception('Documento no encontrado'));
//       }

//       _documentos[index] = documento;
//       return Result.ok(documento);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<void>> delete(int id) async {
//     try {
//       _documentos.removeWhere((d) => d.idDocumento == id);
//       return const Result.ok(null);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }
// }

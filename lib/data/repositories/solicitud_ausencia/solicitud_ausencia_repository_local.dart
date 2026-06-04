// import 'dart:async';
// import '../../../domain/models/solicitud_ausencia/solicitud_ausencia.dart';
// import '../../../utils/result.dart';
// import 'solicitud_ausencia_repository.dart';

// class SolicitudAusenciaRepositoryLocal implements SolicitudAusenciaRepository {
//   SolicitudAusenciaRepositoryLocal({required localDataService});


//   int _sequentialId = 0;

//   final _solicitudes = List<SolicitudAusencia>.empty(growable: true);

//   @override
//   Future<Result<List<SolicitudAusencia>>> getAll() async {
//     try {
//       return Result.ok(List.unmodifiable(_solicitudes));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<SolicitudAusencia>> getById(int id) async {
//     try {
//       final solicitud = _solicitudes.where((s) => s.idSolicitud == id).firstOrNull;
//       if (solicitud == null) {
//         return Result.error(Exception('Solicitud no encontrada'));
//       }
//       return Result.ok(solicitud);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<SolicitudAusencia>> create(SolicitudAusencia s) async {
//     try {
//       final nueva = s.copyWith(idSolicitud: _sequentialId++);
//       _solicitudes.add(nueva);
//       return Result.ok(nueva);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<SolicitudAusencia>> update(SolicitudAusencia s) async {
//     try {
//       final index = _solicitudes.indexWhere((x) => x.idSolicitud == s.idSolicitud);
//       if (index == -1) {
//         return Result.error(Exception('Solicitud no encontrada'));
//       }

//       _solicitudes[index] = s;
//       return Result.ok(s);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<void>> delete(int id) async {
//     try {
//       _solicitudes.removeWhere((s) => s.idSolicitud == id);
//       return const Result.ok(null);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<List<SolicitudAusencia>>> getByEmpleado(int idEmpleado) async {
//     try {
//       final filtradas =
//           _solicitudes.where((s) => s.idEmpleado == idEmpleado).toList();
//       return Result.ok(filtradas);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }
// }

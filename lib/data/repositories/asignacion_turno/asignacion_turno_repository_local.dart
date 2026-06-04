// import 'dart:async';
// import '../../../domain/models/asignacion_turno/dominio/asignacion_turno.dart';
// import '../../../utils/result.dart';
// import '../../services/local/local_data_service.dart';
// import 'asignacion_turno_repository.dart';

// class AsignacionTurnoRepositoryLocal implements AsignacionTurnoRepository {
//   AsignacionTurnoRepositoryLocal({required LocalDataService localDataService});
 


//   int _sequentialId = 0;

//   final _asignaciones = List<AsignacionTurno>.empty(growable: true);

//   @override
//   Future<Result<List<AsignacionTurno>>> getAll() async {
//     try {
//       // if (!_isInitialized) {
//       //   await _createDefaultAsignacion();
//       //   _isInitialized = true;
//       // }

//       return Result.ok(List.unmodifiable(_asignaciones));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<AsignacionTurno>> getById(int id) async {
//     try {
//       final asignacion =
//           _asignaciones.where((a) => a.idAsignacion == id).firstOrNull;
//       if (asignacion == null) {
//         return Result.error(Exception('Asignación no encontrada'));
//       }
//       return Result.ok(asignacion);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<List<AsignacionTurno>>> getByEmpleado(int idEmpleado) async {
//     try {
//       final filtradas = _asignaciones
//           .where((a) => a.idEmpleado == idEmpleado)
//           .toList(growable: false);
//       return Result.ok(filtradas);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<AsignacionTurno>> create(AsignacionTurno asignacion) async {
//     try {
//       final asignacionConId =
//           asignacion.copyWith(idAsignacion: _sequentialId++);
//       _asignaciones.add(asignacionConId);
//       return Result.ok(asignacionConId);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<AsignacionTurno>> update(AsignacionTurno asignacion) async {
//     try {
//       final index = _asignaciones
//           .indexWhere((a) => a.idAsignacion == asignacion.idAsignacion);
//       if (index == -1) {
//         return Result.error(Exception('Asignación no encontrada'));
//       }

//       _asignaciones[index] = asignacion;
//       return Result.ok(asignacion);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<void>> delete(int id) async {
//     try {
//       _asignaciones.removeWhere((a) => a.idAsignacion == id);
//       return const Result.ok(null);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }


//   // Future<void> _createDefaultAsignacion() async {
//   //   final asignacionesLocal = await _localDataService.getAsignacionesTurno();

//   //   if (asignacionesLocal.isNotEmpty) {
//   //     _asignaciones.addAll(asignacionesLocal);
//   //   } else {
//   //     _asignaciones.add(
//   //       AsignacionTurno(
//   //         idAsignacion: _sequentialId++,
//   //         idEmpleado: 1,
//   //         idTurno: 1,
//   //         fecha: DateTime.now(),
//   //       ),
//   //     );
//   //   }
//   // }
// }

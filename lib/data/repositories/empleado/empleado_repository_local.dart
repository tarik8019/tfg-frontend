// import 'dart:async';
// import 'package:mijornada/domain/models/user/dominio/user.dart';
// import '../../../domain/models/empleado/dominio/empleado.dart';
// import '../../../domain/models/empleado/summary/empleado_summary.dart';
// import '../../../utils/result.dart';
// import 'empleado_repository.dart';

// class EmpleadoRepositoryLocal implements EmpleadoRepository {
//   EmpleadoRepositoryLocal({required localDataService});

//   int _sequentialId = 0;

//   final _empleados = List<Empleado>.empty(growable: true);

//   @override
//   Future<Result<List<EmpleadoSummary>>> getAll() async {
//     try {
//       return Result.ok(List.unmodifiable(_empleados));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Empleado>> getById(int id) async {
//     try {
//       final empleado = _empleados.where((e) => e.idEmpleado == id).firstOrNull;
//       if (empleado == null) {
//         return Result.error(Exception('Empleado no encontrado'));
//       }
//       return Result.ok(empleado);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Empleado>> create(Empleado e) async {
//     try {
//       final empleadoConId = e.copyWith(idEmpleado: _sequentialId++);
//       _empleados.add(empleadoConId);
//       return Result.ok(empleadoConId);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Empleado>> update(Empleado e) async {
//     try {
//       final index =
//           _empleados.indexWhere((emp) => emp.idEmpleado == e.idEmpleado);
//       if (index == -1) {
//         return Result.error(Exception('Empleado no encontrado'));
//       }

//       _empleados[index] = e;
//       return Result.ok(e);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<void>> delete(int id) async {
//     try {
//       _empleados.removeWhere((e) => e.idEmpleado == id);
//       return const Result.ok(null);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<void>> setActivo(int idEmpleado, bool activo) async {
//     try {
//       final index =
//           _empleados.indexWhere((e) => e.idEmpleado == idEmpleado);
//       if (index == -1) {
//         return Result.error(Exception('Empleado no encontrado'));
//       }

//       final actualizado = _empleados[index].copyWith(activo: activo);
//       _empleados[index] = actualizado;
//       return Result.ok(actualizado);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Empleado>> createEmpleadoConUsuario(
//       User user, Empleado empleado) async {
//     try {
//       final empleadoConId = empleado.copyWith(idEmpleado: _sequentialId++);
//       _empleados.add(empleadoConId);
//       return Result.ok(empleadoConId);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }
// }

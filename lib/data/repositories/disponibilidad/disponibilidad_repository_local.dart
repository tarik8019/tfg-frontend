// import 'dart:async';
// import '../../../domain/models/disponibilidad/disponibilidad.dart';
// import '../../../utils/result.dart';
// import '../../services/local/local_data_service.dart';
// import 'disponibilidad_repository.dart';

// class DisponibilidadRepositoryLocal implements DisponibilidadRepository {
//   DisponibilidadRepositoryLocal({required LocalDataService localDataService});

//   int _sequentialId = 0;

//   final _disponibilidades = List<Disponibilidad>.empty(growable: true);

//   @override
//   Future<Result<List<Disponibilidad>>> getAll() async {
//     try {


//       return Result.ok(List.unmodifiable(_disponibilidades));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Disponibilidad>> getById(int id) async {
//     try {
//       final disponibilidad =
//           _disponibilidades.where((d) => d.idDisponibilidad == id).firstOrNull;
//       if (disponibilidad == null) {
//         return Result.error(Exception('Disponibilidad no encontrada'));
//       }
//       return Result.ok(disponibilidad);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<List<Disponibilidad>>> getByEmpleado(int idEmpleado) async {
//     try {
//       final filtradas = _disponibilidades
//           .where((d) => d.idEmpleado == idEmpleado)
//           .toList(growable: false);
//       return Result.ok(filtradas);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Disponibilidad>> create(Disponibilidad d) async {
//     try {
//       final disponibilidadConId =
//           d.copyWith(idDisponibilidad: _sequentialId++);
//       _disponibilidades.add(disponibilidadConId);
//       return Result.ok(disponibilidadConId);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Disponibilidad>> update(Disponibilidad d) async {
//     try {
//       final index = _disponibilidades
//           .indexWhere((disp) => disp.idDisponibilidad == d.idDisponibilidad);
//       if (index == -1) {
//         return Result.error(Exception('Disponibilidad no encontrada'));
//       }

//       _disponibilidades[index] = d;
//       return Result.ok(d);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<void>> delete(int id) async {
//     try {
//       _disponibilidades.removeWhere((d) => d.idDisponibilidad == id);
//       return const Result.ok(null);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

// }

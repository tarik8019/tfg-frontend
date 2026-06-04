// import 'dart:async';
// import '../../../domain/models/correccion_fichaje/dominio/correccion_fichaje.dart';
// import '../../../utils/result.dart';
// import '../../services/local/local_data_service.dart';
// import 'correccion_fichaje_repository.dart';

// class CorreccionFichajeRepositoryLocal implements CorreccionFichajeRepository {
//   CorreccionFichajeRepositoryLocal({required LocalDataService localDataService});




//   int _sequentialId = 0;

//   final _correcciones = List<CorreccionFichaje>.empty(growable: true);

//   @override
//   Future<Result<List<CorreccionFichaje>>> getAll() async {
//     try {

//       return Result.ok(List.unmodifiable(_correcciones));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<CorreccionFichaje>> getById(int id) async {
//     try {
//       final correccion =
//           _correcciones.where((c) => c.idCorreccion == id).firstOrNull;
//       if (correccion == null) {
//         return Result.error(Exception('Corrección no encontrada'));
//       }
//       return Result.ok(correccion);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<List<CorreccionFichaje>>> getByEmpleado(int idEmpleado) async {
//     try {
//       final filtradas = _correcciones
//           .where((c) => c.idEmpleado == idEmpleado)
//           .toList(growable: false);
//       return Result.ok(filtradas);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<CorreccionFichaje>> create(CorreccionFichaje c) async {
//     try {
//       final correccionConId = c.copyWith(idCorreccion: _sequentialId++);
//       _correcciones.add(correccionConId);
//       return Result.ok(correccionConId);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<CorreccionFichaje>> update(CorreccionFichaje c) async {
//     try {
//       final index = _correcciones
//           .indexWhere((corr) => corr.idCorreccion == c.idCorreccion);
//       if (index == -1) {
//         return Result.error(Exception('Corrección no encontrada'));
//       }

//       _correcciones[index] = c;
//       return Result.ok(c);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<void>> delete(int id) async {
//     try {
//       _correcciones.removeWhere((c) => c.idCorreccion == id);
//       return const Result.ok(null);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }


// }

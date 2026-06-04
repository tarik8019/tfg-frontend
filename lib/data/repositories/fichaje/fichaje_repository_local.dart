// import 'dart:async';
// import '../../../domain/models/fichaje/fichaje.dart';
// import '../../../utils/result.dart';
// import 'fichaje_repository.dart';

// class FichajeRepositoryLocal implements FichajeRepository {
//   FichajeRepositoryLocal({required localDataService});

 
//   int _sequentialId = 0;

//   final _fichajes = List<Fichaje>.empty(growable: true);

//   @override
//   Future<Result<List<Fichaje>>> getAll() async {
//     try {
//       return Result.ok(List.unmodifiable(_fichajes));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Fichaje>> getById(int id) async {
//     try {
//       final fichaje = _fichajes.where((f) => f.idFichaje == id).firstOrNull;
//       if (fichaje == null) {
//         return Result.error(Exception('Fichaje no encontrado'));
//       }
//       return Result.ok(fichaje);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<List<Fichaje>>> getByEmpleado(int idEmpleado) async {
//     try {
//       final filtrados = _fichajes
//           .where((f) => f.idEmpleado == idEmpleado)
//           .toList(growable: false);
//       return Result.ok(filtrados);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Fichaje>> create(Fichaje f) async {
//     try {
//       final nuevoFichaje = f.copyWith(idFichaje: _sequentialId++);
//       _fichajes.add(nuevoFichaje);
//       return Result.ok(nuevoFichaje);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Fichaje>> update(Fichaje f) async {
//     try {
//       final index = _fichajes.indexWhere((x) => x.idFichaje == f.idFichaje);
//       if (index == -1) {
//         return Result.error(Exception('Fichaje no encontrado'));
//       }
//       _fichajes[index] = f;
//       return Result.ok(f);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<void>> delete(int id) async {
//     try {
//       _fichajes.removeWhere((f) => f.idFichaje == id);
//       return const Result.ok(null);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }
// }

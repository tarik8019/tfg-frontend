// import 'dart:async';
// import '../../../domain/models/sede/dominio/sede.dart';
// import '../../../utils/result.dart';
// import 'sede_repository.dart';

// class SedeRepositoryLocal implements SedeRepository {
//   SedeRepositoryLocal({required localDataService});

//   int _sequentialId = 0;

//   final _sedes = List<Sede>.empty(growable: true);

//   @override
//   Future<Result<List<Sede>>> getAll() async {
//     try {
//       return Result.ok(List.unmodifiable(_sedes));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Sede>> getById(int id) async {
//     try {
//       final sede = _sedes.where((s) => s.idSede == id).firstOrNull;
//       if (sede == null) {
//         return Result.error(Exception('Sede no encontrada'));
//       }
//       return Result.ok(sede);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Sede>> create(Sede s) async {
//     try {
//       final nueva = s.copyWith(idSede: _sequentialId++);
//       _sedes.add(nueva);
//       return Result.ok(nueva);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Sede>> update(Sede s) async {
//     try {
//       final index = _sedes.indexWhere((x) => x.idSede == s.idSede);
//       if (index == -1) {
//         return Result.error(Exception('Sede no encontrada'));
//       }

//       _sedes[index] = s;
//       return Result.ok(s);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<void>> delete(int id) async {
//     try {
//       _sedes.removeWhere((s) => s.idSede == id);
//       return const Result.ok(null);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }
  
//   @override
//   Future<Result<void>> updateSede(Sede sede) {
//     // TODO: implement updateSede
//     throw UnimplementedError();
//   }
// }

// import 'dart:async';
// import '../../../domain/models/turno/turno.dart';
// import '../../../utils/result.dart';
// import 'turno_repository.dart';

// class TurnoRepositoryLocal implements TurnoRepository {
//   TurnoRepositoryLocal({required localDataService});

//   int _sequentialId = 0;

//   final _turnos = List<Turno>.empty(growable: true);

//   @override
//   Future<Result<List<Turno>>> getAll() async {
//     try {
//       return Result.ok(List.unmodifiable(_turnos));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Turno>> getById(int id) async {
//     try {
//       final turno = _turnos.where((t) => t.idTurno == id).firstOrNull;
//       if (turno == null) {
//         return Result.error(Exception('Turno no encontrado'));
//       }
//       return Result.ok(turno);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Turno>> create(Turno t) async {
//     try {
//       final nuevo = t.copyWith(idTurno: _sequentialId++);
//       _turnos.add(nuevo);
//       return Result.ok(nuevo);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Turno>> update(Turno t) async {
//     try {
//       final index = _turnos.indexWhere((x) => x.idTurno == t.idTurno);
//       if (index == -1) {
//         return Result.error(Exception('Turno no encontrado'));
//       }

//       _turnos[index] = t;
//       return Result.ok(t);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<void>> delete(int id) async {
//     try {
//       _turnos.removeWhere((t) => t.idTurno == id);
//       return const Result.ok(null);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<List<Turno>>> getBySede(int idSede) async {
//     try {
//       final filtrados = _turnos.where((t) => t.idSede == idSede).toList();
//       return Result.ok(filtrados);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }
// }

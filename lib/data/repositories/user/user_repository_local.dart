// import 'dart:async';
// import 'package:mijornada/data/services/api/model/user/user_api_model.dart';

// import '../../../domain/models/user/dominio/user.dart';
// import '../../../utils/result.dart';
// import '../../services/local/local_data_service.dart';
// import 'user_repository.dart';

// class UserRepositoryLocal implements UserRepository {
//   UserRepositoryLocal({required LocalDataService localDataService})
//       : _localDataService = localDataService;

//   final LocalDataService _localDataService;

//   int _sequentialId = 0;

//   final _users = List<User>.empty(growable: true);

//   @override
//   Future<Result<List<User>>> getAll() async {
//     try {
//       return Result.ok(List.unmodifiable(_users));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<User>> getById(int id) async {
//     try {
//       final user = _users.firstWhere(
//         (u) => u.id == id,
//         orElse: () => throw Exception('Usuario no encontrado'),
//       );
//       return Result.ok(user);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<User>> create(User user) async {
//     try {
//       final userConId = user.copyWith(id: _sequentialId++);
//       _users.add(userConId);

//       _localDataService.addUsuario(userConId as UserApiModel);

//       return Result.ok(userConId);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<User>> updateUsuario(User user) async {
//     try {
//       final index = _users.indexWhere((u) => u.id == user.id);
//       if (index == -1) return Result.error(Exception('Usuario no encontrado'));

//       _users[index] = user;

//       _localDataService.addUsuario(user as UserApiModel);

//       return Result.ok(user);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<void>> delete(int id) async {
//     try {
//       _users.removeWhere((u) => u.id == id);

//       _localDataService.deleteUsuario(id);

//       return const Result.ok(null);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<User>> setUserActivo(int idUsuario, bool activo) async {
//     try {
//       final index = _users.indexWhere((u) => u.id == idUsuario);
//       if (index == -1) return Result.error(Exception('Usuario no encontrado'));

//       final actualizado = _users[index].copyWith(isActive: activo);
//       _users[index] = actualizado;

//       _localDataService.addUsuario(actualizado as UserApiModel);

//       return Result.ok(actualizado);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }
// }

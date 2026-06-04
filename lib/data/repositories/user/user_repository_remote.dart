import 'package:mijornada/data/mappers/user_mapper.dart';

import '../../../domain/models/user/dominio/user.dart';
import '../../../utils/result.dart';
import '../../services/api/api_client.dart';
import '../../services/api/model/user/user_api_model.dart';
import 'user_repository.dart';

class UserRepositoryRemote implements UserRepository {
  UserRepositoryRemote({required ApiClient apiClient}) : _apiClient = apiClient;

  final ApiClient _apiClient;
  final Map<int, User> _cachedUsers = {};



  @override
    Future<Result<List<User>>> getAll() async {
      try {
        final result = await _apiClient.getUsuarios();
        switch (result) {
          case Ok<List<UserApiModel>>():
            final usersApi = result.value;
            return Result.ok(
              usersApi
                  .map(
                    (userApi) => userApi.toDomain())
                  .toList(),
            );
          case Error<List<UserApiModel>>():
            return Result.error(result.error);
        }
      } on Exception catch (e) {
        return Result.error(e);
      }
    }


      @override
      Future<Result<User>> getById(int id) async {
        try {
          //Revisar si ya está cacheado
          if (_cachedUsers.containsKey(id)) {
            return Result.ok(_cachedUsers[id]!);
          }

          // Llamar API si no está en caché
          final resultUser = await _apiClient.getUsuarioById(id);

          switch (resultUser) {
            case Error<UserApiModel>():
              return Result.error(resultUser.error);

            case Ok<UserApiModel>():
              final user = resultUser.value.toDomain();

              //Guardar en caché
              _cachedUsers[id] = user;

              return Result.ok(user);
          }
        }  on Exception catch (e) {
      return Result.error(e);
    }
      }


            @override
      Future<Result<User>> getByEmail(String email) async {
        try {
          //Revisar si ya está cacheado
      
            User? cachedUser;
            try {
              cachedUser = _cachedUsers.values.firstWhere((u) => u.email == email);
            } catch (e) {
              cachedUser = null;
            }

            if (cachedUser != null) {
              return Result.ok(cachedUser);
            }


          // Llamar API si no está en caché
          final resultUser = await _apiClient.getUsuarioByEmail(email);

          switch (resultUser) {
            case Error<UserApiModel>():
              return Result.error(resultUser.error);

            case Ok<UserApiModel>():
              final user = resultUser.value.toDomain();

              //Guardar en caché
              _cachedUsers[user.idUsuario!] = user;

              return Result.ok(user);
          }
        }  on Exception catch (e) {
      return Result.error(e);
    }
      }


      @override
      Future<Result<User>> create(User user) async {
        try {
          final apiModel = user.toCreateApiModel();
          final result = await _apiClient.createUsuario(apiModel);

          switch (result) {
            case Ok():
              final value = result.value as UserApiModel;
              return Result.ok(value.toDomain());
            case Error():
              return Result.error(result.error);
          }
        } on Exception catch (e) {
          return Result.error(e);
        }
      }


    @override
    Future<Result<void>> updateUsuario(User user) async {
      try {
        final apiModel = user.toUpdateApiModel();

        final resultUpdate = await _apiClient.updateUsuario(apiModel);

        switch (resultUpdate) {
          case Error<void>():
            return Result.error(resultUpdate.error);
          case Ok<void>():
            return Result.ok(null);
        }
      } on Exception catch (e) {
        return Result.error(e);
      }
    }


  @override
  Future<Result<void>> delete(int id) async {
    try {
      final result = await _apiClient.deleteUsuario(id);

      if (result is Ok<void>) {
        return const Result.ok(null);
      } else if (result is Error<void>) {
        final err = result;
        return Result.error(err.error);
      }

      return Result.error(Exception('Respuesta inesperada del servidor'));
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

    @override
    Future<Result<void>> setUserActivo(int idUsuario, bool activo) async {
      try {
        final result = await _apiClient.setUsuarioActivo(idUsuario, activo);

        switch (result) {
          case Ok<void>():
            return Result.ok(null); 
          case Error<void>():
            return Result.error(result.error);
        }
      } on Exception catch (e) {
        return Result.error(e);
      }
    }

    @override
    Future<Result<void>> asignarRolUsuario(int idUsuario, String rol) async{
            try {
        final result = await _apiClient.asignarRolUsuario(idUsuario, rol);

        switch (result) {
          case Ok<void>():
            return Result.ok(null); 
          case Error<void>():
            return Result.error(result.error);
        }
      } on Exception catch (e) {
        return Result.error(e);
      }


    }

  
}

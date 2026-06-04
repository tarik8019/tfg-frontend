import 'package:mijornada/data/mappers/sede_mapper.dart';

import '../../../domain/models/sede/dominio/sede.dart';
import '../../../utils/result.dart';
import '../../services/api/api_client.dart';
import '../../services/api/model/sede/sede_api_model.dart';
import 'sede_repository.dart';

class SedeRepositoryRemote implements SedeRepository {
  SedeRepositoryRemote({required ApiClient apiClient}) : _apiClient = apiClient;

  final ApiClient _apiClient;

    final Map<int, Sede> _cachedSedes = {};

  @override
  Future<Result<List<Sede>>> getAll() async {
    try {
      final result = await _apiClient.getSedes();

      switch (result) {
        case Ok<List<SedeApiModel>>():
          final depsApi = result.value;

          final deps = depsApi
              .map((depApi) => depApi.toDomain())
              .toList();

          return Result.ok(deps);

        case Error<List<SedeApiModel>>():
          return Result.error(result.error);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }


  // GET BY ID
  @override
  Future<Result<Sede>> getById(int id) async {
    try {
      if (_cachedSedes.containsKey(id)) {
        return Result.ok(_cachedSedes[id]!);
      }

      final result = await _apiClient.getSedeById(id);

      switch (result) {
        case Error<SedeApiModel>():
          return Result.error(result.error);

        case Ok<SedeApiModel>():
          final sede = result.value.toDomain();

          // Guardar en caché
          _cachedSedes[id] = sede;

          return Result.ok(sede);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  // CREATE
@override
  Future<Result<Sede>> create(Sede sede) async {
  try {
    final dto = sede.toCreateApiModelDto();
    final result = await _apiClient.createSede(dto);

    if (result is Ok<SedeApiModel>) {
      return Result.ok(result.value.toDomain());
    }

    if (result is Error<SedeApiModel>) {
      return Result.error(result.error);
    }

    return Result.error(Exception("Error desconocido en repositorio"));
  }on Exception catch (e) {
    return Result.error(e);
  }
}



  // UPDATE
  @override
  Future<Result<Sede>> updateSede(Sede dep) async {
    try {
      final apiModel = dep.toUpdateApiModel();

      final result = await _apiClient.updateSede(apiModel);

      switch (result) {
        case Ok<SedeApiModel?>():
          // Actualizar caché
          if (dep.idSede != null) {
            _cachedSedes[dep.idSede!] = dep;
          }
          return Result.ok(result.value!.toDomain());

        case Error<SedeApiModel?>():
          return Result.error(Exception(result.error));
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  // DELETE
  @override
  Future<Result<void>> delete(int id) async {
    try {
      final result = await _apiClient.deleteSede(id);

      switch (result) {
        case Ok<void>():
          _cachedSedes.remove(id);
          return const Result.ok(null);

        case Error<void>():
          return Result.error(result.error);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}

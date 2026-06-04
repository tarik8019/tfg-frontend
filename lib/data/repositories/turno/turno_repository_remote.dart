import 'package:flutter/material.dart';
import 'package:mijornada/data/mappers/turno_mapper.dart';

import '../../../domain/models/turno/dominio/turno.dart';
import '../../../utils/result.dart';
import '../../services/api/api_client.dart';
import '../../services/api/model/turno/turno_api_model.dart';
import 'turno_repository.dart';

class TurnoRepositoryRemote implements TurnoRepository {
  TurnoRepositoryRemote({required ApiClient apiClient}): _apiClient = apiClient;

  final ApiClient _apiClient;

  /// Caché por id
  final Map<int, Turno> _cachedTurnos = {};

  // GET ALL
  @override
  Future<Result<List<Turno>>> getAll() async {
    try {
      final result = await _apiClient.getTurnos();

      switch (result) {
        case Ok<List<TurnoApiModel>>():
          final depsApi = result.value;

          final deps = depsApi
              .map((depApi) => depApi.toDomain())
              .toList();

          return Result.ok(deps);

        case Error<List<TurnoApiModel>>():
          return Result.error(result.error);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }


  // GET BY ID
  @override
  Future<Result<Turno>> getById(int id) async {
    try {
      if (_cachedTurnos.containsKey(id)) {
        return Result.ok(_cachedTurnos[id]!);
      }

      final result = await _apiClient.getTurnoById(id);

      switch (result) {
        case Error<TurnoApiModel>():
          return Result.error(result.error);

        case Ok<TurnoApiModel>():
          final turno = result.value.toDomain();

          // Guardar en caché
          _cachedTurnos[id] = turno;

          return Result.ok(turno);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }


  // CREATE
@override
  Future<Result<Turno>> create(Turno dep) async {
  try {
    final dto = dep.toCreateApiModelDto();
    final result = await _apiClient.createTurno(dto);

    if (result is Ok<TurnoApiModel>) {
      return Result.ok(result.value.toDomain());
    }

    if (result is Error<TurnoApiModel>) {
      return Result.error(result.error);
    }

    return Result.error(Exception("Error desconocido en repositorio"));
  }on Exception catch (e) {
    return Result.error(e);
  }
}



  // UPDATE
  @override
  Future<Result<Turno>> updateTurno(Turno dep) async {
    try {
      final apiModel = dep.toUpdateApiModel();

      debugPrint('DEBUG TURNO UPDATE: $apiModel');

      final result = await _apiClient.updateTurno(apiModel);

      switch (result) {
        case Ok<TurnoApiModel?>():
          // Actualizar caché
          if (dep.idTurno != null) {
            _cachedTurnos[dep.idTurno!] = dep;
          }
          return Result.ok(result.value!.toDomain());

        case Error<TurnoApiModel?>():
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
      final result = await _apiClient.deleteTurno(id);

      switch (result) {
        case Ok<void>():
          _cachedTurnos.remove(id);
          return const Result.ok(null);

        case Error<void>():
          return Result.error(result.error);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}

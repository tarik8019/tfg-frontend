import 'package:flutter/material.dart';
import 'package:mijornada/data/mappers/asignacion_turno_mapper.dart';

import '../../../domain/models/asignacion_turno/dominio/asignacion_turno.dart';
import '../../../utils/result.dart';
import '../../services/api/api_client.dart';
import '../../services/api/model/asignacion_turno/asignacion_turno_api_model.dart';
import 'asignacion_turno_repository.dart';

class AsignacionTurnoRepositoryRemote implements AsignacionTurnoRepository {
  AsignacionTurnoRepositoryRemote({required ApiClient apiClient}): _apiClient = apiClient;

  final ApiClient _apiClient;

  /// Caché por id
  final Map<int, AsignacionTurno> _cachedAsignacionTurnos = {};

  // GET ALL
  @override
  Future<Result<List<AsignacionTurno>>> getAll() async {
    try {
      final result = await _apiClient.getAsignacionTurnos();

      switch (result) {
        case Ok<List<AsignacionTurnoApiModel>>():
          final depsApi = result.value;

          final deps = depsApi
              .map((depApi) => depApi.toDomain())
              .toList();

          return Result.ok(deps);

        case Error<List<AsignacionTurnoApiModel>>():
          return Result.error(result.error);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }


  // GET BY ID
  @override
  Future<Result<AsignacionTurno>> getById(int id) async {
    try {
      if (_cachedAsignacionTurnos.containsKey(id)) {
        return Result.ok(_cachedAsignacionTurnos[id]!);
      }

      final result = await _apiClient.getAsignacionTurnoById(id);

      switch (result) {
        case Error<AsignacionTurnoApiModel>():
          return Result.error(result.error);

        case Ok<AsignacionTurnoApiModel>():
          final asignacionTurno = result.value.toDomain();

          // Guardar en caché
          _cachedAsignacionTurnos[id] = asignacionTurno;

          return Result.ok(asignacionTurno);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

    // GET BY EMPLEADO
  @override
  Future<Result<List<AsignacionTurno>>> getByEmpleado(int idEmpleado) async {
    try {
      final result =
          await _apiClient.getAsignacionesPorEmpleado(idEmpleado);

      switch (result) {
        case Ok<List<AsignacionTurnoApiModel>>():
          final asignaciones = result.value
              .map((apiModel) => apiModel.toDomain())
              .toList();

                  for (final a in asignaciones) {
          debugPrint('AsignacionTurno: id=${a.idAsignacion}, estado=${a.estado}, '
              'idTurno=${a.idTurno}, nombreTurno=${a.turno?.nombre}');
        }


          // (opcional) Actualizar caché
          for (final a in asignaciones) {
            if (a.idAsignacion != null) {
              _cachedAsignacionTurnos[a.idAsignacion!] = a;
            }
          }

          return Result.ok(asignaciones);

        case Error<List<AsignacionTurnoApiModel>>():
          return Result.error(result.error);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }



  // CREATE
@override
  Future<Result<AsignacionTurno>> create(AsignacionTurno dep) async {
  try {
    final dto = dep.toCreateApiModel();
    final result = await _apiClient.createAsignacionTurno(dto);

    if (result is Ok<AsignacionTurnoApiModel>) {
      return Result.ok(result.value.toDomain());
    }

    if (result is Error<AsignacionTurnoApiModel>) {
      return Result.error(result.error);
    }

    return Result.error(Exception("Error desconocido en repositorio"));
  }on Exception catch (e) {
    return Result.error(e);
  }
}



  // UPDATE
  @override
  Future<Result<AsignacionTurno>> updateAsignacionTurno(AsignacionTurno dep) async {
    try {

      debugPrint( ' asignacion **********************************turno :  ${dep.idEmpleados} ');
      final apiModel = dep.toUpdateApiModel();

      final result = await _apiClient.updateAsignacionTurno(apiModel);

      switch (result) {
        case Ok<AsignacionTurnoApiModel?>():
          // Actualizar caché
          if (dep.idAsignacion != null) {
            _cachedAsignacionTurnos[dep.idAsignacion!] = dep;
          }
          return Result.ok(result.value!.toDomain());

        case Error<AsignacionTurnoApiModel?>():
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
      final result = await _apiClient.deleteAsignacionTurno(id);

      switch (result) {
        case Ok<void>():
          _cachedAsignacionTurnos.remove(id);
          return const Result.ok(null);

        case Error<void>():
          return Result.error(result.error);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}

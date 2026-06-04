import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mijornada/data/mappers/departamento_mapper.dart';

import '../../../domain/models/departamento/dominio/departamento.dart';
import '../../../utils/result.dart';
import '../../services/api/api_client.dart';
import '../../services/api/model/departamento/departamento_api_model.dart';
import 'departamento_repository.dart';

class DepartamentoRepositoryRemote implements DepartamentoRepository {
  DepartamentoRepositoryRemote({required ApiClient apiClient}): _apiClient = apiClient;

  final ApiClient _apiClient;

  /// Caché por id
  final Map<int, Departamento> _cachedDepartamentos = {};

  // GET ALL
  @override
  Future<Result<List<Departamento>>> getAll() async {
    try {
      final result = await _apiClient.getDepartamentos();

      switch (result) {
        case Ok<List<DepartamentoApiModel>>():
          final depsApi = result.value;

          final deps = depsApi
              .map((depApi) => depApi.toDomain())
              .toList();

          return Result.ok(deps);

        case Error<List<DepartamentoApiModel>>():
          return Result.error(result.error);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }


  // GET BY ID
  @override
  Future<Result<Departamento>> getById(int id) async {
    try {
      if (_cachedDepartamentos.containsKey(id)) {
        return Result.ok(_cachedDepartamentos[id]!);
      }

      final result = await _apiClient.getDepartamentoById(id);

      switch (result) {
        case Error<DepartamentoApiModel>():
          return Result.error(result.error);

        case Ok<DepartamentoApiModel>():
          final departamento = result.value.toDomain();

          // Guardar en caché
          _cachedDepartamentos[id] = departamento;

          return Result.ok(departamento);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

@override
Future<Result<Departamento>> getByNombre(int idEmpresa, String nombre) async {
  try {
    // Buscar primero en caché por nombre + empresa
    Departamento? cachedDepartamento;

    try {
      cachedDepartamento = _cachedDepartamentos.values.firstWhere(
        (d) =>
            d.idEmpresa == idEmpresa &&
            d.nombre.toLowerCase() == nombre.toLowerCase(),
      );
    } catch (_) {
      cachedDepartamento = null;
    }

    if (cachedDepartamento != null) {
      return Result.ok(cachedDepartamento);
    }

    // Llamar API si no está en caché
    final result = await _apiClient.getDepartamentoByNombre(idEmpresa, nombre);

    switch (result) {
      case Error<DepartamentoApiModel>():
        return Result.error(result.error);

      case Ok<DepartamentoApiModel>():
        final departamento = result.value.toDomain();

        // Guardar en caché usando SIEMPRE el ID
        _cachedDepartamentos[departamento.idDepartamento!] = departamento;

        return Result.ok(departamento);
    }
  } on Exception catch (e) {
    return Result.error(e);
  }
}



  // CREATE
@override
  Future<Result<Departamento>> create(Departamento dep) async {
  try {
    final dto = dep.toCreateApiModelDto();
    final result = await _apiClient.createDepartamento(dto);

    if (result is Ok<DepartamentoApiModel>) {
      return Result.ok(result.value.toDomain());
    }

    if (result is Error<DepartamentoApiModel>) {
      return Result.error(result.error);
    }

    return Result.error(Exception("Error desconocido en repositorio"));
  }on Exception catch (e) {
    return Result.error(e);
  }
}



  // UPDATE
  @override
  Future<Result<Departamento>> updateDepartamento(Departamento dep) async {
    try {
      final apiModel = dep.toUpdateApiModel();

      final result = await _apiClient.updateDepartamento(apiModel);

      switch (result) {
        case Ok<DepartamentoApiModel?>():
          // Actualizar caché
          if (dep.idDepartamento != null) {
            _cachedDepartamentos[dep.idDepartamento!] = dep;
          }
          return Result.ok(result.value!.toDomain());

        case Error<DepartamentoApiModel?>():
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
      final result = await _apiClient.deleteDepartamento(id);

      switch (result) {
        case Ok<void>():
          _cachedDepartamentos.remove(id);
          return const Result.ok(null);

        case Error<void>():
          return Result.error(result.error);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}

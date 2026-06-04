import 'package:flutter/material.dart';
import 'package:mijornada/data/mappers/empleado_mapper.dart';
import 'package:mijornada/data/mappers/fichaje_mapper.dart';
import 'package:mijornada/data/repositories/fichaje/fichaje_repository.dart';
import 'package:mijornada/data/services/api/api_client.dart';
import 'package:mijornada/data/services/api/model/fichaje/fichaje_api_model.dart';
import 'package:mijornada/utils/result.dart';

import '../../../domain/models/empleado/dominio/empleado.dart';
import '../../../domain/models/empleado/summary/empleado_summary.dart';
import '../../../domain/models/fichaje/fichaje.dart';
import '../../../domain/models/fichaje/fichajes_empleado.dart';
import '../../../domain/models/fichaje/fichajes_por_dia.dart';
import '../../services/api/model/fichaje/fichajes_empleado_api_model.dart';
import '../../services/api/model/fichaje/fichajes_por_dia_api_model.dart';

class FichajeRepositoryRemote implements FichajeRepository {
  FichajeRepositoryRemote({required ApiClient apiClient}):
_apiClient = apiClient;
  final ApiClient _apiClient;

  @override
  Future<Result<Fichaje>> createFichaje(Fichaje fichaje) async {
    try {
      final dto = fichaje.toApiModel();

      final result = await _apiClient.createFichaje(dto);
      if (result is Ok<FichajeApiModel>) {
        return Result.ok(result.value.toDomain());
      }

      if (result is Error<FichajeApiModel>) {
        return Result.error(result.error);
      }

      return Result.error(
        Exception('Error desconocido en repositorio de fichaje'),
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
  
  @override
  Future<Result<Fichaje?>> getUltimoFichaje(int idEmpleado) async {
    try {
      final result = await _apiClient.getUltimoFichaje(idEmpleado);

      if (result is Ok<FichajeApiModel?>) {
        return Result.ok(
          result.value?.toDomain(),
        );
      }

      if (result is Error<FichajeApiModel?>) {
        return Result.error(result.error);
      }

      return Result.error(
        Exception('Error desconocido al obtener último fichaje'),
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

@override
Future<Result<List<FichajesEmpleado>>> getFichajesHoyAgrupados() async {
  try {
    final result = await _apiClient.getFichajesHoyAgrupados();

    if (result is Ok<List<FichajesEmpleadoApiModel>>) {
      final list = result.value
          .map((e) => e.toDomain())
          .toList();

      return Result.ok(list);
    }

    if (result is Error<List<FichajesEmpleadoApiModel>>) {
      return Result.error(result.error);
    }

    return Result.error(Exception('Error desconocido'));
  } catch (e) {
    return Result.error(Exception('Error: $e'));
  }
}

@override
Future<Result<List<FichajesPorDia>>> getFichajesFiltrados({
  String? nombre,
  String? apellidos,
  DateTime? fecha,
}) async {
  try {
    final result = await _apiClient.getFichajesFiltrados(
      nombre: nombre,
      apellidos: apellidos,
      fecha: fecha,
    );

    if (result is Error) {
      return Result.error(Exception(result.error.toString()));
    }

    if (result is Ok<List<FichajesPorDiaApiModel>>) {
      final list = result.value
          .map((e) => e.toDomain())
          .toList();

      return Result.ok(list);
    }

    return Result.error(Exception('Resultado inesperado'));
  } catch (e) {
    return Result.error(Exception('Error en repository: $e'));
  }
}

@override
Future<Result<List<Fichaje>>> getFichajesHoyPorEmpleado(int idEmpleado) async {
  try {
    final result = await _apiClient.getFichajesHoyPorEmpleado(idEmpleado);

    // OK
    if (result is Ok<List<FichajeApiModel>>) {
      final fichajes = result.value
          .map((e) => e.toDomain())
          .toList();

      return Result.ok(fichajes);
    }

    // Error
    if (result is Error<List<FichajeApiModel>>) {
      return Result.error(result.error);
    }

    // Caso inesperado
    return Result.error(Exception('Resultado inesperado en repository'));
  } catch (e) {
    return Result.error(Exception('Error en repository: $e'));
  }
}
}

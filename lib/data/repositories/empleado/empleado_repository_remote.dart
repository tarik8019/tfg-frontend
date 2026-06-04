import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:mijornada/data/mappers/empleado_mapper.dart';
import '../../../domain/models/empleado/dominio/empleado.dart';
import '../../../utils/result.dart';
import '../../services/api/api_client.dart';
import '../../services/api/model/empleado/empleado_api_model.dart';
import 'empleado_repository.dart';

class EmpleadoRepositoryRemote implements EmpleadoRepository {
  EmpleadoRepositoryRemote({required ApiClient apiClient})
      : _apiClient = apiClient;

  final ApiClient _apiClient;
  Map<int, Empleado>? _cachedEmpleados;

    @override
    Future<Result<List<Empleado>>> getAll() async {
      try {
        final result = await _apiClient.getEmpleados();
        debugPrint('Empleados API response: $result');
        switch (result) {
          case Ok<List<EmpleadoApiModel>>():
            final empleadosApi = result.value;
            return Result.ok(
              empleadosApi
                  .map(
                    (empleadoApi) => empleadoApi.toDomain())
                  .toList(),
            );
          case Error<List<EmpleadoApiModel>>():
            return Result.error(result.error);
        }
      } on Exception catch (e) {
        return Result.error(e);
      }
    }


  @override
  Future<Result<Empleado>> getById(int id) async {
  try {
      if (_cachedEmpleados!.containsKey(id)) {
            return Result.ok(_cachedEmpleados![id]!);
          }
    final resultEmpleado = await _apiClient.getEmpleadoById(id);
    switch (resultEmpleado) {
      case Error<EmpleadoApiModel>():
        return Result.error(resultEmpleado.error);
      case Ok<EmpleadoApiModel>():
    }
    final empleado = resultEmpleado.value;
    return Result.ok(empleado.toDomain());
  } on Exception catch (e) {
    return Result.error(e);
  }
}

    @override
  Future<Result<Empleado>> create(Empleado empleado) async {
  try {
    final dto = empleado.toCreateApiModelDto();
    final result = await _apiClient.createEmpleado(dto);

    if (result is Ok<EmpleadoApiModel>) {
      return Result.ok(result.value.toDomain());
    }

    if (result is Error<EmpleadoApiModel>) {
      return Result.error(result.error);
    }

    return Result.error(Exception("Error desconocido en repositorio"));
  }on Exception catch (e) {
    return Result.error(e);
  }
}


    @override
    Future<Result<Empleado>> update(Empleado empleado) async {
      try {
        final apiModel = empleado.toUpdateApiModelDto();
        debugPrint("=== REPO UPDATE ===");
        debugPrint("API MODEL: ${apiModel.toJson()}");


        final result = await _apiClient.updateEmpleado(apiModel);

        switch (result) {
          case Ok<EmpleadoApiModel>():
            if (empleado.idEmpleado != null) {
              final actualizado = result.value.toDomain();
              _cachedEmpleados?[actualizado.idEmpleado!] = actualizado;
              return Result.ok(actualizado);

            }
            return Result.ok(result.value.toDomain());

          case Error<EmpleadoApiModel>():
            return Result.error(Exception(result.error));
        }
      } on Exception catch (e) {
        return Result.error(e);
      }
    }


  /// Obtiene un empleado por email, usando caché si está disponible
@override
Future<Result<Empleado>> getByEmail(String email) async {
  try {
    debugPrint('DEBUG: getByEmail llamado con email=$email');

    // Buscar en caché
    final cached = _cachedEmpleados?.values.firstWhereOrNull(
      (u) => u.email.toLowerCase() == email.toLowerCase(),
    );
    debugPrint('DEBUG: Cached encontrado: $cached');

    if (cached != null) {
      debugPrint('DEBUG: Retornando empleado desde cache');
      return Result.ok(cached);
    }

    // Llamar a API si no está en caché
    debugPrint('DEBUG: No se encontró en cache, llamando API');
    final resultEmpleado = await _apiClient.getEmpleadoByEmail(email);
    debugPrint('DEBUG: resultEmpleado recibido de API: $resultEmpleado');

    if (resultEmpleado is Ok<EmpleadoApiModel>) {
      final emp = resultEmpleado.value.toDomain();
      debugPrint('DEBUG: empleado convertido a domain: $emp');

      // Guardar en caché
      if (emp.idEmpleado != null) {
        _cachedEmpleados ??= {};
        _cachedEmpleados![emp.idEmpleado!] = emp;
        debugPrint('DEBUG: empleado guardado en cache: id=${emp.idEmpleado}');
      } else {
        debugPrint('WARNING: empleado.idEmpleado es null');
      }

      return Result.ok(emp);
    }

    if (resultEmpleado is Error<EmpleadoApiModel>) {
      debugPrint('ERROR: resultEmpleado es Error: ${resultEmpleado.error}');
      return Result.error(resultEmpleado.error);
    }

    debugPrint('ERROR: resultEmpleado no es Ok ni Error, valor desconocido');
    return Result.error(Exception("Error desconocido al obtener empleado"));
  } on Exception catch (e, stack) {
    debugPrint('EXCEPTION getByEmail: $e');
    debugPrintStack(stackTrace: stack);
    return Result.error(e);
  }
}




  @override
  Future<Result<void>> delete(int id) async {
    try {
      final result = await _apiClient.deleteEmpleado(id);

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
    Future<Result<void>> setActivo(int idEmpleado, bool activo) async {
      try {
        final result = await _apiClient.setEmpleadoActivo(idEmpleado, activo);

        switch (result) {
          case Ok<EmpleadoApiModel>():
            return Result.ok(null); // indicar éxito
          case Error<EmpleadoApiModel>():
            return Result.error(result.error);
        }
      } on Exception catch (e) {
        return Result.error(e);
      }
    }

@override
Future<Result<Empleado>> getByUsuario(int idUsuario) async {
  try {
    debugPrint('DEBUG: getByUsuario llamado con idUsuario=$idUsuario');

    // Buscar en caché
    final cached = _cachedEmpleados?.values.firstWhereOrNull(
      (e) => e.idUsuario == idUsuario,
    );

    if (cached != null) {
      debugPrint('DEBUG: Retornando empleado desde cache: $cached');
      return Result.ok(cached);
    }

    // Llamar a API si no está en caché
    final resultEmpleado = await _apiClient.getEmpleadoByUsuario(idUsuario);

    if (resultEmpleado is Ok<EmpleadoApiModel>) {
      final emp = resultEmpleado.value.toDomain();

      // Guardar en caché
      if (emp.idEmpleado != null) {
        _cachedEmpleados ??= {};
        _cachedEmpleados![emp.idEmpleado!] = emp;
        debugPrint('DEBUG: empleado guardado en cache: id=${emp.idEmpleado}');
      }

      return Result.ok(emp);
    }

    if (resultEmpleado is Error<EmpleadoApiModel>) {
      return Result.error(resultEmpleado.error);
    }

    return Result.error(Exception("Error desconocido al obtener empleado"));
  } on Exception catch (e, stack) {
    debugPrint('EXCEPTION getByUsuario: $e');
    debugPrintStack(stackTrace: stack);
    return Result.error(e);
  }
}


}
  


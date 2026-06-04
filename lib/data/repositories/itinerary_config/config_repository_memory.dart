import 'dart:async';

import '../../../utils/result.dart';
import 'config_repository.dart';
//Este repositorio sirve para guardar configuración temporal en memoria
/* 
Configuración por usuario
Preferencias temporales
Estado de sesión
Config cargada desde backend */
class ConfigRepositoryMemory<T> implements ConfigRepository<T> {
  T? _config;

  @override
  Future<Result<T>> getConfig() async {
    if (_config == null) {
      return Result.error(Exception("No hay configuración almacenada"));
    }
    return Result.ok(_config as T);
  }

  @override
  Future<Result<void>> setConfig(T config) async {
    _config = config;
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> clearConfig() async {
    _config = null;
    return const Result.ok(null);
  }
}

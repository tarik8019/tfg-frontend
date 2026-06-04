import 'package:mijornada/data/repositories/itinerary_config/config_repository.dart';
import 'package:mijornada/domain/models/user/config/user_config.dart';
import 'package:mijornada/utils/result.dart';

class FakeConfigRepository implements ConfigRepository<UserConfig> {
  final Map<int, UserConfig> _configs = {};
  int _sequentialId = 1;

  FakeConfigRepository() {
    // Datos iniciales de prueba
    _configs[1] = UserConfig(
      nombre: 'Tarik',
      apellidos: 'Salahi',
      email: 'tarik@test.com',
      rol: 'Administrador',
      isActivo: true,
      idEmpresa: 1,
    );

    _configs[2] = UserConfig(
      nombre: 'Ana',
      apellidos: 'Gomez',
      email: 'ana@test.com',
      rol: 'Empleado',
      isActivo: true,
      idEmpresa: 1,
    );

    _sequentialId = _configs.length + 1;
  }

  /// Obtener la configuración actual
  @override
  Future<Result<UserConfig>> getConfig() async {
    if (_configs.isEmpty) {
      return Result.error(Exception('No hay configuración almacenada'));
    }
    // Retorna la última config agregada (simula la "config actual")
    return Result.ok(_configs[_sequentialId - 1]!);
  }

  /// Guardar nueva configuración
  @override
  Future<Result<void>> setConfig(UserConfig config) async {
    _configs[_sequentialId] = config;
    _sequentialId++;
    return const Result.ok(null);
  }

  /// Limpiar configuración
  @override
  Future<Result<void>> clearConfig() async {
    _configs.clear();
    _sequentialId = 1;
    return const Result.ok(null);
  }

  /// Para test: obtener todas las configs
  List<UserConfig> getAllConfigs() => _configs.values.toList();
}

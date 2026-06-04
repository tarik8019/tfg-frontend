import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:mijornada/domain/models/user/dominio/user.dart';
import '../../../../data/repositories/itinerary_config/config_repository.dart';
import '../../../../data/repositories/user/user_repository.dart';
import '../../../../domain/models/user/config/user_config.dart';
import '../../../../domain/use_cases/user/user_create_use_case.dart';
import '../../../../utils/command.dart';
import '../../../../utils/result.dart';

/// ViewModel para manejar usuarios siguiendo el patrón Compass
class UsuarioDialogoViewModel extends ChangeNotifier {
  UsuarioDialogoViewModel({
    required ConfigRepository<UserConfig> userConfigRepository,
    required UserCreateUseCase userCreateUseCase,
    required UserRepository userRepository,
  })  : _userConfigRepository = userConfigRepository,
        _userCreateUseCase = userCreateUseCase,
        _userRepository = userRepository {
    // Comando para crear usuario, recibe UserConfig desde la UI
    createUsuario = Command1<void, (
    String nombre,
    String apellidos,
    String email,
    String rol,
    bool isActive,
    int idEmpresa,
)>(_createUsuario);
    // Comando para guardar configuración local
    saveUsuarioConfig = Command1<void, UserConfig>(_saveUsuarioConfig);

    // Comando para cargar todos los usuarios
    loadUsuarios = Command0(_loadUsuarios);
  }
  final ConfigRepository<UserConfig> _userConfigRepository;
  final UserCreateUseCase _userCreateUseCase;
  final UserRepository _userRepository;
  final _log = Logger('UsuarioViewModel');

late final Command1<void, (
  String nombre,
  String apellidos,
  String email,
  String rol,
  bool isActive,
   int idEmpresa,
)> createUsuario;


  late final Command1<void, UserConfig> saveUsuarioConfig;
  late final Command0 loadUsuarios;

  User? _usuario;
  List<User> _usuarios = [];

  User? get usuario => _usuario;
  List<User> get usuarios => _usuarios;

  /// Métodos privados
  /// Crear usuario usando un UserConfig recibido desde la UI
Future<Result<void>> _createUsuario((
  String nombre,
  String apellidos,
  String email,
  String rol,
  bool isActive,
  int idEmpresa,
) data) async {
  debugPrint('_createUsuario ejecutado');
  debugPrint('Datos: $data');
  final config = UserConfig(
    nombre: data.$1,
    apellidos: data.$2,
    email: data.$3,
    rol: data.$4,
    isActivo: data.$5,
    idEmpresa: data.$6,
  );

  final result = await _userCreateUseCase.createFrom(config);

  switch (result) {
    case Ok<User>():
      _log.fine('Usuario creado con éxito: ${config.email}');
      _usuario = result.value; 
      notifyListeners();
      return const Result.ok(null);

    case Error<User>():
      _log.warning('Error al crear usuario: ${result.error}');
      notifyListeners();
      return Result.error(result.error);
  }
}


  /// Guardar la configuración de usuario en memoria
  Future<Result<void>> _saveUsuarioConfig(UserConfig config) async {
    final result = await _userConfigRepository.setConfig(config);
    switch (result) {
      case Ok<void>():
        _log.fine('Configuración de usuario guardada');
      case Error<void>():
        _log.warning('Error al guardar config de usuario: ${result.error}');
    }
    return result;
  }

  /// Cargar todos los usuarios desde el repositorio
  Future<Result<void>> _loadUsuarios() async {
    final result = await _userRepository.getAll();

    switch (result) {
      case Ok<List<User>>():
        _usuarios = result.value;
        notifyListeners();
        return const Result.ok(null);

      case Error<List<User>>():
        _log.warning('Error al cargar usuarios: ${result.error}');
        return Result.error(result.error);
    }
  }
}

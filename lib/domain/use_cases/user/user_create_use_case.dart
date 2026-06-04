import 'package:logging/logging.dart';
import '../../../data/repositories/user/user_repository.dart';
import '../../../utils/result.dart';
import '../../models/user/dominio/user.dart';
import '../../models/user/config/user_config.dart';
import '../../validators/validator.dart';

/// Use Case para crear un usuario
/// Aplica reglas de negocio antes de guardar en el repositorio
class UserCreateUseCase {
  UserCreateUseCase({
    required UserRepository userRepository,
  }) : _userRepository = userRepository;

  final UserRepository _userRepository;
  final _log = Logger('UserCreateUseCase');

  Future<Result<User>> createFrom(UserConfig userConfig) async {
    // Validaciones básicas
    if (userConfig.nombre == null || userConfig.nombre!.isEmpty) {
      _log.warning('Nombre is not set');
      return Result.error(Exception('Nombre is required'));
    }
    if (userConfig.apellidos == null || userConfig.apellidos!.isEmpty) {
      _log.warning('Apellidos is not set');
      return Result.error(Exception('Apellidos is required'));
    }
      if (userConfig.email == null || userConfig.email!.trim().isEmpty) {
      _log.warning('Email is not set');
      return Result.error(Exception('Email is required'));
    }

    final email = userConfig.email!.trim();

    if (!Validator.isValidEmail(email)) {
      return Result.error(Exception('El email no es válido'));
    }


    if (userConfig.rol == null || userConfig.rol!.isEmpty) {
      _log.warning('Rol is not set');
      return Result.error(Exception('Rol is required'));
    }

    // Transformar el UserConfig a User (modelo de dominio)
    final user = User(
      nombre: userConfig.nombre!,
      apellidos: userConfig.apellidos!,
      email: userConfig.email!,
      rol: userConfig.rol!,
      isActivo: userConfig.isActivo!,
      pictureUrl: userConfig.pictureUrl ?? '',
      createdAt: userConfig.createdAt ?? DateTime.now(),
      updatedAt: userConfig.updatedAt,
      idEmpresa: userConfig.idEmpresa!,
    );

    // Guardar en el repositorio
    final saveResult = await _userRepository.create(user);

    switch (saveResult) {
      case Ok<void>():
        _log.fine('Usuario creado correctamente');
        break;
      case Error<void>():
        _log.warning('Error al crear usuario', saveResult.error);
        return Result.error(Exception(saveResult.error));
    }

    return Result.ok(user);
  }
}

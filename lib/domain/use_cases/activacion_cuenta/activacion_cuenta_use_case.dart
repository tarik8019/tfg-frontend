import 'package:logging/logging.dart';

import '../../../data/repositories/activacion_cuenta/activacion_cuenta_repository.dart';
import '../../../data/services/api/model/activacion_cuenta/activacion_cuenta_api_model.dart';
import '../../../utils/result.dart';

/// UseCase para activar la cuenta de usuario
class ActivacionCuentaUseCase {
  ActivacionCuentaUseCase({
    required ActivacionCuentaRepository activacionCuentaRepository,
  }) : _activacionCuentaRepository = activacionCuentaRepository;

  final ActivacionCuentaRepository _activacionCuentaRepository;
  final _log = Logger('ActivacionCuentaUseCase');

  Future<Result<void>> execute(ActivacionCuentaApiModel model) async {
    _log.fine('Activating account for email: ${model.email}');

    // Validación básica
    if (!_validateEmail(model.email)) {
      _log.warning('Invalid email: ${model.email}');
      return Result.error(Exception('Email inválido'));
    }

    if (!_validatePassword(model.password)) {
      _log.warning('Password does not meet requirements');
      return Result.error(Exception(
          'La contraseña debe tener 8-20 caracteres, al menos una mayúscula y un número.'));
    }

    if (model.token.isEmpty) {
      _log.warning('Token is empty');
      return Result.error(Exception('Token inválido'));
    }

    try {
      final result = await _activacionCuentaRepository.activateAccount(model);

      switch (result) {
        case Ok<void>():
          _log.fine('Account activated successfully for ${model.email}');
          return const Result.ok(null);
        case Error<void>():
          _log.warning('Error activating account: ${result.error}');
          return Result.error(result.error);
      }
    } catch (e, st) {
      _log.severe('Unexpected error during account activation', e, st);
      return Result.error(Exception('Error inesperado al activar la cuenta'));
    }
  }

  bool _validateEmail(String email) {
    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    return regex.hasMatch(email);
  }

  bool _validatePassword(String password) {
    final regex = RegExp(r'^(?=.*[A-Z])(?=.*\d).{8,20}$');
    return regex.hasMatch(password);
  }
}

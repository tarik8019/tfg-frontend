import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

import '../../../domain/use_cases/activacion_cuenta/activacion_cuenta_use_case.dart';
import '../../../data/services/api/model/activacion_cuenta/activacion_cuenta_api_model.dart';
import '../../../utils/command.dart';
import '../../../utils/result.dart';

class ActivacionCuentaViewModel extends ChangeNotifier {
  ActivacionCuentaViewModel({
    required ActivacionCuentaUseCase useCase,
    required String email,
    required String token,
  })  : _useCase = useCase,
        _email = email,
        _token = token {
    _log.fine('ActivacionCuentaViewModel creado para $_email');
    activateAccount = Command0(_activate);
  }

  final ActivacionCuentaUseCase _useCase;
  final String _email;
  final String _token;

  final _log = Logger('ActivacionCuentaViewModel');

  String _password = '';

  late final Command0<void> activateAccount;

  String get email => _email;

  bool get canSubmit => _password.isNotEmpty;

  void setPassword(String value) {
    _password = value;
    _log.finer('Password actualizado (longitud=${value.length})');
    notifyListeners();
  }

  Future<Result<void>> _activate() async {
    _log.fine('Intentando activar cuenta para $_email');

    try {
      final result = await _useCase.execute(
        ActivacionCuentaApiModel(
          email: _email,
          token: _token,
          password: _password,
        ),
      );

      switch (result) {
        case Ok():
          _log.info('Cuenta activada correctamente para $_email');
          return const Result.ok(null);
        case Error():
          _log.warning(
            'Error al activar cuenta para $_email',
            result.error,
          );
          return Result.error(result.error);
      }
    } catch (e, st) {
      _log.severe(
        'Excepción inesperada al activar cuenta para $_email',
        e,
        st,
      );
      return Result.error(
        Exception('Error inesperado al activar la cuenta'),
      );
    }
  }
}

import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../../utils/result.dart';
import 'model/activacion_cuenta/activacion_cuenta_api_model.dart';

class ActivacionCuentaApiClient {
  const ActivacionCuentaApiClient();

  Future<Result<void>> postActivarCuenta({
    required ActivacionCuentaApiModel apiModel,
  }) async {
    try {
      final uri = Uri.parse('/api/usuarios/activar-cuenta');

      final response = await http.post(
        uri,
        headers: const {
          'Content-Type': 'application/json; charset=utf-8',
        },
        body: jsonEncode(apiModel.toJson()),
      );

      if (response.statusCode >= 200 && response.statusCode < 300) {
        return const Result.ok(null);
      }

      return Result.error(
        Exception(
          'Error al activar cuenta: '
          '${response.statusCode} - ${response.body}',
        ),
      );
    } catch (e) {
      return Result.error(Exception('Error de conexión: $e'));
    }
  }
}

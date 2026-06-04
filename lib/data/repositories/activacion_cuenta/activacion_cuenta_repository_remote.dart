import 'package:mijornada/data/services/api/model/activacion_cuenta/activacion_cuenta_api_model.dart';
import '../../../utils/result.dart';
import '../../services/api/activacion_cuenta_api_client.dart';
import 'activacion_cuenta_repository.dart';

class ActivacionCuentaRepositoryRemote implements ActivacionCuentaRepository {
    ActivacionCuentaRepositoryRemote({required ActivacionCuentaApiClient activacionCuentaApiClient})
      : _activacionCuentaApiClient = activacionCuentaApiClient;
    final ActivacionCuentaApiClient _activacionCuentaApiClient;


        @override
      Future<Result<void>> activateAccount(
        ActivacionCuentaApiModel apiModel,
      ) async {
        final result =
            await _activacionCuentaApiClient.postActivarCuenta(
          apiModel: apiModel,
        );

        return result.isSuccess
            ? const Result.ok(null)
            : Result.error(result.error!);
      }


}

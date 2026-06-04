import 'package:mijornada/data/services/api/model/activacion_cuenta/activacion_cuenta_api_model.dart';

import '../../../utils/result.dart';

abstract class ActivacionCuentaRepository {
  Future<Result<void>> activateAccount(ActivacionCuentaApiModel apiModel);
}

 






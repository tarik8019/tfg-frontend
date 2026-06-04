import 'package:mijornada/data/services/api/auth_api_client.dart';
import 'package:mijornada/data/services/api/model/login_request/login_request.dart';
import 'package:mijornada/data/services/api/model/login_response/login_api_response.dart';
import 'package:mijornada/data/services/api/model/login_response/login_response.dart';
import 'package:mijornada/utils/result.dart';

class FakeAuthApiClient implements AuthApiClient {
  @override
  Future<Result<LoginApiResponse>> login(LoginRequest loginRequest) async {
    // Login correcto simulado
    if (loginRequest.email == 'test@mijornada.com' &&
        loginRequest.password == '1234') {
      return Result.ok(
        LoginApiResponse(
          statusCode: '200',
          isSuccess: true,
          errorMessages: const [],
          result: LoginResponse(
            token: 'FAKE_TOKEN',
            email: loginRequest.email,
            rol: 'ADMIN',
            nombre: 'Usuario Test',
             id: 1, 
             apellidos: 'Amin',
              idEmpresa: 4, 
              pictureUrl: 'ljhkghjfygijkvh',
          ),
        ),
      );
    }

    // Login incorrecto simulado
    return Result.ok(
      LoginApiResponse(
        statusCode: '401',
        isSuccess: false,
        errorMessages: const ['Credenciales incorrectas'],
        result: LoginResponse(
          token: '',
          email: '',
          rol: '',
          nombre: '', 
          id: 0,
           apellidos: '',
            idEmpresa: 0,
             pictureUrl: '',
        ),
      ),
    );
  }
}

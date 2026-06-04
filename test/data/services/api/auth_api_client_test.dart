import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/data/services/api/model/login_request/login_request.dart';
import 'package:mijornada/data/services/api/model/login_response/login_api_response.dart';
import 'package:mijornada/data/services/api/model/login_response/login_response.dart';
import 'package:mijornada/utils/result.dart';

import '../../../../testing/fakes/services/fake_auth_api_client.dart';
import '../../../../testing/utils/result.dart';


void main() {
  group('AuthApiClient', () {
    late FakeAuthApiClient apiClient;

    setUp(() {
      apiClient = FakeAuthApiClient();
    });

    test('should login successfully with correct credentials', () async {
      // Arrange
      const request = LoginRequest(
        email: 'test@mijornada.com',
        password: '1234',
      );

      // Act
      final result = await apiClient.login(request);

      // Assert
      expect(result, isA<Ok<LoginApiResponse>>());

      final response = result.asOk.value;

      expect(response.isSuccess, true);
      expect(response.statusCode, '200');

      final user = response.result;
      expect(user.token, 'FAKE_TOKEN');
      expect(user.email, 'test@mijornada.com');
      expect(user.rol, 'ADMIN');
      expect(user.nombre, 'Usuario Test');
      expect(user.id, 1);
    });

    test('should return error response with wrong credentials', () async {
      // Arrange
      const request = LoginRequest(
        email: 'wrong@email.com',
        password: 'bad-password',
      );

      // Act
      final result = await apiClient.login(request);

      // Assert
      expect(result, isA<Ok<LoginApiResponse>>());

      final response = result.asOk.value;

      expect(response.isSuccess, false);
      expect(response.statusCode, '401');
      expect(response.errorMessages, isNotEmpty);

      final user = response.result;
      expect(user.token, isEmpty);
      expect(user.email, isEmpty);
      expect(user.rol, isEmpty);
    });
  });
}

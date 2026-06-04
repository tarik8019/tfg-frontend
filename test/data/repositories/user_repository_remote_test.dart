import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/data/repositories/user/user_repository.dart';
import 'package:mijornada/data/repositories/user/user_repository_remote.dart';
import 'package:mijornada/domain/models/user/dominio/user.dart';
import 'package:mijornada/utils/result.dart';

import '../../../testing/fakes/services/fake_api_client.dart';
import '../../../testing/models/user.dart' as test_models;
import '../../../testing/utils/result.dart';

void main() {
  group('UserRepositoryRemote tests', () {
    late UserRepository repository;
    late FakeApiClient fakeApiClient;

    setUp(() {
      fakeApiClient = FakeApiClient();
      repository = UserRepositoryRemote(apiClient: fakeApiClient);
    });

    test('should get all users', () async {
      fakeApiClient.usuarios.add(test_models.kUserApiModel);

      final result = await repository.getAll();
      final users = result.asOk.value;

      expect(users.length, 1);
      expect(users.first.email, test_models.kUser.email);
    });

    test('should get user by id', () async {
      fakeApiClient.usuarios.add(test_models.kUserApiModel);

      final result = await repository.getById(1);
      final user = result.asOk.value;

      expect(user.idUsuario, 1);
      expect(user.email, test_models.kUser.email);
    });

    test('should get user by email', () async {
      fakeApiClient.usuarios.add(test_models.kUserApiModel);

      final result =
          await repository.getByEmail(test_models.kUser.email);
      final user = result.asOk.value;

      expect(user.email, test_models.kUser.email);
    });

    test('should create user', () async {
      expect(fakeApiClient.usuarios, isEmpty);

      final result = await repository.create(test_models.kUser);

      expect(result, isA<Ok<User>>());
      expect(fakeApiClient.usuarios.length, 1);
      expect(fakeApiClient.usuarios.first.email, test_models.kUser.email);
    });

    test('should update user', () async {
      fakeApiClient.usuarios.add(test_models.kUserApiModel);

      final updated =
          test_models.kUser.copyWith(nombre: 'Nuevo Nombre');

      final result = await repository.updateUsuario(updated);

      expect(result, isA<Ok<void>>());
      expect(fakeApiClient.usuarios.first.nombre, 'Nuevo Nombre');
    });

    test('should delete user', () async {
      fakeApiClient.usuarios.add(test_models.kUserApiModel);

      final result = await repository.delete(1);

      expect(result, isA<Ok<void>>());
      expect(fakeApiClient.usuarios, isEmpty);
    });

    test('should set user activo/inactivo', () async {
      fakeApiClient.usuarios.add(test_models.kUserApiModel);

      final result = await repository.setUserActivo(1, false);

      expect(result, isA<Ok<void>>());
      expect(fakeApiClient.usuarios.first.isActivo, false);
    });

    test('should assign role to user', () async {
      fakeApiClient.usuarios.add(test_models.kUserApiModel);

      final result =
          await repository.asignarRolUsuario(1, 'ADMIN');

      expect(result, isA<Ok<void>>());
      expect(fakeApiClient.usuarios.first.rol, 'ADMIN');
    });
  });
}

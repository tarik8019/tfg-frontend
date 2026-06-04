import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/domain/models/user/config/user_config.dart';
import 'package:mijornada/domain/models/user/dominio/user.dart';
import 'package:mijornada/domain/use_cases/user/user_create_use_case.dart';
import 'package:mijornada/utils/result.dart';

import '../../../testing/fakes/repositories/fake_user_repository.dart';
import '../../../testing/utils/result.dart';

void main() {
  group('UserCreateUseCase Tests', () {
    late UserCreateUseCase useCase;
    late FakeUserRepository fakeRepo;

    setUp(() {
      fakeRepo = FakeUserRepository();
      useCase = UserCreateUseCase(userRepository: fakeRepo);
    });

    test('Create user successfully', () async {
      final userConfig = UserConfig(
        nombre: 'Juan',
        apellidos: 'Pérez',
        email: 'juan.perez@test.com',
        rol: 'ADMIN',
        isActivo: true,
        idEmpresa: 1,
      );

      final result = await useCase.createFrom(userConfig);
      expect(result, isA<Ok<User>>());
      expect(result.asOk.value.nombre, 'Juan');
      expect(result.asOk.value.email, 'juan.perez@test.com');
    });

    test('Fails if nombre is empty', () async {
      final userConfig = UserConfig(
        nombre: '',
        apellidos: 'Pérez',
        email: 'juan.perez@test.com',
        rol: 'ADMIN',
        isActivo: true,
        idEmpresa: 1,
      );

      final result = await useCase.createFrom(userConfig);
      expect(result, isA<Error<User>>());
      expect((result as Error).error.toString(), contains('Nombre is required'));
    });

    test('Fails if apellidos is empty', () async {
      final userConfig = UserConfig(
        nombre: 'Juan',
        apellidos: '',
        email: 'juan.perez@test.com',
        rol: 'ADMIN',
        isActivo: true,
        idEmpresa: 1,
      );

      final result = await useCase.createFrom(userConfig);
      expect(result, isA<Error<User>>());
      expect((result as Error).error.toString(), contains('Apellidos is required'));
    });

    test('Fails if email is invalid', () async {
      final userConfig = UserConfig(
        nombre: 'Juan',
        apellidos: 'Pérez',
        email: 'invalid-email',
        rol: 'ADMIN',
        isActivo: true,
        idEmpresa: 1,
      );

      final result = await useCase.createFrom(userConfig);
      expect(result, isA<Error<User>>());
      expect((result as Error).error.toString(), contains('email no es válido'));
    });

    test('Fails if rol is empty', () async {
      final userConfig = UserConfig(
        nombre: 'Juan',
        apellidos: 'Pérez',
        email: 'juan.perez@test.com',
        rol: '',
        isActivo: true,
        idEmpresa: 1,
      );

      final result = await useCase.createFrom(userConfig);
      expect(result, isA<Error<User>>());
      expect((result as Error).error.toString(), contains('Rol is required'));
    });
  });
}

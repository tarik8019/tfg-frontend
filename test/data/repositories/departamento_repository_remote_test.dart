import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/data/repositories/departamento/departamento_repository.dart';
import 'package:mijornada/data/repositories/departamento/departamento_repository_remote.dart';
import 'package:mijornada/utils/result.dart';

import '../../../testing/fakes/services/fake_api_client.dart';
import '../../../testing/models/departamento.dart';
import '../../../testing/utils/result.dart';

void main() {
  group('DepartamentoRepositoryRemote tests', () {
    late DepartamentoRepository repository;
    late FakeApiClient fakeApiClient;

    setUp(() {
      fakeApiClient = FakeApiClient();
      repository = DepartamentoRepositoryRemote(apiClient: fakeApiClient);
    });

    test('should get departamento by id', () async {
      fakeApiClient.departamentos.add(kDepartamentoApiModel);

      final result = await repository.getById(1);
      final departamento = result.asOk.value;

      expect(departamento, kDepartamento);
    });

    test('should create departamento', () async {
      expect(fakeApiClient.departamentos, isEmpty);

      final result = await repository.create(kDepartamento);

      expect(result, isA<Ok>());
      expect(fakeApiClient.departamentos.first, kDepartamentoApiModel);
    });

    test('should get all departamentos', () async {
      fakeApiClient.departamentos.add(kDepartamentoApiModel);

      final result = await repository.getAll();
      final list = result.asOk.value;

      expect(list, [kDepartamento]);
    });

    test('should get departamento by nombre', () async {
      fakeApiClient.departamentos.add(kDepartamentoApiModel);

      final result =
          await repository.getByNombre(1, 'Informática');

      final departamento = result.asOk.value;
      expect(departamento, kDepartamento);
    });

    test('should delete departamento', () async {
      fakeApiClient.departamentos.add(kDepartamentoApiModel);

      final result = await repository.delete(1);

      expect(result, isA<Ok<void>>());
      expect(fakeApiClient.departamentos, isEmpty);
    });
  });
}

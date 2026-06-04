import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/data/repositories/sede/sede_repository.dart';
import 'package:mijornada/data/repositories/sede/sede_repository_remote.dart';
import 'package:mijornada/utils/result.dart';

import '../../../testing/fakes/services/fake_api_client.dart';
import '../../../testing/models/sede.dart';
import '../../../testing/utils/result.dart';

void main() {
  group('SedeRepositoryRemote tests', () {
    late SedeRepository repository;
    late FakeApiClient fakeApiClient;

    setUp(() {
      fakeApiClient = FakeApiClient();
      repository = SedeRepositoryRemote(apiClient: fakeApiClient);
    });

    test('should get sede by id', () async {
      fakeApiClient.sedes.add(kSedeApiModel);

      final result = await repository.getById(1);
      final sede = result.asOk.value;

      expect(sede, kSede);
    });

    test('should create sede', () async {
      expect(fakeApiClient.sedes, isEmpty);

      final result = await repository.create(kSede);

      expect(result, isA<Ok>());
      expect(fakeApiClient.sedes.first, kSedeApiModel);
    });

    test('should get all sedes', () async {
      fakeApiClient.sedes.add(kSedeApiModel);

      final result = await repository.getAll();
      final list = result.asOk.value;

      expect(list, [kSede]);
    });

    test('should update sede', () async {
      fakeApiClient.sedes.add(kSedeApiModel);

      final updated = kSede.copyWith(nombre: 'Nueva Sede');
      final result = await repository.updateSede(updated);
      expect(result, isA<Ok<void>>());

      expect(fakeApiClient.sedes.first.nombre, 'Nueva Sede');
    });


    test('should delete sede', () async {
      fakeApiClient.sedes.add(kSedeApiModel);

      final result = await repository.delete(1);

      expect(result, isA<Ok<void>>());
      expect(fakeApiClient.sedes, isEmpty);
    });
  });
}

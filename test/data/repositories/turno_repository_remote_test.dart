import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/data/repositories/turno/turno_repository.dart';
import 'package:mijornada/data/repositories/turno/turno_repository_remote.dart';
import 'package:mijornada/domain/models/turno/dominio/turno.dart';
import 'package:mijornada/utils/result.dart';

import '../../../testing/fakes/services/fake_api_client.dart';
import '../../../testing/models/turno.dart' as test_models;
import '../../../testing/utils/result.dart';
void main() {
  group('TurnoRepositoryRemote tests', () {
    late TurnoRepository repository;
    late FakeApiClient fakeApiClient;

    setUp(() {
      fakeApiClient = FakeApiClient();
      repository = TurnoRepositoryRemote(apiClient: fakeApiClient);
    });

    test('should get all turnos', () async {
      fakeApiClient.turnos.add(test_models.kTurnoApiModel);

      final result = await repository.getAll();
      final list = result.asOk.value;

      expect(list.length, 1);
      expect(list.first.nombre, test_models.kTurno.nombre);
    });

    test('should get turno by id', () async {
      fakeApiClient.turnos.add(test_models.kTurnoApiModel);

      final result = await repository.getById(1);
      final turno = result.asOk.value;

      expect(turno.idTurno, 1);
      expect(turno.nombre, test_models.kTurno.nombre);
    });

    test('should cache turno after getById', () async {
      fakeApiClient.turnos.add(test_models.kTurnoApiModel);

      final first = await repository.getById(1);
      final second = await repository.getById(1);

      expect(first.asOk.value.nombre, second.asOk.value.nombre);
    });

    test('should create turno', () async {
      expect(fakeApiClient.turnos, isEmpty);

      final result = await repository.create(test_models.kTurno);

      expect(result, isA<Ok<Turno>>());
      expect(fakeApiClient.turnos.length, 1);
      expect(fakeApiClient.turnos.first.nombre, test_models.kTurno.nombre);
    });

test('should update turno', () async {
  fakeApiClient.turnos.add(test_models.kTurnoApiModel);

  final updated = test_models.kTurno.copyWith(nombre: 'Turno Tarde');
  final result = await repository.updateTurno(updated);
  expect(result, isA<Ok<void>>());
  expect(fakeApiClient.turnos.first.nombre, 'Turno Tarde');
});


    test('should delete turno', () async {
      fakeApiClient.turnos.add(test_models.kTurnoApiModel);

      final result = await repository.delete(1);

      expect(result, isA<Ok<void>>());
      expect(fakeApiClient.turnos, isEmpty);
    });

    test('should return error when turno not found', () async {
      final result = await repository.getById(999);

      expect(result, isA<Error<Turno>>());
    });
  });
}

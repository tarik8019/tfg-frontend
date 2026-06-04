import 'package:mijornada/data/repositories/asignacion_turno/asignacion_turno_repository.dart';
import 'package:mijornada/data/repositories/asignacion_turno/asignacion_turno_repository_remote.dart';
import 'package:mijornada/domain/models/asignacion_turno/dominio/asignacion_turno.dart';
import 'package:mijornada/utils/result.dart';
import 'package:flutter_test/flutter_test.dart';



import '../../../testing/fakes/services/fake_api_client.dart';
import '../../../testing/models/asignacionTurno.dart';
import '../../../testing/utils/result.dart';

void main() {
  group('AsignacionTurnoRepositoryRemote tests', () {
    late AsignacionTurnoRepository repository;
    late FakeApiClient fakeApiClient;

    setUp(() {
      fakeApiClient = FakeApiClient();
      repository = AsignacionTurnoRepositoryRemote(apiClient: fakeApiClient);
    });

    test('debería obtener la asignacion Turno por id', () async {
      // Añadimos primero la asignación al fakeApiClient
      fakeApiClient.asignacionesTurno.add(kAsignacionTurnoApiModel);

      final result = await repository.getById(kAsignacionTurno.idAsignacion!);
      final asignacionTurno = result.asOk.value;

      expect(asignacionTurno, kAsignacionTurno);
    });

    test('debería crear asignaciónTurno', () async {
      expect(fakeApiClient.asignacionesTurno, isEmpty);

      final result = await repository.create(kAsignacionTurno);
      expect(result, isA<Ok<AsignacionTurno>>());

      // Revisamos que se haya agregado al fakeApiClient
      expect(fakeApiClient.asignacionesTurno.first, kAsignacionTurnoApiModel);
    });

    test('debería obtener la lista de asignacionesTurno', () async {
      fakeApiClient.asignacionesTurno.add(kAsignacionTurnoApiModel);

      final result = await repository.getAll();
      final list = result.asOk.value;

      expect(list, [kAsignacionTurno]);
    });

    test('deberia eliminar asignacion turno', () async {
      // Añadimos primero la asignación al fakeApiClient
      fakeApiClient.asignacionesTurno.add(kAsignacionTurnoApiModel);
      expect(fakeApiClient.asignacionesTurno, isNotEmpty);

      final result = await repository.delete(kAsignacionTurno.idAsignacion!);
      expect(result, isA<Ok<void>>());

      // Comprobamos que se haya eliminado
      expect(fakeApiClient.asignacionesTurno, isEmpty);
    });
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/domain/use_cases/asignacion_turno/asignacion_turno_use_case.dart';

import '../../../testing/fakes/repositories/fake_asignacion_turno_repository.dart';
import '../../../testing/models/asignacionTurno.dart';
import '../../../testing/utils/result.dart';

void main() {
  group('AsignacionTurnoUseCase tests', () {
    late FakeAsignacionTurnoRepository repository;
    late AsignacionTurnoUseCase useCase;

    setUp(() {
      repository = FakeAsignacionTurnoRepository();
      useCase = AsignacionTurnoUseCase(repository: repository);
    });

    test('Create asignacion turno', () async {
      final result = await useCase.crearAsignacion(kAsignacionTurno);

      expect(result.asOk, true);
      expect(result.asOk.value, kAsignacionTurno);
    });

    test('Get all asignaciones', () async {
      await useCase.crearAsignacion(kAsignacionTurno);

      final result = await useCase.getAllAsignaciones();

      expect(result.asOk, true);
      expect(result.asOk.value.length, 1);
      expect(result.asOk.value.first, kAsignacionTurno);
    });

    test('Update asignacion turno', () async {
      await useCase.crearAsignacion(kAsignacionTurno);

      final updated = kAsignacionTurno.copyWith(idTurno: 5);

      final result = await useCase.editarAsignacion(updated);

      expect(result.asOk, true);
    });

    test('Delete asignacion turno', () async {
      await useCase.crearAsignacion(kAsignacionTurno);

      final result = await useCase.borrarAsignacion(1);

      expect(result.asOk, true);

      final getAll = await useCase.getAllAsignaciones();
      expect(getAll.asOk.value, isEmpty);
    });
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/domain/models/turno/dominio/turno.dart';
import 'package:mijornada/domain/use_cases/turno/turno_use_case.dart';
import 'package:mijornada/utils/result.dart';

import '../../../testing/fakes/repositories/fake_turno_repository.dart';
import '../../../testing/utils/result.dart';

void main() {
  group('TurnoUseCase Tests', () {
    late TurnoUseCase useCase;
    late FakeTurnoRepository fakeRepo;

    setUp(() {
      fakeRepo = FakeTurnoRepository();
      useCase = TurnoUseCase(turnoRepository: fakeRepo);
    });

    test('Get all turnos', () async {
      final result = await useCase.getAllTurnos();
      expect(result, isA<Ok<List<Turno>>>());
      expect(result.asOk.value.length, 2); // si el fake tiene 2 turnos iniciales
    });

    test('Create turno', () async {
      final newTurno = Turno(
        idTurno: null,
        nombre: 'Noche',
        horaInicio: '22:00',
        horaFin: '06:00',
         fecha: DateTime.now(),
          esNocturno: true,
      );

      final result = await useCase.crearTurno(newTurno);
      expect(result, isA<Ok<Turno>>());
      expect(result.asOk.value.idTurno, isNotNull);
      expect(result.asOk.value.nombre, 'Noche');
    });

    test('Edit turno', () async {
      final turno = (await fakeRepo.getById(1)).asOk.value;
      final editedTurno = turno.copyWith(nombre: 'Turno Modificado');

      final result = await useCase.editarTurno(editedTurno);
      expect(result, isA<Ok<void>>());

      final getResult = await fakeRepo.getById(1);
      expect(getResult.asOk.value.nombre, 'Turno Modificado');
    });

    test('Delete turno', () async {
      final result = await useCase.borrarTurno(1);
      expect(result, isA<Ok<void>>());

      final getResult = await fakeRepo.getById(1);
      expect(getResult, isA<Error<Turno>>());
    });

    test('Validation fails on invalid horaInicio', () async {
      final turno = Turno(
        idTurno: null,
        nombre: 'Manana',
        horaInicio: '25:00', // inválida
        horaFin: '06:00', 
        fecha: DateTime.now(), 
        esNocturno: false,
      );

      final result = await useCase.crearTurno(turno);
      expect(result, isA<Error<Turno>>());
      expect((result as Error).error.toString(), contains('inicio no es válida'));
    });

    test('Validation fails on invalid horaFin', () async {
      final turno = Turno(
        idTurno: null,
        nombre: 'Turno Invalido',
        horaInicio: '22:00',
        horaFin: '24:60', // inválida
        fecha: DateTime.now(),
        esNocturno: true, 
      );

      final result = await useCase.crearTurno(turno);
      expect(result, isA<Error<Turno>>());
      expect((result as Error).error.toString(), contains('fin no es válida'));
    });

    test('Validation fails when fin <= inicio', () async {
      final turno = Turno(
        idTurno: null,
        nombre: 'Turno Invalido',
        horaInicio: '10:00',
        horaFin: '09:00', // fin menor que inicio
        fecha: DateTime.now(),
         esNocturno: true, 
      );

      final result = await useCase.crearTurno(turno);
      expect(result, isA<Error<Turno>>());
      expect((result as Error).error.toString(), contains('fin debe ser mayor'));
    });
  });
}

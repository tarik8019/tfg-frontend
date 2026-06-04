import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/domain/models/sede/dominio/sede.dart';
import 'package:mijornada/domain/use_cases/sede/sede_use_case.dart';
import 'package:mijornada/utils/result.dart';

import '../../../testing/fakes/repositories/fake_sede_repository.dart';
import '../../../testing/utils/result.dart';

void main() {
  group('SedeUseCase Tests', () {
    late SedeUseCase useCase;
    late FakeSedeRepository fakeRepo;

    setUp(() {
      fakeRepo = FakeSedeRepository();
      useCase = SedeUseCase(repository: fakeRepo,);
    });

    test('Get all sedes', () async {
      final result = await useCase.getAllSedes();
      expect(result, isA<Ok<List<Sede>>>());
      expect(result.asOk.value.length, 2); // si el fake tiene 2 sedes iniciales
    });

    test('Create sede', () async {
      final newSede = Sede(
        idSede: null,
        nombre: 'Sede Central',
        latitud: 40.4168,
        longitud: -3.7038,
        radioGeofencing: 5,
      );

      final result = await useCase.crearSede(newSede);
      expect(result, isA<Ok<Sede>>());
      expect(result.asOk.value.idSede, isNotNull);
      expect(result.asOk.value.nombre, 'Sede Central');
    });

    test('Edit sede', () async {
      final sede = (await fakeRepo.getById(1)).asOk.value;
      final editedSede = sede.copyWith(nombre: 'Sede Modificada');

      final result = await useCase.editarSede(editedSede);
      expect(result, isA<Ok<void>>());

      final getResult = await fakeRepo.getById(1);
      expect(getResult.asOk.value.nombre, 'Sede Modificada');
    });

    test('Delete sede', () async {
      final result = await useCase.borrarSede(1);
      expect(result, isA<Ok<void>>());

      final getResult = await fakeRepo.getById(1);
      expect(getResult, isA<Error<Sede>>());
    });

    test('Validation fails on invalid latitud', () async {
      final sede = Sede(
        idSede: null,
        nombre: 'Sede Invalida',
        latitud: 100.0, // fuera de rango
        longitud: -3.7038,
        radioGeofencing: 5,
      );

      final result = await useCase.crearSede(sede);
      expect(result, isA<Error<Sede>>());
      expect((result as Error).error.toString(), contains('Latitud fuera de rango'));
    });

    test('Validation fails on invalid longitud', () async {
      final sede = Sede(
        idSede: null,
        nombre: 'Sede Invalida',
        latitud: 40.4168,
        longitud: -200.0, // fuera de rango
        radioGeofencing: 5,
      );

      final result = await useCase.crearSede(sede);
      expect(result, isA<Error<Sede>>());
      expect((result as Error).error.toString(), contains('Longitud fuera de rango'));
    });

    test('Validation fails on invalid radioGeofencing', () async {
      final sede = Sede(
        idSede: null,
        nombre: 'Sede Invalida',
        latitud: 40.4168,
        longitud: -3.7038,
        radioGeofencing: 20, // mayor a 10 km
      );

      final result = await useCase.crearSede(sede);
      expect(result, isA<Error<Sede>>());
      expect((result as Error).error.toString(), contains('El radio debe ser mayor que 0'));
    });
  });
}

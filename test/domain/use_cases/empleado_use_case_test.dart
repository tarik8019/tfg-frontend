import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/domain/models/empleado/dominio/empleado.dart';
import 'package:mijornada/domain/use_cases/empleado/empleado_use_case.dart';
import 'package:mijornada/utils/result.dart';

import '../../../testing/fakes/repositories/fake_empleado_repository.dart';
import '../../../testing/utils/result.dart';

void main() {
  group('EmpleadoUseCase Tests', () {
    late EmpleadoUseCase useCase;
    late FakeEmpleadoRepository fakeRepo;

    setUp(() {
      fakeRepo = FakeEmpleadoRepository();
      useCase = EmpleadoUseCase(empleadoRepository: fakeRepo);
    });

    test('Get all empleados', () async {
      final result = await useCase.getAll();
      expect(result, isA<Ok<List<Empleado>>>());
      expect(result.asOk.value.length, 2); // si el fake tiene 2 empleados iniciales
    });

    test('Update empleado', () async {
      final empleado = (await fakeRepo.getById(1)).asOk.value;
      final updatedEmpleado = empleado.copyWith(nombre: 'Nombre Modificado');

      final result = await useCase.update(updatedEmpleado);
      expect(result, isA<Ok<Empleado>>());
      expect(result.asOk.value.nombre, 'Nombre Modificado');
    });

    test('Update fails if idEmpleado is null', () async {
      final empleado = Empleado(
        idEmpleado: null,
        idUsuario: 1,
        idEmpresa: 1,
        idDepartamento: 1,
        codigoEmpleado: 'EMP001',
        nombre: 'Test',
        apellidos: 'Test Apellido',
        email: 'test@empresa.com',
        telefono: '600123456',
        direccion: 'Calle Falsa 123',
        ciudad: 'Madrid',
        provincia: 'Madrid',
        codigoPostal: '28001',
        puesto: 'Desarrollador',
        dniNie: '12345678A',
         fechaNacimiento: DateTime(2012),
          salarioBase: 1100,
           tipoContrato: 'indifinido',
            jornada: 'completa',
             fechaAlta: DateTime.now(),
              saldoVacaciones: 0,
               departamentoNombre: 'Venta',
                isActivo: true,
      );

      final result = await useCase.update(empleado);
      expect(result, isA<Error<Empleado>>());
      expect((result as Error).error.toString(), contains('Empleado sin id'));
    });

    test('Delete empleado', () async {
      final result = await useCase.delete(1);
      expect(result, isA<Ok<void>>());

      final getResult = await fakeRepo.getById(1);
      expect(getResult, isA<Error<Empleado>>());
    });

    test('Delete fails on invalid ID', () async {
      final result = await useCase.delete(0);
      expect(result, isA<Error<void>>());
      expect((result as Error).error.toString(), contains('ID inválido'));
    });

    test('Validation fails on empty codigoEmpleado', () async {
      final empleado = (await fakeRepo.getById(1)).asOk.value.copyWith(codigoEmpleado: '');
      final result = await useCase.update(empleado);
      expect(result, isA<Error<Empleado>>());
      expect((result as Error).error.toString(), contains('código de empleado'));
    });

    test('Validation fails on invalid email', () async {
      final empleado = (await fakeRepo.getById(1)).asOk.value.copyWith(email: 'invalid-email');
      final result = await useCase.update(empleado);
      expect(result, isA<Error<Empleado>>());
      expect((result as Error).error.toString(), contains('email'));
    });
  });
}

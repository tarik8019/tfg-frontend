import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/domain/models/departamento/dominio/departamento.dart';
import 'package:mijornada/domain/use_cases/departamento/departamento_use_case.dart';
import 'package:mijornada/utils/result.dart';

import '../../../testing/fakes/repositories/fake_departamento_repository.dart';
import '../../../testing/utils/result.dart';

void main() {
  group('DepartamentoUseCase Tests', () {
    late DepartamentoUseCase useCase;
    late FakeDepartamentoRepository fakeRepo;

    setUp(() {
      fakeRepo = FakeDepartamentoRepository();
      useCase = DepartamentoUseCase(departamentoRepository: fakeRepo);
    });

    test('Get all departamentos', () async {
      final result = await useCase.getAllDepartamentos();
      expect(result, isA<Ok<List<Departamento>>>());
      expect(result.asOk.value.length, 2);
    });

    test('Create departamento', () async {
      final newDep = Departamento(
        idDepartamento: null,
        idEmpresa: 1,
        nombre: 'Marketing',
        activo: true,
        codigoDepartamento: 'MKT001',
        descripcion: 'Departamento Marketing',
        emailContacto: 'marketing@empresa.com',
        telefonoContacto: '600123456',
      );

      final result = await useCase.crearDepartamento(newDep);
      expect(result, isA<Ok<Departamento>>());
      expect(result.asOk.value.idDepartamento, isNotNull);
      expect(result.asOk.value.nombre, 'Marketing');
    });

    test('Edit departamento', () async {
      final depToEdit = (await fakeRepo.getById(1)).asOk.value;
      final editedDep = depToEdit.copyWith(nombre: 'Recursos Humanos Modificado');

      final result = await useCase.editarDepartamento(editedDep);
      expect(result, isA<Ok<Departamento>>());
      expect(result.asOk.value.nombre, 'Recursos Humanos Modificado');
    });

    test('Delete departamento', () async {
      final result = await useCase.borrarDepartamento(1);
      expect(result, isA<Ok<void>>());

      final getResult = await fakeRepo.getById(1);
      expect(getResult, isA<Error<Departamento>>());
    });

    test('Validation fails on empty codigo', () async {
      final invalidDep = Departamento(
        idDepartamento: null,
        idEmpresa: 1,
        nombre: 'Finanzas',
        activo: true,
        codigoDepartamento: '',
        descripcion: 'Departamento Finanzas',
        emailContacto: 'finanzas@empresa.com',
        telefonoContacto: '600123456',
      );

      final result = await useCase.crearDepartamento(invalidDep);
      expect(result, isA<Error<Departamento>>());
      expect((result as Error).error.toString(), contains('código'));
    });

    test('Validation fails on invalid email', () async {
      final invalidDep = Departamento(
        idDepartamento: null,
        idEmpresa: 1,
        nombre: 'Finanzas',
        activo: true,
        codigoDepartamento: 'FIN001',
        descripcion: 'Departamento Finanzas',
        emailContacto: 'invalid-email',
        telefonoContacto: '600123456',
      );

      final result = await useCase.crearDepartamento(invalidDep);
      expect(result, isA<Error<Departamento>>());
      expect((result as Error).error.toString(), contains('email'));
    });
  });
}

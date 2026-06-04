import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/domain/models/empleado/dominio/empleado.dart';
import 'package:mijornada/domain/use_cases/empleado/empleado_create_use_case.dart';
import 'package:mijornada/data/repositories/departamento/departamento_repository.dart';
import 'package:mijornada/data/repositories/empresa/empresa_repository.dart';
import 'package:mijornada/data/repositories/empleado/empleado_repository.dart';
import 'package:mijornada/data/repositories/user/user_repository.dart';
import 'package:mijornada/utils/result.dart';

import '../../../testing/fakes/repositories/fake_departamento_repository.dart';
import '../../../testing/fakes/repositories/fake_empleado_repository.dart';
import '../../../testing/fakes/repositories/fake_empresa_repository.dart';
import '../../../testing/fakes/repositories/fake_user_repository.dart';
import '../../../testing/utils/result.dart';

void main() {
  group('EmpleadoCreateUseCase Tests', () {
    late EmpleadoCreateUseCase useCase;
    late UserRepository fakeUserRepo;
    late DepartamentoRepository fakeDepRepo;
    late EmpleadoRepository fakeEmpRepo;

    setUp(() {
      // Fakes directos dentro del setUp
      fakeUserRepo = FakeUserRepository();
      fakeDepRepo = FakeDepartamentoRepository();
      fakeEmpRepo = FakeEmpleadoRepository();

      useCase = EmpleadoCreateUseCase(
        empresaRepository: FakeEmpresaRepository(),
        userRepository: fakeUserRepo,
        departamentoRepository: fakeDepRepo,
        empleadoRepository: fakeEmpRepo,
      );
    });

    test('Create empleado successfully', () async {
      final empleado = Empleado(
        nombre: 'Juan',
        apellidos: 'Pérez',
        email: 'test@empresa.com',
        telefono: '123456789',
        direccion: 'Calle Falsa 123',
        ciudad: 'Madrid',
        provincia: 'Madrid',
        codigoPostal: '28001',
        puesto: 'Desarrollador',
        dniNie: '12345678A',
        fechaAlta: DateTime.now(),
        codigoEmpleado: 'EMP001',
        departamentoNombre: 'Informatica', 
        fechaNacimiento: DateTime(1988), 
        salarioBase: 1200,
         tipoContrato: 'definido', 
         jornada: 'compleata', 
         saldoVacaciones: 0,
          idUsuario: 1, 
          idEmpresa: 4, 
          idDepartamento: 2,
           isActivo: true,
      );

      final result = await useCase.create(empleado);

      expect(result, isA<Ok<Empleado>>());
      expect(result.asOk.value.idEmpleado, 1);
      expect(result.asOk.value.idUsuario, 1);
      expect(result.asOk.value.idDepartamento, 1);
      expect(result.asOk.value.idEmpresa, 1);
    });

    test('Fail creation if user does not exist', () async {
      final empleado = Empleado(
        nombre: 'Juan',
        apellidos: 'Pérez',
        email: 'noexiste@empresa.com',
        telefono: '123456789',
        direccion: 'Calle Falsa 123',
        ciudad: 'Madrid',
        provincia: 'Madrid',
        codigoPostal: '28001',
        puesto: 'Desarrollador',
        dniNie: '12345678A',
        fechaAlta: DateTime.now(),
        codigoEmpleado: 'EMP001',
        departamentoNombre: 'Venta',
         fechaNacimiento: DateTime(1999), 
         salarioBase: 1100,
          tipoContrato: 'indefinido',
           jornada: 'comleta',
            saldoVacaciones: 0, 
            idUsuario: 1,
             idEmpresa: 4, 
             idDepartamento: 2,
              isActivo: true,
      );

      final result = await useCase.create(empleado);

      expect(result, isA<Error<Empleado>>());
      expect((result as Error<Empleado>).error.toString(), contains('No se encontró usuario'));
    });

    test('Fail creation if departamento does not exist', () async {
      final empleado = Empleado(
        nombre: 'Juan',
        apellidos: 'Pérez',
        email: 'test@empresa.com',
        telefono: '123456789',
        direccion: 'Calle Falsa 123',
        ciudad: 'Madrid',
        provincia: 'Madrid',
        codigoPostal: '28001',
        puesto: 'Desarrollador',
        dniNie: '12345678A',
        fechaAlta: DateTime.now(),
        codigoEmpleado: 'EMP001',
        departamentoNombre: 'NoExiste',
         fechaNacimiento: DateTime(2002), 
         salarioBase: 1000, 
         tipoContrato: 'partial',
          jornada: 'completa', 
          saldoVacaciones: 0,
           idUsuario: 1, 
           idEmpresa: 4,
            idDepartamento: 1, 
            isActivo: true,
      );

      final result = await useCase.create(empleado);

      expect(result, isA<Error<Empleado>>());
      expect((result as Error<Empleado>).error.toString(), contains('Departamento no válido'));
    });

    test('Fail validation if email is invalid', () async {
      final empleado = Empleado(
        nombre: 'Juan',
        apellidos: 'Pérez',
        email: 'invalid-email',
        telefono: '123456789',
        direccion: 'Calle Falsa 123',
        ciudad: 'Madrid',
        provincia: 'Madrid',
        codigoPostal: '28001',
        puesto: 'Desarrollador',
        dniNie: '12345678A',
        fechaAlta: DateTime.now(),
        codigoEmpleado: 'EMP001',
        departamentoNombre: 'Informatica',
         fechaNacimiento: DateTime(2008),
          salarioBase: 950,
           tipoContrato: 'partial',
            jornada: 'completa',
             saldoVacaciones: 0,
              idUsuario: 1,
               idEmpresa: 4, 
               idDepartamento: 1, 
               isActivo: true,
      );

      final result = await useCase.create(empleado);

      expect(result, isA<Error<Empleado>>());
      expect((result as Error<Empleado>).error.toString(), contains('email no es válido'));
    });

    test('Fail validation if codigoEmpleado is empty', () async {
      final empleado = Empleado(
        nombre: 'Juan',
        apellidos: 'Pérez',
        email: 'test@empresa.com',
        telefono: '123456789',
        direccion: 'Calle Falsa 123',
        ciudad: 'Madrid',
        provincia: 'Madrid',
        codigoPostal: '28001',
        puesto: 'Desarrollador',
        dniNie: '12345678A',
        fechaAlta: DateTime.now(),
        codigoEmpleado: '',
        departamentoNombre: 'Informatica',
         fechaNacimiento: DateTime(2009),
          salarioBase: 1300,
           tipoContrato: 'indifinido',
            jornada: '',
             saldoVacaciones: 0,
              idUsuario: 1, 
              idEmpresa: 4, 
              idDepartamento: 2, 
              isActivo: true,
      );

      final result = await useCase.create(empleado);

      expect(result, isA<Error<Empleado>>());
      expect((result as Error<Empleado>).error.toString(), contains('código de empleado'));
    });
  });
}



  @override
  Future<Result<void>> delete(int id) => throw UnimplementedError();

  @override
  Future<Result<List<Empleado>>> getAll() => throw UnimplementedError();

  @override
  Future<Result<Empleado>> getById(int id) => throw UnimplementedError();

  @override
  Future<Result<Empleado>> updateEmpleado(Empleado empleado) => throw UnimplementedError();




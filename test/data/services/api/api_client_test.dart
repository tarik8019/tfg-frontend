import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/data/mappers/sede_mapper.dart';
import 'package:mijornada/data/mappers/turno_mapper.dart';
import 'package:mijornada/data/services/api/api_client.dart';
import 'package:mijornada/utils/result.dart';

import '../../../../testing/fakes/services/fake_api_client.dart';
import '../../../../testing/models/departamento.dart';
import '../../../../testing/models/empleado.dart';
import '../../../../testing/models/sede.dart';
import '../../../../testing/models/turno.dart';
import '../../../../testing/models/user.dart';
import '../../../../testing/utils/result.dart';



void main() {
  group('ApiClient', () {
    late FakeApiClient apiClient;

    setUp(() {
      apiClient = FakeApiClient();
    });

    // ===================== DEPARTAMENTOS =====================

    test('should get departamentos', () async {
      final result = await apiClient.getDepartamentos();

      expect(result.asOk.value, isNotEmpty);
      expect(result.asOk.value.first.idDepartamento, isNotNull);
    });

    test('should create departamento', () async {
      final result =
          await apiClient.createDepartamento(kDepartamentoCreateApiModel);

      expect(result.asOk.value.idDepartamento, isNotNull);
      expect(apiClient.departamentos.length, 2);
    });

    // ===================== EMPLEADOS =====================

    test('should get empleados', () async {
      final result = await apiClient.getEmpleados();

      expect(result.asOk.value, isNotEmpty);
    });

    test('should create empleado', () async {
      final result =
          await apiClient.createEmpleado(kEmpleadoCreateApiModel);

      expect(result.asOk.value.idEmpleado, isNotNull);
      expect(apiClient.empleados.length, 2);
    });

    // ===================== TURNOS =====================

    test('should get turnos', () async {
      final result = await apiClient.getTurnos();

      expect(result.asOk.value, isNotEmpty);
    });

    test('should create turno', () async {
      final result = await apiClient.createTurno(kTurnoCreateApiModel);

      expect(result.asOk.value.idTurno, isNotNull);
      expect(apiClient.turnos.length, 2);
    });

    test('should update turno', () async {
      final updated =
          kTurno.copyWith(nombre: 'Turno Tarde');

      final result = await apiClient.updateTurno(
        updated.toUpdateApiModel(),
      );

      expect(result, isA<Ok<void>>());
      expect(apiClient.turnos.first.nombre, 'Turno Tarde');
    });

    test('should delete turno', () async {
      final id = apiClient.turnos.first.idTurno!;

      final result = await apiClient.deleteTurno(id);

      expect(result, isA<Ok<void>>());
    });

    // ===================== SEDES =====================

    test('should get sedes', () async {
      final result = await apiClient.getSedes();

      expect(result.asOk.value, isNotEmpty);
    });

    test('should get sede by id', () async {
      final sede = apiClient.sedes.first;

      final result = await apiClient.getSedeById(sede.idSede!);

      expect(result.asOk.value.idSede, sede.idSede);
    });

    test('should create sede', () async {
      final result = await apiClient.createSede(kSedeCreateApiModel);

      expect(result.asOk.value.idSede, isNotNull);
      expect(apiClient.sedes.length, 2);
    });

    test('should update sede', () async {
      final updated =
          kSede.copyWith(nombre: 'Nueva Sede');

      final result = await apiClient.updateSede(
        updated.toUpdateApiModel(),
      );

      expect(result, isA<Ok<void>>());
      expect(apiClient.sedes.first.nombre, 'Nueva Sede');
    });

    test('should delete sede', () async {
      final id = apiClient.sedes.first.idSede!;

      final result = await apiClient.deleteSede(id);

      expect(result, isA<Ok<void>>());
      expect(apiClient.sedes.isEmpty, true);
    });

    // ===================== USUARIOS =====================

    test('should get usuarios', () async {
      final result = await apiClient.getUsuarios();

      expect(result.asOk.value, isNotEmpty);
    });

    test('should create usuario', () async {
      final result =
          await apiClient.createUsuario(kUserCreateApiModel);

      expect(result.asOk.value.id, isNotNull);
      expect(apiClient.usuarios.length, 2);
    });

    test('should set usuario activo', () async {
      final user = apiClient.usuarios.first;

      final result =
          await apiClient.setUsuarioActivo(user.id!, false);

      expect(result, isA<Ok<void>>());
      expect(apiClient.usuarios.first.isActivo, false);
    });
  });
}

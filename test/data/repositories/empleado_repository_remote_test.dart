import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/data/repositories/empleado/empleado_repository.dart';
import 'package:mijornada/data/repositories/empleado/empleado_repository_remote.dart';
import 'package:mijornada/domain/models/empleado/dominio/empleado.dart';
import 'package:mijornada/utils/result.dart';

import '../../../testing/fakes/services/fake_api_client.dart';
import '../../../testing/models/empleado.dart';
import '../../../testing/utils/result.dart';

void main() {
  group('EmpleadoRepositoryRemote', () {
    late EmpleadoRepository repository;
    late FakeApiClient fakeApiClient;

    setUp(() {
      fakeApiClient = FakeApiClient();
      repository = EmpleadoRepositoryRemote(apiClient: fakeApiClient);
    });

    test('getById returns empleado when exists', () async {
      // Arrange
      await repository.create(kEmpleado);

      // Act
      final result = await repository.getById(kEmpleado.idEmpleado!);
      final empleado = result.asOk.value;

      // Assert
      expect(empleado, isNotNull);
      expect(empleado, kEmpleado);
    });

    test('create stores empleado in api as api model', () async {
      // Arrange
      expect(fakeApiClient.empleados, isEmpty);

      // Act
      final result = await repository.create(kEmpleado);

      // Assert
      expect(result, isA<Ok<Empleado>>());
      expect(fakeApiClient.empleados, [kEmpleadoApiModel]);
    });

    test('update modifies empleado data', () async {
      // Arrange
      await repository.create(kEmpleado);
      final updatedEmpleado = kEmpleado.copyWith(nombre: 'NuevoNombre');

      // Act
      final result = await repository.update(updatedEmpleado);

      // Assert
      expect(result, isA<Ok<Empleado>>());
      expect(
        fakeApiClient.empleados.first,
        kEmpleadoApiModel.copyWith(nombre: 'NuevoNombre'),
      );
    });

    test('delete removes empleado from api', () async {
      // Arrange
      await repository.create(kEmpleado);
      expect(fakeApiClient.empleados, isNotEmpty);

      // Act
      final result = await repository.delete(kEmpleado.idEmpleado!);

      // Assert
      expect(result, isA<Ok<void>>());
      expect(fakeApiClient.empleados, isEmpty);
    });

    test('setActivo updates empleado active status', () async {
      // Arrange
      await repository.create(kEmpleado);

      // Act
      final result =
          await repository.setActivo(kEmpleado.idEmpleado!, false);

      // Assert
      expect(result, isA<Ok<Empleado>>());
      expect(fakeApiClient.empleados.first.isActivo, false);
    });
  });
}

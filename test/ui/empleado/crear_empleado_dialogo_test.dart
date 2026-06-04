import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/ui/empleado/empleado_admin/view_models/empleado_dialogo_viewmodel.dart';
import 'package:mijornada/ui/empleado/empleado_admin/widgets/crear_empleado_dialogo.dart';
import 'package:mijornada/domain/use_cases/empleado/empleado_create_use_case.dart';
import 'package:mijornada/domain/use_cases/empleado/empleado_use_case.dart';
import '../../../testing/app.dart';
import '../../../testing/fakes/repositories/fake_empresa_repository.dart';
import '../../../testing/fakes/repositories/fake_user_repository.dart';
import '../../../testing/fakes/repositories/fake_departamento_repository.dart';
import '../../../testing/fakes/repositories/fake_empleado_repository.dart';

void main() {
  group('CrearEmpleadoDialog Widget Tests', () {
    late EmpleadoDialogoViewModel viewModel;
    late FakeEmpleadoRepository empleadoRepository;
    late FakeUserRepository userRepository;
    late FakeEmpresaRepository empresaRepository;
    late FakeDepartamentoRepository departamentoRepository;
    late EmpleadoCreateUseCase empleadoCreateUseCase;
    late EmpleadoUseCase empleadoUseCase;

    setUp(() {
      empleadoRepository = FakeEmpleadoRepository();
      userRepository = FakeUserRepository();
      departamentoRepository = FakeDepartamentoRepository();
      empresaRepository = FakeEmpresaRepository();

      empleadoCreateUseCase = EmpleadoCreateUseCase(
      empleadoRepository: empleadoRepository,
      empresaRepository: empresaRepository,
      userRepository: userRepository,
      departamentoRepository: departamentoRepository,
      );

      empleadoUseCase = EmpleadoUseCase(
        empleadoRepository: empleadoRepository,
      );

      viewModel = EmpleadoDialogoViewModel(
        empleadoCreateUseCase: empleadoCreateUseCase,
        empleadoRepository: empleadoRepository,
        userRepository: userRepository,
        empleadoUseCase: empleadoUseCase,
        departamentoRepository: departamentoRepository,
      );
    });

    Future<void> loadDialog(WidgetTester tester) async {
      await testApp(
        tester,
        CrearEmpleadoDialog(
          viewModel: viewModel,
        ),
      );

      await tester.pumpAndSettle();
    }


    testWidgets('should create empleado successfully', (WidgetTester tester) async {
      await loadDialog(tester);

      // Llenar el formulario
      await tester.enterText(find.bySemanticsLabel('Nombre'), 'Juan');
      await tester.enterText(find.bySemanticsLabel('Apellidos'), 'Perez');
      await tester.enterText(find.bySemanticsLabel('Email'), 'juan@test.com');
      await tester.enterText(find.bySemanticsLabel('Teléfono'), '600000000');
      await tester.enterText(find.bySemanticsLabel('DNI / NIE'), 'X12345678');
      await tester.enterText(find.bySemanticsLabel('Código empleado'), 'EMP001');
      await tester.enterText(find.bySemanticsLabel('Salario'), '2000');
      await tester.tap(find.text('Departamento'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Ventas').last);
      await tester.pumpAndSettle();

      // Seleccionar fecha de nacimiento
      final fechaNacimientoField = find.textContaining('Fecha nacimiento');
      await tester.tap(fechaNacimientoField);
      await tester.pumpAndSettle();
      await tester.tap(find.text('15')); // selecciona un día del calendario
      await tester.tap(find.text('OK'));
      await tester.pumpAndSettle();

      // Guardar
      await tester.tap(find.text('Guardar'));
      await tester.pumpAndSettle();

      // Comprobar que se creó un empleado en el repositorio fake
      expect(empleadoRepository.empleados.length, 1);
      final created = empleadoRepository.empleados.last;
      expect(created.nombre, 'Juan');
      expect(created.departamentoNombre, 'Ventas');

      // Comprobar que se muestra SuccessIndicator
      expect(find.text('Empleado creado correctamente'), findsOneWidget);
    });
  });
}

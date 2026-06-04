import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/ui/empleado/empleado_admin/view_models/usuario_dialogo_viewmodel.dart';
import 'package:mijornada/ui/empleado/empleado_admin/widgets/crear_usuario_dialogo.dart';
import 'package:provider/provider.dart';
import 'package:mijornada/domain/use_cases/user/user_create_use_case.dart';

import '../../../testing/app.dart';
import '../../../testing/fakes/repositories/fake_config_repository.dart';
import '../../../testing/fakes/repositories/fake_user_repository.dart';


void main() {
  group('CrearUsuarioEmpleadoDialog Widget Tests', () {
    late UsuarioDialogoViewModel viewModel;
    late FakeUserRepository userRepository;
    late UserCreateUseCase userCreateUseCase;
    late FakeConfigRepository configRepository;

    setUp(() {
      userRepository = FakeUserRepository();
      userCreateUseCase = UserCreateUseCase(userRepository: userRepository);
      configRepository = FakeConfigRepository();

      viewModel = UsuarioDialogoViewModel(
        userConfigRepository: configRepository,
        userCreateUseCase: userCreateUseCase,
        userRepository: userRepository,
      );
    });

Future<void> loadDialog(WidgetTester tester) async {
  await testApp(
    tester,
    ChangeNotifierProvider.value(
      value: viewModel,
      child: Builder(
        builder: (context) => CrearUsuarioEmpleadoDialog(
          viewModel: viewModel,
        ),
      ),
    ),
  );

  await tester.pumpAndSettle();
}

    testWidgets('should load dialog and show form fields', (WidgetTester tester) async {
      await loadDialog(tester);

      expect(find.text('Nombre'), findsOneWidget);
      expect(find.text('Apellidos'), findsOneWidget);
      expect(find.text('Email'), findsOneWidget);
      expect(find.text('Rol'), findsOneWidget);
      expect(find.text('Guardar'), findsOneWidget);
    });

    testWidgets('should validate empty form', (WidgetTester tester) async {
      await loadDialog(tester);

      await tester.tap(find.text('Guardar'));
      await tester.pump();

      // Debe mostrar errores de campos obligatorios
      expect(find.text('Campo obligatorio'), findsNWidgets(3));
    });

    testWidgets('should create user successfully', (WidgetTester tester) async {
      await loadDialog(tester);

      // Rellenar formulario
      await tester.enterText(find.byType(TextFormField).at(0), 'Juan');
      await tester.enterText(find.byType(TextFormField).at(1), 'Perez');
      await tester.enterText(find.byType(TextFormField).at(2), 'juan@test.com');

      await tester.tap(find.text('Guardar'));
      await tester.pumpAndSettle();

      // Verificar que el usuario se creó en el repositorio
      final created = userRepository.users.last;
      expect(created.nombre, 'Juan');
      expect(created.email, 'juan@test.com');

      // Debe mostrar mensaje de éxito
      expect(find.text('Usuario creado con éxito'), findsOneWidget);
    });

    testWidgets('should show error if creation fails', (WidgetTester tester) async {
      await loadDialog(tester);

      // Introducir email inválido para que falle
      await tester.enterText(find.byType(TextFormField).at(0), 'Juan');
      await tester.enterText(find.byType(TextFormField).at(1), 'Perez');
      await tester.enterText(find.byType(TextFormField).at(2), 'email-invalido');

      await tester.tap(find.text('Guardar'));
      await tester.pumpAndSettle();

      // Debe mostrar mensaje de error
      expect(find.textContaining('Exception'), findsOneWidget);
    });
  });
}

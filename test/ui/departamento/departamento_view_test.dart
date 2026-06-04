import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/ui/departamento/departamento_admin/view/departamento_view.dart';
import 'package:mijornada/ui/departamento/departamento_admin/view_models/departamento_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:mijornada/domain/use_cases/departamento/departamento_use_case.dart';
import 'package:mijornada/data/repositories/auth/auth_repository.dart';

import '../../../testing/app.dart';
import '../../../testing/fakes/repositories/fake_departamento_repository.dart';
import '../../../testing/fakes/repositories/fake_auth_repository.dart';

void main() {
  group('DepartamentoView Widget Tests', () {
    late DepartamentoViewModel viewModel;
    late FakeDepartamentoRepository departamentoRepository;
    late FakeAuthRepository authRepository;
    late DepartamentoUseCase departamentoUseCase;

    setUp(() {
      // Fakes
      departamentoRepository = FakeDepartamentoRepository();
      authRepository = FakeAuthRepository();

      // Usuario autenticado necesario para crear departamento
      //authRepository.currentUser = FakeUser(idEmpresa: 1, idUsuario: 1);
      authRepository.setUserRole('Administrador');

      // UseCase
      departamentoUseCase = DepartamentoUseCase(
        departamentoRepository: departamentoRepository,
      );

      // ViewModel
      viewModel = DepartamentoViewModel(
        departamentoUseCase: departamentoUseCase,
        authRepository: authRepository,
      );
    });

    Future<void> loadView(WidgetTester tester) async {
      await testApp(
        tester,
        DepartamentoView(
          viewModel: viewModel,
        ),
      );

      await tester.pumpAndSettle();
    }

    testWidgets('should create departamento successfully', (WidgetTester tester) async {
      await loadView(tester);

      // Abrir diálogo de crear departamento
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();

      // Seleccionar nombre del departamento
      await tester.tap(find.byType(DropdownButtonFormField<String>));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Ventas').last);
      await tester.pumpAndSettle();

      // Llenar campos
      await tester.enterText(find.bySemanticsLabel('Código'), 'D001');
      await tester.enterText(find.bySemanticsLabel('Descripción'), 'Departamento de ventas');
      await tester.enterText(find.bySemanticsLabel('Email de contacto'), 'ventas@test.com');
      await tester.enterText(find.bySemanticsLabel('Teléfono de contacto'), '600000000');

      // Guardar
      await tester.tap(find.text('Guardar'));
      await tester.pumpAndSettle();

      // Verificar que se creó el departamento
      expect(departamentoRepository.departamentos.length, 1);
      final created = departamentoRepository.departamentos.last;
      expect(created.nombre, 'Ventas');
      expect(created.codigoDepartamento, 'D001');

      // Comprobar que se muestra SuccessIndicator
      expect(find.text('Departamento guardado correctamente'), findsOneWidget);
    });
  });
}

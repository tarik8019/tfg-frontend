import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/ui/sede/sedeAdmin/view_models/sede_viewmodel.dart';
import 'package:mijornada/ui/sede/sedeAdmin/widgets/sede_view.dart';
import 'package:provider/provider.dart';
import '../../../testing/app.dart';
import '../../../testing/fakes/repositories/fake_sede_repository.dart';
import 'package:mijornada/domain/use_cases/sede/sede_use_case.dart';

void main() {
  group('SedeAdminView widget tests', () {
    late SedeAdminViewModel viewModel;
    late FakeSedeRepository fakeSedeRepo;

    setUp(() {
      fakeSedeRepo = FakeSedeRepository();
      viewModel = SedeAdminViewModel(
        sedeUseCase: SedeUseCase(repository: fakeSedeRepo, ),
      );
    });

    Future<void> loadScreen(WidgetTester tester) async {
      await testApp(
        tester,
        SedeAdminView(viewModel: viewModel),
      );

      await tester.pumpAndSettle();
    }

    testWidgets('should load screen', (WidgetTester tester) async {
      await loadScreen(tester);
      expect(find.byType(SedeAdminView), findsOneWidget);
      expect(find.text('Gestión de Sedes'), findsOneWidget);
    });

    testWidgets('should display initial sedes', (WidgetTester tester) async {
      await loadScreen(tester);

      // Revisar que las sedes iniciales del FakeSedeRepository se muestran
      expect(find.text('Sede Central'), findsOneWidget);
      expect(find.text('Sucursal Norte'), findsOneWidget);
    });

    testWidgets('should create a new sede', (WidgetTester tester) async {
      await loadScreen(tester);

      // Abrir diálogo de crear
      await tester.tap(find.text('Crear'));
      await tester.pumpAndSettle();

      // Rellenar formulario
      await tester.enterText(find.byType(TextField).at(0), 'Nueva Sede');
      await tester.enterText(find.byType(TextField).at(1), 'Calle Falsa 123');
      await tester.enterText(find.byType(TextField).at(2), '10.0');
      await tester.enterText(find.byType(TextField).at(3), '20.0');
      await tester.enterText(find.byType(TextField).at(4), '150');

      // Pulsar guardar
      await tester.tap(find.text('Guardar'));
      await tester.pump(); // inicia loading
      await tester.pump(const Duration(seconds: 1)); // espera al Future
      await tester.pumpAndSettle(); // espera animaciones

      // Revisar que la nueva sede aparece
      expect(find.text('Nueva Sede'), findsOneWidget);
    });

    testWidgets('should delete a sede', (WidgetTester tester) async {
      await loadScreen(tester);

      // Abrir confirmación de borrar Sede Central
      await tester.tap(find.widgetWithIcon(IconButton, Icons.delete).first);
      await tester.pumpAndSettle();

      // Confirmar borrado
      await tester.tap(find.text('Eliminar'));
      await tester.pump();
      await tester.pump(const Duration(seconds: 1));
      await tester.pumpAndSettle();

      // Revisar que Sede Central desaparece
      expect(find.text('Sede Central'), findsNothing);
    });
  });
}

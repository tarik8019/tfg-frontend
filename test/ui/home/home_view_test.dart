import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/ui/home/view_models/home_viewmodel.dart';
import 'package:mijornada/ui/home/widgets/home_view.dart';

import '../../../testing/app.dart';
import '../../../testing/fakes/repositories/fake_auth_repository.dart';
import '../../../testing/fakes/repositories/fake_user_repository.dart';
import '../../../testing/mocks.dart';

void main() {
  group('HomeView widget tests', () {
    late HomeViewModel viewModel;
    late FakeAuthRepository authRepository;
    late FakeUserRepository userRepository;
    late MockGoRouter mockGoRouter;

    setUp(() {
      authRepository = FakeAuthRepository();
      userRepository = FakeUserRepository();
       mockGoRouter = MockGoRouter();

      viewModel = HomeViewModel(
        authRepository: authRepository,
        userRepository: userRepository,
      );
    });

    Future<void> loadHomeView(WidgetTester tester) async {
      await testApp(
        tester,
        HomeView(viewModel: viewModel),
        goRouter: mockGoRouter, 
      );
    }

    testWidgets('should load HomeView', (WidgetTester tester) async {
      await loadHomeView(tester);

      expect(find.byType(HomeView), findsOneWidget);
      expect(find.text('Accesos rápidos'), findsOneWidget);
    });

    testWidgets('should show admin quick actions', (WidgetTester tester) async {
      authRepository.setUserRole('Administrador');
      await loadHomeView(tester);

      expect(find.text('Gestionar empleados'), findsOneWidget);
      expect(find.text('Gestión de turnos'), findsOneWidget);
    });

    testWidgets('should show empleado quick actions', (WidgetTester tester) async {
      authRepository.setUserRole('Empleado');
      await loadHomeView(tester);

      expect(find.text('Mis turnos'), findsOneWidget);
      expect(find.text('Fichar'), findsOneWidget);
    });

    testWidgets('should logout user', (WidgetTester tester) async {
      await loadHomeView(tester);

      await viewModel.logout();
      expect(authRepository.isAuthenticated, false); // propiedad de tu fake
    });
  });
}

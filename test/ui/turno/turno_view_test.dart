import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/domain/use_cases/asignacion_turno/asignacion_turno_use_case.dart';
import 'package:mijornada/domain/use_cases/empleado/empleado_use_case.dart';
import 'package:mijornada/domain/use_cases/sede/sede_use_case.dart';
import 'package:mijornada/domain/use_cases/turno/turno_use_case.dart';
import 'package:mijornada/ui/turno/turnoAdmin/view_models/asignacion_turno_viewmodel.dart';
import 'package:mijornada/ui/turno/turnoAdmin/view_models/turno_admin_viewmodel.dart';
import 'package:mijornada/ui/turno/turnoAdmin/views/turno_admin_view.dart';

import '../../../testing/app.dart';
import '../../../testing/fakes/repositories/fake_auth_repository.dart';
import '../../../testing/fakes/repositories/fake_sede_repository.dart';
import '../../../testing/fakes/repositories/fake_turno_repository.dart';
import '../../../testing/fakes/repositories/fake_empleado_repository.dart';
import '../../../testing/fakes/repositories/fake_asignacion_turno_repository.dart';

void main() {
  group('TurnoAdminView widget tests', () {
    late TurnoAdminViewModel turnoVM;
    late AsignacionTurnoViewModel asignacionVM;

    setUp(() {
      // UseCase de Turnos con Fake Repository
      final turnoUseCase = TurnoUseCase(turnoRepository: FakeTurnoRepository());
      final sedeUseCase = SedeUseCase(repository: FakeSedeRepository());
      final authRepository = FakeAuthRepository();

      turnoVM = TurnoAdminViewModel(
        turnoUseCase: turnoUseCase,
        sedeUseCase: sedeUseCase,
        authRepository: authRepository,
      );

      // UseCases para Asignaciones
      final asignacionUseCase = AsignacionTurnoUseCase(
        repository: FakeAsignacionTurnoRepository(),
      );
      final empleadoUseCase = EmpleadoUseCase(empleadoRepository: FakeEmpleadoRepository());
      // TurnoUseCase ya lo tenemos
      asignacionVM = AsignacionTurnoViewModel(
        asignacionUseCase: asignacionUseCase,
        empleadoUseCase: empleadoUseCase,
        turnoUseCase: turnoUseCase,
      );
    });

    Future<void> loadScreen(WidgetTester tester) async {
      await testApp(
        tester,
        TurnoAdminView(
          turnoVM: turnoVM,
          asignacionVM: asignacionVM,
        ),
      );

      await tester.pumpAndSettle();
    }


    testWidgets('should load TurnoAdminView', (tester) async {
      await loadScreen(tester);

      expect(find.text('Gestión de Turnos'), findsOneWidget);
      expect(find.text('Turnos'), findsOneWidget);
      expect(find.text('Asignaciones de Turno'), findsOneWidget);
    });

    testWidgets('should display list of turnos', (tester) async {
      await loadScreen(tester);

      // El fake repo puede tener nombres iniciales, ejemplo "Mañana"
      expect(find.text('Mañana'), findsOneWidget);
    });

    testWidgets('should display list of asignaciones', (tester) async {
      await loadScreen(tester);

      // El fake repo de asignaciones inicializa al menos una asignación
      expect(find.text('Asignación #1'), findsOneWidget);
    });
  });
}

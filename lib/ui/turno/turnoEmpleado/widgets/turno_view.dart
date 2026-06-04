import 'package:flutter/material.dart';
import 'package:mijornada/ui/turno/turnoEmpleado/view_models/turno_viewmodel.dart';
import 'package:mijornada/ui/turno/turnoEmpleado/widgets/turno_card.dart';
import 'package:provider/provider.dart';
import '../../../core/ui/error_indicator.dart';
import '../../../core/ui/success_indicator.dart';

class TurnoEmpleadoView extends StatefulWidget {
  const TurnoEmpleadoView({
    super.key,
    required this.viewModel,
  });

  final TurnoEmpleadoViewModel viewModel;

  @override
  State<TurnoEmpleadoView> createState() => _TurnoEmpleadoViewState();
}

class _TurnoEmpleadoViewState extends State<TurnoEmpleadoView> {

@override
void initState() {
  super.initState();

  WidgetsBinding.instance.addPostFrameCallback((_) {
    widget.viewModel.loadMisTurnos.execute();
  });

}

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: widget.viewModel,
      child: Consumer<TurnoEmpleadoViewModel>(
        builder: (_, vm, __) {
          return Scaffold(
            appBar: AppBar(title: const Text('Mis Turnos')),
            body: ListenableBuilder(
              listenable: Listenable.merge([
                vm,
                vm.loadMisTurnos,
                vm.confirmarTurno,
                vm.cancelarTurno,
              ]),
                builder: (_, __) {
                  //CARGANDO TURNOS
                  if (vm.loadMisTurnos.running) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  //ERROR AL CARGAR TURNOS
                  if (vm.loadMisTurnos.error) {
                    return ErrorIndicator(
                      title: vm.loadMisTurnos.result?.error.toString() ??
                          'Error al cargar los turnos',
                      label: 'Reintentar',
                      onPressed: vm.loadMisTurnos.execute,
                    );
                  }

                  //ERROR AL CONFIRMAR O CANCELAR
                  if (vm.confirmarTurno.error || vm.cancelarTurno.error) {
                    final error = vm.confirmarTurno.error
                        ? vm.confirmarTurno.result?.error
                        : vm.cancelarTurno.result?.error;

                    return ErrorIndicator(
                      title: error?.toString() ?? 'Error en la operación',
                      label: 'Volver',
                      onPressed: () {
                        vm.confirmarTurno.clearResult();
                        vm.cancelarTurno.clearResult();
                      },
                    );
                  }

                  // ÉXITO CONFIRMAR / CANCELAR
                  if (vm.confirmarTurno.completed || vm.cancelarTurno.completed) {
                    return SuccessIndicator(
                      title: vm.confirmarTurno.completed
                          ? 'Turno confirmado correctamente'
                          : 'Turno cancelado correctamente',
                      label: 'Continuar',
                      onPressed: () {
                        vm.confirmarTurno.clearResult();
                        vm.cancelarTurno.clearResult();
                        vm.loadMisTurnos.execute(); // refrescar lista
                      },
                    );
                  }

                  // SIN TURNOS
                  if (vm.misTurnos.isEmpty) {
                    return const Center(
                      child: Text('No tienes turnos asignados'),
                    );
                  }

                  // LISTA DE TURNOS
                  return ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: vm.misTurnos.length,
                    itemBuilder: (_, i) => TurnoCard(
                      asignacion: vm.misTurnos[i],
                      viewModel: vm,
                    ),
                  );
                }

            ),
          );
        },
      ),
    );
  }
}

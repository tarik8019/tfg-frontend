import 'package:flutter/material.dart';
import 'package:mijornada/ui/fichaje/fichajeEmpleado/widgets/fichaje_button.dart';
import 'package:provider/provider.dart';

import '../../../core/ui/error_indicator.dart';
import '../../../core/ui/success_indicator.dart';
import '../view_models/fichaje_viewmodel.dart';

class FichajeEmpleadoView extends StatelessWidget {
  const FichajeEmpleadoView({
    super.key,
    required this.viewModel,
  });

  final FichajeEmpleadoViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: viewModel,
      child: Consumer<FichajeEmpleadoViewModel>(
        builder: (_, vm, __) {
          return Scaffold(
            appBar: AppBar(title: const Text('Fichaje')),
            body: ListenableBuilder(
              listenable: Listenable.merge([
                vm.ficharEntrada,
                vm.ficharSalida,
                vm.ficharPausaInicio,
                vm.ficharPausaFin,
              ]),
              builder: (_, __) {
                final running = vm.ficharEntrada.running ||
                    vm.ficharSalida.running ||
                    vm.ficharPausaInicio.running ||
                    vm.ficharPausaFin.running;

                final completed = vm.ficharEntrada.completed ||
                    vm.ficharSalida.completed ||
                    vm.ficharPausaInicio.completed ||
                    vm.ficharPausaFin.completed;

                final errorCommand = [
                  vm.ficharEntrada,
                  vm.ficharSalida,
                  vm.ficharPausaInicio,
                  vm.ficharPausaFin,
                ].firstWhere(
                  (c) => c.error,
                  orElse: () => vm.ficharEntrada,
                );

                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (running)
                        const CircularProgressIndicator(),

                      if (completed)
                        SuccessIndicator(
                          title: 'Fichaje registrado correctamente',
                          label: 'Aceptar',
                          onPressed: () {
                            vm.ficharEntrada.clearResult();
                            vm.ficharSalida.clearResult();
                            vm.ficharPausaInicio.clearResult();
                            vm.ficharPausaFin.clearResult();
                          },
                        ),

                      if (errorCommand.error)
                        ErrorIndicator(
                          title: errorCommand.result!.error.toString(),
                          label: 'Cerrar',
                          onPressed: () {
                            errorCommand.clearResult();
                          },
                        ),

                      if (!running && !completed && !errorCommand.error)
                        _buttons(vm),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

Widget _buttons(FichajeEmpleadoViewModel vm) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      FichajeButton(
        icon: Icons.login,
        text: 'ENTRADA',
        color: Colors.green,
        onPressed: vm.ficharEntrada.execute,
      ),
      const SizedBox(height: 20),

      FichajeButton(
        icon: Icons.logout,
        text: 'SALIDA',
        color: Colors.red,
        onPressed: vm.ficharSalida.execute,
      ),
      const SizedBox(height: 20),

     FichajeButton(
      icon: Icons.free_breakfast, // inicio pausa
      text: 'INICIO PAUSA',
      color: Colors.orange,
      onPressed: vm.ficharPausaInicio.execute,
    ),
    const SizedBox(height: 20),

    FichajeButton(
      icon: Icons.play_circle_fill, // fin pausa (reanudar)
      text: 'FIN PAUSA',
      color: Colors.blue,
      onPressed: vm.ficharPausaFin.execute,
    ),
    ],
  );
}

}

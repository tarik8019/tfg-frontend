import 'package:flutter/material.dart';
import '../view_models/activacion_cuenta_viewmodel.dart';

class ActivacionCuentaView extends StatefulWidget {
  const ActivacionCuentaView({super.key, required this.viewModel});

  final ActivacionCuentaViewModel viewModel;

  @override
  State<ActivacionCuentaView> createState() => _ActivacionCuentaViewState();
}

class _ActivacionCuentaViewState extends State<ActivacionCuentaView> {
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    widget.viewModel.activateAccount.addListener(_listener);
  }

  @override
  void dispose() {
    widget.viewModel.activateAccount.removeListener(_listener);
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final vm = widget.viewModel;

    return Scaffold(
      appBar: AppBar(title: const Text('Activar cuenta')),
      body: ListenableBuilder(
        listenable: Listenable.merge([
          vm,
          vm.activateAccount,
        ]),
        builder: (context, _) {
          final cmd = vm.activateAccount;

          if (cmd.running) {
            return const Center(child: CircularProgressIndicator());
          }

          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email: ${vm.email}',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),

                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  onChanged: vm.setPassword,
                  decoration: const InputDecoration(
                    labelText: 'Contraseña',
                    hintText: 'Al menos 8 caracteres, mayúscula y número',
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: vm.canSubmit
                        ? cmd.execute
                        : null,
                    child: const Text('Activar cuenta'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _listener() {
    final cmd = widget.viewModel.activateAccount;

    if (cmd.error) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:
                Text(cmd.result?.error.toString() ?? 'Error desconocido'),
          ),
        );
      });
      cmd.clearResult();
    }

    if (cmd.completed) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Cuenta activada correctamente'),
          ),
        );
      });
      cmd.clearResult();
    }
  }
}

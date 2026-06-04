import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../data/repositories/auth/auth_repository.dart';
import '../../../../utils/result.dart';
import '../../../core/localization/applocalization.dart';
import '../../../core/ui/error_indicator.dart';
import '../../../core/ui/success_indicator.dart';
import '../view_models/usuario_dialogo_viewmodel.dart';

class CrearUsuarioEmpleadoDialog extends StatefulWidget {
  const CrearUsuarioEmpleadoDialog({
    super.key,
    required this.viewModel,
  });

  final UsuarioDialogoViewModel viewModel;

  @override
  State<CrearUsuarioEmpleadoDialog> createState() =>
      _CrearUsuarioEmpleadoDialogState();
}

class _CrearUsuarioEmpleadoDialogState
    extends State<CrearUsuarioEmpleadoDialog> {
  final _formKey = GlobalKey<FormState>();

  final _nombreController = TextEditingController();
  final _apellidosController = TextEditingController();
  final _emailController = TextEditingController();

  String _rol = 'Empleado';
  final bool _isActive = false;

  @override
  void dispose() {
    _nombreController.dispose();
    _apellidosController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  // ACTIONS

  void _onSave() {
    if (!_formKey.currentState!.validate()) return;

    final auth = context.read<AuthRepository>();
    final idEmpresa = auth.currentUser?.idEmpresa;

    if (idEmpresa == null) {
      return;
    }

    widget.viewModel.createUsuario.execute((
      _nombreController.text.trim(),
      _apellidosController.text.trim(),
      _emailController.text.trim(),
      _rol,
      _isActive,
      idEmpresa,
    ));
  }

  // UI BUILDERS

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _nombreController,
              decoration: const InputDecoration(labelText: 'Nombre'),
              validator: (v) =>
                  v == null || v.isEmpty ? 'Campo obligatorio' : null,
            ),
            TextFormField(
              controller: _apellidosController,
              decoration: const InputDecoration(labelText: 'Apellidos'),
              validator: (v) =>
                  v == null || v.isEmpty ? 'Campo obligatorio' : null,
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
              validator: (v) {
                if (v == null || v.isEmpty) return 'Campo obligatorio';
                if (!v.contains('@')) return 'Email no válido';
                return null;
              },
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              initialValue: _rol,
              decoration: const InputDecoration(labelText: 'Rol'),
              items: const [
                DropdownMenuItem(
                  value: 'Supervisor',
                  child: Text('Supervisor'),
                ),
                DropdownMenuItem(
                  value: 'Empleado',
                  child: Text('Empleado'),
                ),
              ],
              onChanged: (v) {
                if (v != null) {
                  setState(() => _rol = v);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    final command = widget.viewModel.createUsuario;

    if (command.running) {
      return const Padding(
        padding: EdgeInsets.all(24),
        child: CircularProgressIndicator(),
      );
    }

    if (command.completed) {
      return SuccessIndicator(
        title: AppLocalization.of(context).userCreatedSuccessfully,
        label: AppLocalization.of(context).accept,
        onPressed: () {
          command.clearResult();
          Navigator.of(context).pop(true);
        },
      );
    }

    if (command.error) {
      final error = (command.result as Error).error;

      return ErrorIndicator(
        title: error.toString(),
        label: AppLocalization.of(context).close,
        onPressed: () {
          command.clearResult();
        },
      );
    }

    return _buildForm();
  }

  // BUILD

  @override
  Widget build(BuildContext context) {
    final command = widget.viewModel.createUsuario;

    return AlertDialog(
      title: Text(AppLocalization.of(context).createUserEmployee),
      content: ListenableBuilder(
        listenable: command,
        builder: (_, __) => _buildContent(),
      ),
      actions: command.running || command.completed
          ? null
          : [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(AppLocalization.of(context).close),
              ),
              FilledButton(
                onPressed: _onSave,
                child: Text(AppLocalization.of(context).save),
              ),
            ],
    );
  }
}

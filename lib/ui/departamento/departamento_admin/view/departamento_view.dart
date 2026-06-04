import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/models/departamento/dominio/departamento.dart';
import '../../../core/ui/error_indicator.dart';
import '../../../core/ui/success_indicator.dart';
import '../view_models/departamento_viewmodel.dart';

class DepartamentoView extends StatefulWidget {
  const DepartamentoView({super.key, required this.viewModel});
  final DepartamentoViewModel viewModel;

  @override
  State<DepartamentoView> createState() => _DepartamentoViewState();
}

class _DepartamentoViewState extends State<DepartamentoView> {
@override
void initState() {
  super.initState();
  widget.viewModel.loadDepartamentos.execute();
}


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: widget.viewModel,
      child: Consumer<DepartamentoViewModel>(
        builder: (context, vm, _) {
          return Scaffold(
            appBar: AppBar(title: const Text('Departamentos')),
           body: ListenableBuilder(
            listenable: Listenable.merge([
              vm,
              vm.loadDepartamentos,
              vm.createDepartamento,
              vm.updateDepartamento,
              vm.deleteDepartamento,
            ]),
            builder: (context, _) {
              if (vm.loadDepartamentos.running) {
                return const Center(child: CircularProgressIndicator());
              }

              if (vm.loadDepartamentos.error) {
                return ErrorIndicator(
                  title: vm.loadDepartamentos.result!.error.toString(),
                  label: 'Reintentar',
                  onPressed: vm.loadDepartamentos.execute,
                );
              }

              if (vm.departamentos.isEmpty) {
                return const Center(child: Text('No hay departamentos'));
              }

              return ListView.builder(
                itemCount: vm.departamentos.length,
                itemBuilder: (_, index) {
                  final dep = vm.departamentos[index];
                  return ListTile(
                    title: Text(dep.nombre),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blue),
                          onPressed: () =>
                              _showDepartamentoDialog(context, vm, dep),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () =>
                              _confirmDelete(context, vm, dep),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),

            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () => _showDepartamentoDialog(context, vm, null),
            ),
          );
        },
      ),
    );
  }
}

void _showDepartamentoDialog(BuildContext context, DepartamentoViewModel vm, Departamento? dep) {
  final codigoController = TextEditingController(text: dep?.codigoDepartamento ?? '');
  final descripcionController = TextEditingController(text: dep?.descripcion ?? '');
  final emailController = TextEditingController(text: dep?.emailContacto ?? '');
  final telefonoController = TextEditingController(text: dep?.telefonoContacto ?? '');

  String? departamentoSeleccionado = dep?.nombre;

  final List<String> departamentosFijos = [
    'Ventas', 'Marketing', 'RecursosHumanos', 'IT', 'Administracion'
  ];

  final command = dep == null ? vm.createDepartamento : vm.updateDepartamento;

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(dep == null ? 'Crear Departamento' : 'Editar Departamento'),
        content: ListenableBuilder(
          listenable: command,
          builder: (_, __) {

            // Formulario
            return SingleChildScrollView(
              child: Column(
                children: [
                  DropdownButtonFormField<String>(
                    initialValue: departamentoSeleccionado,
                    decoration: const InputDecoration(labelText: 'Departamento'),
                    items: departamentosFijos
                        .map((d) => DropdownMenuItem(value: d, child: Text(d)))
                        .toList(),
                    onChanged: (v) => departamentoSeleccionado = v,
                  ),
                  TextFormField(controller: codigoController, decoration: const InputDecoration(labelText: 'Código')),
                  TextFormField(controller: descripcionController, decoration: const InputDecoration(labelText: 'Descripción')),
                  TextFormField(controller: emailController, decoration: const InputDecoration(labelText: 'Email de contacto')),
                  TextFormField(controller: telefonoController, decoration: const InputDecoration(labelText: 'Teléfono de contacto')),
                ],
              ),
            );
          },
        ),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cancelar')),
          ElevatedButton(
  onPressed: () {
    if (departamentoSeleccionado == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Seleccione un departamento')),
      );
      return;
    }

    final nuevoDep = dep?.copyWith(
          nombre: departamentoSeleccionado!.trim(),
          codigoDepartamento: codigoController.text.trim(),
          descripcion: descripcionController.text.trim(),
          emailContacto: emailController.text.trim(),
          telefonoContacto: telefonoController.text.trim(),
        ) ??
        Departamento(
          nombre: departamentoSeleccionado!.trim(),
          codigoDepartamento: codigoController.text.trim(),
          descripcion: descripcionController.text.trim(),
          emailContacto: emailController.text.trim(),
          telefonoContacto: telefonoController.text.trim(),
        );

    command.execute(nuevoDep);

    // Nuevo dialog para mostrar resultado
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        content: ListenableBuilder(
          listenable: command,
          builder: (_, __) {
            if (command.running) {
              return const Padding(
                padding: EdgeInsets.all(24),
                child: CircularProgressIndicator(),
              );
            }

            if (command.completed) {
              return SuccessIndicator(
                title: 'Departamento guardado correctamente',
                label: 'Aceptar',
                onPressed: () {
                  command.clearResult();
                  Navigator.of(context).pop(); // cerrar dialog resultado
                  Navigator.of(context).pop(); // cerrar dialog formulario
                },
              );
            }

            if (command.error) {
              return ErrorIndicator(
                title: command.result!.error.toString(),
                label: 'Cerrar',
                onPressed: () {
                  command.clearResult();
                  Navigator.of(context).pop(); // cerrar dialog resultado
                },
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  },
  child: const Text('Guardar'),
)

        ],
      );
    },
  );
}

void _confirmDelete(BuildContext context, DepartamentoViewModel vm, Departamento dep) {
  final command = vm.deleteDepartamento;

  showDialog(
    context: context,
    builder: (_) {
      return AlertDialog(
        title: const Text('Confirmar borrado'),
        content: Text('¿Desea eliminar el departamento "${dep.nombre}"?'),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cancelar')),
          ElevatedButton(
            onPressed: () {
             command.execute(dep);

            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) => AlertDialog(
                content: ListenableBuilder(
                  listenable: command,
                  builder: (_, __) {
                    if (command.running) {
                      return const Padding(
                        padding: EdgeInsets.all(24),
                        child: CircularProgressIndicator(),
                      );
                    }

                    if (command.completed) {
                      return SuccessIndicator(
                        title: 'Departamento borrado correctamente',
                        label: 'Aceptar',
                        onPressed: () {
                          command.clearResult();
                          Navigator.of(context).pop(); // dialog resultado
                          Navigator.of(context).pop(); // dialog formulario
                        },
                      );
                    }

                    if (command.error) {
                      return ErrorIndicator(
                        title: command.result!.error.toString(),
                        label: 'Cerrar',
                        onPressed: () {
                          command.clearResult();
                          Navigator.of(context).pop();
                        },
                      );
                    }

                    return const SizedBox.shrink();
                  },
                ),
              ),
            );

            },
            child: const Text('Eliminar'),
          ),
        ],
      );
    },
  );
}

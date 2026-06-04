import 'package:flutter/material.dart';
import '../../../../domain/models/sede/dominio/sede.dart';
import '../../../core/ui/error_indicator.dart';
import '../../../core/ui/success_indicator.dart';
import '../view_models/sede_viewmodel.dart';
import 'package:provider/provider.dart';

class SedeAdminView extends StatefulWidget {
  const SedeAdminView({
    super.key,
    required this.viewModel,
  });

  final SedeAdminViewModel viewModel;

  @override
  State<SedeAdminView> createState() => _SedeAdminViewState();
}

class _SedeAdminViewState extends State<SedeAdminView> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.loadSedes.execute();
  }

  @override
Widget build(BuildContext context) {
  return ChangeNotifierProvider.value(
    value: widget.viewModel,
    child: Consumer<SedeAdminViewModel>(
      builder: (context, vm, _) {
        return Scaffold(
          appBar: AppBar(title: const Text("Gestión de Sedes")),
          body: ListenableBuilder(
          listenable: Listenable.merge([
            vm,
            vm.loadSedes,
            vm.createSede,
            vm.updateSede,
            vm.deleteSede,
          ]),
          builder: (_, __) {
            // HEADER SIEMPRE visible
            final header = Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(context),
                const SizedBox(height: 16),
              ],
            );

            // LOADING
            if (vm.loadSedes.running) {
              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  header,
                  const Center(child: CircularProgressIndicator()),
                ],
              );
            }

            // ERROR
            if (vm.loadSedes.error) {
              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  header,
                  ErrorIndicator(
                    title: vm.loadSedes.result?.error?.toString() ?? "Error desconocido",
                    label: 'Reintentar',
                    onPressed: vm.loadSedes.execute,
                  ),
                ],
              );
            }

            // LISTA VACÍA
            if (vm.sedes.isEmpty) {
              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  header,
                  const Center(child: Text("No hay sedes registradas")),
                ],
              );
            }

            // LISTA CON DATOS
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                header,
                ...vm.sedes.map(_sedeCard),
              ],
            );
          },
        ),

                );
              },
            ),
          );
        }

  Widget _header(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Sedes", style: Theme.of(context).textTheme.headlineSmall),
        ElevatedButton.icon(
          onPressed: () => _showSedeDialog(context, null),
          icon: const Icon(Icons.add),
          label: const Text("Crear"),
        ),
      ],
    );
  }

  Widget _sedeCard(Sede sede) {
    final vm = widget.viewModel;

    return Card(
      child: ListTile(
        title: Text(sede.nombre),
        subtitle: Text(
          "${sede.direccion ?? 'Sin dirección'}\n"
          "Lat: ${sede.latitud ?? '-'} · Lng: ${sede.longitud ?? '-'}\n"
          "Radio: ${sede.radioGeofencing ?? '-'} m",
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.edit, color: Colors.blue),
              onPressed: () => _showSedeDialog(context, sede),
            ),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () => _confirmDelete(context, sede),
            ),
          ],
        ),
      ),
    );
  }

  // -------------------------
  // DIALOGO CREAR / EDITAR
  // -------------------------
  void _showSedeDialog(BuildContext context, Sede? sede) {
    final vm = widget.viewModel;

    final nombreController = TextEditingController(text: sede?.nombre ?? '');
    final direccionController = TextEditingController(text: sede?.direccion ?? '');
    final latController = TextEditingController(text: sede?.latitud?.toString() ?? '');
    final lngController = TextEditingController(text: sede?.longitud?.toString() ?? '');
    final radioController = TextEditingController(text: sede?.radioGeofencing?.toString() ?? '');

    final command = sede == null ? vm.createSede : vm.updateSede;

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(sede == null ? "Crear Sede" : "Editar Sede"),
        content: ListenableBuilder(
          listenable: command,
          builder: (_, __) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: nombreController,
                    decoration: const InputDecoration(labelText: "Nombre"),
                  ),
                  TextField(
                    controller: direccionController,
                    decoration: const InputDecoration(labelText: "Dirección"),
                  ),
                  TextField(
                    controller: latController,
                    decoration: const InputDecoration(labelText: "Latitud"),
                  ),
                  TextField(
                    controller: lngController,
                    decoration: const InputDecoration(labelText: "Longitud"),
                  ),
                  TextField(
                    controller: radioController,
                    decoration: const InputDecoration(labelText: "Radio (m)"),
                  ),
                ],
              ),
            );
          },
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text("Cancelar")),
          ElevatedButton(
            onPressed: () {
              final nueva = sede?.copyWith(
                    nombre: nombreController.text.trim(),
                    direccion: direccionController.text.trim(),
                    latitud: double.tryParse(latController.text),
                    longitud: double.tryParse(lngController.text),
                    radioGeofencing: int.tryParse(radioController.text),
                  ) ??
                  Sede(
                    nombre: nombreController.text.trim(),
                    direccion: direccionController.text.trim(),
                    latitud: double.tryParse(latController.text),
                    longitud: double.tryParse(lngController.text),
                    radioGeofencing: int.tryParse(radioController.text),
                  );

              command.execute(nueva);

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
                          title: "Guardado correctamente",
                          label: "Aceptar",
                          onPressed: () {
                            command.clearResult();
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                        );
                      }

                      if (command.error) {
                        return ErrorIndicator(
                          title: command.result!.error.toString(),
                          label: "Cerrar",
                          onPressed: () {
                            command.clearResult();
                            Navigator.pop(context);
                          },
                        );
                      }

                      return const SizedBox.shrink();
                    },
                  ),
                ),
              );
            },
            child: const Text("Guardar"),
          ),
        ],
      ),
    );
  }

  // -------------------------
  // CONFIRMAR ELIMINACIÓN
  // -------------------------
  void _confirmDelete(BuildContext context, Sede sede) {
    final vm = widget.viewModel;
    final command = vm.deleteSede;

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Eliminar Sede"),
        content: Text("¿Desea eliminar la sede \"${sede.nombre}\"?"),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text("Cancelar")),
          ElevatedButton(
            onPressed: () {
              command.execute(sede);

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
                          title: "Sede eliminada correctamente",
                          label: "Aceptar",
                          onPressed: () {
                            command.clearResult();
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                        );
                      }

                      if (command.error) {
                        return ErrorIndicator(
                          title: command.result!.error.toString(),
                          label: "Cerrar",
                          onPressed: () {
                            command.clearResult();
                            Navigator.pop(context);
                          },
                        );
                      }

                      return const SizedBox.shrink();
                    },
                  ),
                ),
              );
            },
            child: const Text("Eliminar"),
          ),
        ],
      ),
    );
  }
}

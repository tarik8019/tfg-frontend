import 'package:flutter/material.dart';
import '../../../../domain/models/asignacion_turno/dominio/asignacion_turno.dart';
import '../../../../domain/models/turno/dominio/turno.dart';
import '../../../../domain/models/sede/dominio/sede.dart';
import '../../../core/ui/error_indicator.dart';
import '../../../core/ui/success_indicator.dart';
import '../view_models/turno_admin_viewmodel.dart';
import '../view_models/asignacion_turno_viewmodel.dart';

class TurnoAdminView extends StatefulWidget {
   const TurnoAdminView({
    super.key,
    required this.turnoVM,
    required this.asignacionVM,
  });

  final TurnoAdminViewModel turnoVM;
  final AsignacionTurnoViewModel asignacionVM;
 


  @override
  State<TurnoAdminView> createState() => _TurnoAdminViewState();
}

class _TurnoAdminViewState extends State<TurnoAdminView> {
  @override
  void initState() {
    super.initState();
    widget.turnoVM.loadTurnos.execute();
    widget.turnoVM.loadSedes.execute();
    widget.asignacionVM.loadAsignaciones.execute();
    widget.asignacionVM.loadEmpleados.execute();
    widget.asignacionVM.loadTurnos.execute();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gestión de Turnos')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildTurnosSection(),
          const SizedBox(height: 32),
          _buildAsignacionesSection(),
        ],
      ),
    );
  }

  // SECCIÓN TURNOS
  Widget _buildTurnosSection() {
    final vm = widget.turnoVM;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionHeader(
          title: "Turnos",
          onCreate: () => _showTurnoDialog(context, vm, null),
        ),

        ListenableBuilder(
          listenable: Listenable.merge([
            vm,
            vm.loadTurnos,
            vm.createTurno,
            vm.updateTurno,
            vm.deleteTurno,
          ]),
          builder: (_, __) {
            if (vm.loadTurnos.running) {
              return const Center(child: CircularProgressIndicator());
            }

            if (vm.loadTurnos.error) {
              return ErrorIndicator(
                title: vm.loadTurnos.result!.error.toString(),
                label: 'Reintentar',
                onPressed: vm.loadTurnos.execute,
              );
            }

            return Column(
              children: vm.turnos.map((t) {
                return Card(
                  child: ListTile(
                    title: Text(t.nombre),
                    subtitle: Text(
                    '${t.sede?.nombre ?? "Sede desconocida"}\n'
                   'Hora: ${t.horaInicio.substring(0, 5)} - ${t.horaFin.substring(0, 5)}\n'
                    'Fecha: ${t.fecha} · Nocturno: ${t.esNocturno ? "Sí" : "No"}',
                  ),

                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blue),
                          onPressed: () => _showTurnoDialog(context, vm, t),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => _confirmDeleteTurno(context, vm, t),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            );
          },
        ),
      ],
    );
  }

  // SECCIÓN ASIGNACIONES
  Widget _buildAsignacionesSection() {
    final vm = widget.asignacionVM;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionHeader(
          title: "Asignaciones de Turno",
          onCreate: () => _showAsignacionDialog(context, vm, null),
        ),

        ListenableBuilder(
          listenable: Listenable.merge([
            vm,
            vm.loadAsignaciones,
            vm.createAsignacion,
            vm.updateAsignacion,
            vm.deleteAsignacion,
          ]),
          builder: (_, __) {
            if (vm.loadAsignaciones.running) {
              return const Center(child: CircularProgressIndicator());
            }

            if (vm.loadAsignaciones.error) {
              return ErrorIndicator(
                title: vm.loadAsignaciones.result!.error.toString(),
                label: 'Reintentar',
                onPressed: vm.loadAsignaciones.execute,
              );
            }

            final asignacionesPorTurno = _groupByTurno(vm.asignaciones);

            return Column(
              children: asignacionesPorTurno.entries.map((entry) {
                final asignaciones = entry.value;
                final asignacionBase = asignaciones.first;
                final turno = asignacionBase.turno;

                // Resolver empleados desde IDs
                final empleados = vm.empleados.where((e) =>
                  asignaciones
                      .expand((a) => a.idEmpleados ?? [])
                      .contains(e.idEmpleado)
                ).toList();

                return Card(
                  child: ListTile(
                    title: Text(turno?.nombre ?? 'Turno desconocido'),

                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sede: ${turno?.sede?.nombre ?? "-"}'),
                        Text('Fecha: ${turno?.fecha.toLocal().toString().split(' ')[0]}'),
                        Text(
                          'Hora: ${turno?.horaInicio.substring(0, 5)}'
                          ' - ${turno?.horaFin.substring(0, 5)}',
                        ),
                        Text('Nocturno: ${turno?.esNocturno == true ? "Sí" : "No"}'),
                        Text('Estado: ${asignacionBase.estado}'),

                        const SizedBox(height: 6),
                        const Text(
                          'Empleados asignados:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        ...empleados.map(
                          (e) => Row(
                            children: [
                              const Icon(Icons.person, size: 16),
                              const SizedBox(width: 6),
                              Text('${e.nombre} ${e.apellidos}'),
                            ],
                          ),
                        ),
                      ],
                    ),

                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blue),
                          onPressed: () =>
                              _showAsignacionDialog(context, vm, asignacionBase),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () =>
                              _confirmDeleteAsignacion(context, vm, asignacionBase),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            );

          },
        ),
      ],
    );
  }

  // HEADER REUTILIZABLE
  Widget _sectionHeader({required String title, required VoidCallback onCreate}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ElevatedButton.icon(
          onPressed: onCreate,
          icon: const Icon(Icons.add),
          label: const Text("Crear"),
        ),
      ],
    );
  }


  // DIALOGOS (Turnos + Asignaciones)
  // Turno dialogs 
 void _showTurnoDialog(
  BuildContext context,
  TurnoAdminViewModel vm,
  Turno? turno,
) {
   final List<String> nombresTurno = [
  'Manana',
  'Tarde',
  'Noche',
  'Partido',
  'Flexible',
];
  String nombreSeleccionado = turno?.nombre ?? 'Manana';
  final horaInicioController = TextEditingController(text: turno?.horaInicio.substring(0, 5) ?? '');
  final horaFinController = TextEditingController(text: turno?.horaFin.substring(0, 5) ?? '');

  DateTime fecha = turno?.fecha ?? DateTime.now();
  Sede? sedeSeleccionada = turno?.sede;
  bool esNocturno = turno?.esNocturno ?? false;

  final command = turno == null ? vm.createTurno : vm.updateTurno;

showDialog(
  context: context,
  builder: (_) {
    return StatefulBuilder(
      builder: (context, setState) {
        return AlertDialog(

        title: Text(turno == null ? 'Crear Turno' : 'Editar Turno'),
        content: ListenableBuilder(
          listenable: command,
          builder: (_, __) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  DropdownButtonFormField<String>(
                  initialValue: nombreSeleccionado,
                  decoration: const InputDecoration(labelText: 'Nombre del turno'),
                  items: nombresTurno
                      .map((n) => DropdownMenuItem(
                            value: n,
                            child: Text(n),
                          ))
                      .toList(),
                 onChanged: (v) {
                  setState(() {
                    nombreSeleccionado = v!;
                  });
                },

                ),



                  DropdownButtonFormField<Sede>(
                    initialValue: sedeSeleccionada,
                    decoration: const InputDecoration(labelText: 'Sede'),
                    items: vm.sedes
                        .map((s) => DropdownMenuItem(
                              value: s,
                              child: Text(s.nombre),
                            ))
                        .toList(),
                    // onChanged: (v) => sedeSeleccionada = v,

                    onChanged: (v) {
                    setState(() {
                      sedeSeleccionada = v;
                    });
                  },
                  ),

                  const SizedBox(height: 12),

                  Row(
                    children: [
                      const Text('Fecha:'),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () async {
                          final picked = await showDatePicker(
                            context: context,
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2030),
                            initialDate: fecha,
                          );
                          if (picked != null) {
                          setState(() {
                            fecha = picked;
                          });

                          }
                        },
                        child: Text('${fecha.toLocal()}'.split(' ')[0]),
                      ),
                    ],
                  ),

                  TextFormField(
                    controller: horaInicioController,
                    decoration: const InputDecoration(labelText: 'Hora inicio (HH:mm)'),
                  ),
                  TextFormField(
                    controller: horaFinController,
                    decoration: const InputDecoration(labelText: 'Hora fin (HH:mm)'),
                  ),

                CheckboxListTile(
                title: const Text('Es nocturno'),
                value: esNocturno,
                onChanged: (v) {
                  setState(() {
                    esNocturno = v ?? false;
                  });
                },
              ),

                ],
              ),
            );
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
            onPressed: () {
              if (sedeSeleccionada == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Seleccione una sede')),
                );
                return;
              }

              final nuevoTurno = turno?.copyWith(
                    nombre: nombreSeleccionado,
                    sede: sedeSeleccionada!,
                    idSede: sedeSeleccionada!.idSede, 
                    fecha: fecha,
                    horaInicio: horaInicioController.text.trim(),
                    horaFin: horaFinController.text.trim(),
                    esNocturno: esNocturno,
                  ) ??
                  Turno(
                    nombre: nombreSeleccionado,
                    sede: sedeSeleccionada!,
                    idSede: sedeSeleccionada!.idSede, 
                    fecha: fecha,
                    horaInicio: horaInicioController.text.trim(),
                    horaFin: horaFinController.text.trim(),
                    esNocturno: esNocturno,
                  );

              command.execute(nuevoTurno);

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
                          title: 'Turno guardado correctamente',
                          label: 'Aceptar',
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
                          label: 'Cerrar',
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
            child: const Text('Guardar'),
          ),
        ],
      );
    },
  );
}
);
}
 void _confirmDeleteTurno(
  BuildContext context,
  TurnoAdminViewModel vm,
  Turno turno,
) {
  final command = vm.deleteTurno;

  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: const Text('Eliminar turno'),
      content: Text('¿Desea eliminar el turno "${turno.nombre}"?'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () {
            command.execute(turno);

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
                        title: 'Turno eliminado correctamente',
                        label: 'Aceptar',
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
                        label: 'Cerrar',
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
          child: const Text('Eliminar'),
        ),
      ],
    ),
  );
}

  // ASIGNACIÓN DE TURNOS – DIALOGO PROFESIONAL

void _showAsignacionDialog(
  BuildContext context,
  AsignacionTurnoViewModel vm,
  AsignacionTurno? asignacion,
) {
  String estado = asignacion?.estado ?? 'Pendiente';
  int? turnoSeleccionado = asignacion?.idTurno;
  List<int> empleadosSeleccionados = [...(asignacion?.idEmpleados ?? [])];

  final command = asignacion == null ? vm.createAsignacion : vm.updateAsignacion;

  showDialog(
    context: context,
    builder: (_) => StatefulBuilder(
      builder: (context, setState) {
        return AlertDialog(
          title: Text(asignacion == null ? 'Crear Asignación' : 'Editar Asignación'),

          content: ListenableBuilder(
            listenable: command,
            builder: (_, __) {

              if (command.running) {
                return const Padding(
                  padding: EdgeInsets.all(24),
                  child: Center(child: CircularProgressIndicator()),
                );
              }

              if (command.completed) {
                return SuccessIndicator(
                  title: asignacion == null
                      ? 'Asignación creada correctamente'
                      : 'Asignación actualizada correctamente',
                  label: 'Aceptar',
                  onPressed: () {
                    command.clearResult();
                    Navigator.pop(context); // cerrar resultado
                    Navigator.pop(context); // cerrar formulario
                  },
                );
              }

              if (command.error) {
                return ErrorIndicator(
                  title: command.result?.error?.toString() ?? "Error desconocido",
                  label: 'Cerrar',
                  onPressed: () {
                    command.clearResult();
                    Navigator.pop(context);
                  },
                );
              }

              return SingleChildScrollView(
                child: Column(
                  children: [
                    DropdownButtonFormField<String>(
                      initialValue: estado,
                      decoration: const InputDecoration(labelText: 'Estado'),
                      items: ['Pendiente', 'Confirmado', 'Cancelado']
                          .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                          .toList(),
                      onChanged: (v) => setState(() => estado = v!),
                    ),

                    const SizedBox(height: 12),

                    DropdownButtonFormField<int>(
                      initialValue: turnoSeleccionado,
                      decoration: const InputDecoration(labelText: 'Turno'),
                      items: vm.turnos
                          .map((t) => DropdownMenuItem(
                                value: t.idTurno,
                                child: Text('${t.nombre} (${t.horaInicio.substring(0, 5)}-${t.horaFin.substring(0, 5)})'),
                              ))
                          .toList(),
                      onChanged: asignacion == null
      ? (v) => setState(() => turnoSeleccionado = v)
      : null,
),

                    const SizedBox(height: 12),

                    const Text('Seleccionar empleados',
                        style: TextStyle(fontWeight: FontWeight.bold)),

                    ...vm.empleados.map((e) {
                      final selected = empleadosSeleccionados.contains(e.idEmpleado);
                      return CheckboxListTile(
                        title: Text('${e.nombre} ${e.apellidos}'),
                        value: selected,
                        onChanged: (v) {
                          setState(() {
                            if (v == true) {
                              empleadosSeleccionados.add(e.idEmpleado!);
                            } else {
                              empleadosSeleccionados.remove(e.idEmpleado);
                            }
                          });
                        },
                      );
                    }),
                  ],
                ),
              );
            },
          ),

          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            ),

            ElevatedButton(
              onPressed: () {
                if (turnoSeleccionado == null || empleadosSeleccionados.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Seleccione turno y empleados')),
                  );
                  return;
                }

                final nuevaAsignacion = asignacion?.copyWith(
                      estado: estado,
                      idTurno: turnoSeleccionado,
                      idEmpleados: empleadosSeleccionados,
                    ) ??
                    AsignacionTurno(
                      estado: estado,
                      idTurno: turnoSeleccionado,
                      idEmpleados: empleadosSeleccionados,
                    );

                command.execute(nuevaAsignacion);
              },
              child: const Text('Guardar'),
            ),
          ],
        );
      },
    ),
  );
}


  void _confirmDeleteAsignacion(
    BuildContext context,
    AsignacionTurnoViewModel  vm,
    AsignacionTurno asignacion,
  ) {
    final command = vm.deleteAsignacion;

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Eliminar asignación'),
        content: Text('¿Desea eliminar esta asignación?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancelar')),
          ElevatedButton(
            onPressed: () {
              command.execute(asignacion);

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
                          title: 'Asignación eliminada correctamente',
                          label: 'Aceptar',
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
                          label: 'Cerrar',
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
            child: const Text('Eliminar'),
          ),
        ],
      ),
    );
  }

      Map<int, List<AsignacionTurno>> _groupByTurno(List<AsignacionTurno> asignaciones,) {
      final map = <int, List<AsignacionTurno>>{};

      for (final a in asignaciones) {
        final key = a.idTurno!;
        map.putIfAbsent(key, () => []).add(a);
      }

      return map;
    }

}

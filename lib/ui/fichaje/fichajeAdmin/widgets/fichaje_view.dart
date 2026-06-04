import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/models/fichaje/fichajes_por_dia.dart';
import '../../../../domain/models/fichaje/fichajes_empleado.dart';
import '../../../../domain/models/fichaje/fichaje.dart';
import '../view_models/fichaje_viewmodel.dart';

class FichajeAdminView extends StatefulWidget {
  final FichajeAdminViewModel viewModel;

  const FichajeAdminView({super.key, required this.viewModel});

  @override
  State<FichajeAdminView> createState() => _FichajeAdminViewState();
}

class _FichajeAdminViewState extends State<FichajeAdminView> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => widget.viewModel.loadFichajes.execute());
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: widget.viewModel,
      child: Consumer<FichajeAdminViewModel>(
        builder: (_, vm, __) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Fichajes'),
              centerTitle: true,
              elevation: 2,
              backgroundColor: Colors.blue.shade700,
              foregroundColor: Colors.white,
            ),
            body: Column(
              children: [
                _searchBar(vm),
                Expanded(
                  child: ListenableBuilder(
                    listenable: vm.loadFichajes,
                    builder: (_, __) {
                      if (vm.loadFichajes.running) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      if (vm.data.isEmpty) {
                        return const Center(
                          child: Text(
                            'No hay fichajes',
                            style: TextStyle(fontSize: 16),
                          ),
                        );
                      }

                      return _list(vm.data);
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // SEARCH BAR
  Widget _searchBar(FichajeAdminViewModel vm) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Buscar por nombre o apellidos...',
          prefixIcon: const Icon(Icons.search, color: Colors.blue),
          filled: true,
          fillColor: Colors.grey.shade100,
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.calendar_today, color: Colors.blue),
                onPressed: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime.now(),
                  );

                  if (picked != null) {
                    vm.setDateFilter(picked);
                  }
                },
              ),
              IconButton(
                icon: const Icon(Icons.close, color: Colors.red),
                onPressed: vm.clearFilters,
              ),
            ],
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
        ),
        onChanged: vm.setSearch,
      ),
    );
  }

  // LISTA DE DÍAS
  Widget _list(List<FichajesPorDia> data) {
    final sortedDays = [...data]
      ..sort((a, b) => b.fecha.compareTo(a.fecha));

    return ListView.builder(
      itemCount: sortedDays.length,
      itemBuilder: (_, i) {
        final dia = sortedDays[i];

        return Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: ExpansionTile(
            title: Text(
              "${dia.fecha.day.toString().padLeft(2, '0')}/"
              "${dia.fecha.month.toString().padLeft(2, '0')}/"
              "${dia.fecha.year}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            children: dia.empleados.map(_empleadoItem).toList(),
          ),
        );
      },
    );
  }

  // EMPLEADO
  Widget _empleadoItem(FichajesEmpleado e) {
    return ExpansionTile(
      title: Text(
        "${e.nombre} ${e.apellidos}",
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      children: e.fichajes.map(_fichajeItem).toList(),
    );
  }

  // FICHAJE
  Widget _fichajeItem(Fichaje f) {
    final time = f.timestamp != null
        ? "${f.timestamp!.hour.toString().padLeft(2, '0')}:"
          "${f.timestamp!.minute.toString().padLeft(2, '0')}"
        : "--:--";

    final color = _color(f.tipoFichaje);

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color.withValues(alpha: 0.15),
        child: Icon(_icon(f.tipoFichaje), color: color),
      ),
      title: Text(
        time,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        f.tipoFichaje.toUpperCase(),
        style: TextStyle(color: color),
      ),
      trailing: _chip(f.tipoFichaje),
    );
  }

  // COLORES
  Color _color(String tipo) {
    return switch (tipo) {
      'entrada' => Colors.green,
      'salida' => Colors.red,
      'pausa_inicio' => Colors.orange,
      'pausa_fin' => Colors.blue,
      _ => Colors.grey,
    };
  }

  // CHIP
  Widget _chip(String tipo) {
    final color = _color(tipo);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        tipo,
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  // ICONOS
  IconData _icon(String tipo) {
    return switch (tipo) {
      'entrada' => Icons.login,
      'salida' => Icons.logout,
      'pausa_inicio' => Icons.pause,
      'pausa_fin' => Icons.play_arrow,
      _ => Icons.access_time,
    };
  }
}
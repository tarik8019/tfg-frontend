import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../routing/routes.dart';
import '../../core/ui/quick_action_card.dart';
import '../view_models/home_viewmodel.dart';

class _QuickActions extends StatelessWidget {
  const _QuickActions({required this.viewModel});

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    if (!viewModel.isAdmin && !viewModel.isEmpleado) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Accesos rápidos',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),

          if (viewModel.isAdmin) _adminActions(context),
          if (viewModel.isEmpleado) _empleadoActions(context),
        ],
      ),
    );
  }

  // ================= ADMIN =================

  Widget _adminActions(BuildContext context) {
    return _grid([
      QuickActionCard(
        icon: Icons.people,
        label: 'Empleados',
        color: Colors.orange.shade100,
        onTap: () => context.go(Routes.crearEditarEmpleadoAdminAbsolute),
      ),
      QuickActionCard(
        icon: Icons.calendar_today,
        label: 'Turnos',
        color: Colors.blue.shade100,
        onTap: () => context.go(Routes.turnosAdminAbsolute),
      ),
      QuickActionCard(
        icon: Icons.approval,
        label: 'Ausencias',
        color: Colors.purple.shade100,
        onTap: () => context.go(Routes.ausenciasAdminAbsolute),
      ),
      QuickActionCard(
        icon: Icons.access_time,
        label: 'Fichajes',
        color: Colors.teal.shade100,
        onTap: () => context.go(Routes.fichajesAdminAbsolute),
      ),
      QuickActionCard(
        icon: Icons.insert_drive_file,
        label: 'Documentos',
        color: Colors.amber.shade100,
        onTap: () => context.go(Routes.documentosAdminAbsolute),
      ),
      QuickActionCard(
        icon: Icons.settings,
        label: 'Configuración',
        color: Colors.grey.shade300,
        onTap: () => context.go(Routes.configuracionAdminAbsolute),
      ),
    ]);
  }

  // ================= EMPLEADO =================

  Widget _empleadoActions(BuildContext context) {
    return _grid([
      QuickActionCard(
        icon: Icons.access_time,
        label: 'Fichar',
        color: Colors.teal.shade100,
        onTap: () => context.go(Routes.ficharEmpleadoAbsolute),
      ),
      QuickActionCard(
        icon: Icons.calendar_today,
        label: 'Turnos',
        color: Colors.blue.shade100,
        onTap: () => context.go(Routes.turnosEmpleadoAbsolute),
      ),
      QuickActionCard(
        icon: Icons.folder,
        label: 'Documentos',
        color: Colors.orange.shade100,
        onTap: () => context.go(Routes.documentosEmpleadoAbsolute),
      ),
      QuickActionCard(
        icon: Icons.notifications,
        label: 'Notificaciones',
        color: Colors.red.shade100,
        onTap: () => context.go(Routes.notificacionesEmpleadoAbsolute),
      ),
      QuickActionCard(
        icon: Icons.person,
        label: 'Perfil',
        color: Colors.grey.shade300,
        onTap: () => context.go(Routes.perfilEmpleadoAbsolute),
      ),
    ]);
  }

  // ================= GRID =================

  Widget _grid(List<Widget> children) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      children: children,
    );
  }
}

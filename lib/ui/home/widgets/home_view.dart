import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../routing/routes.dart';
import '../../core/localization/applocalization.dart';
import '../../core/themes/dimens.dart';
import '../../core/ui/error_indicator.dart';
import '../../core/themes/colors.dart';
import '../../core/ui/quick_action_card.dart';
import '../../core/ui/user_info_card.dart' ;
import '../view_models/home_viewmodel.dart';
import 'home_header.dart';
//el login como raíz y Home como contenedor dinámico según rol
class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  void initState() {
    super.initState();
    // Refresca datos al iniciar la vista
    widget.viewModel.refreshData();
  }

  @override
  Widget build(BuildContext context) {
    final user = widget.viewModel.currentUser;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Inicio'),
        backgroundColor: AppColors.primaryDark,
        centerTitle: true,
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await widget.viewModel.refreshData();
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
         children: [
              HomeHeader(
                viewModel: widget.viewModel,
                user: user,
                onLogout: () => widget.viewModel.authRepository.logout(),
              ),
              const SizedBox(height: 24),
              _buildQuickActions(context),
              const SizedBox(height: 40),
            ],

          ),
        ),
      ),
    );
  }

Widget _buildQuickActions(BuildContext context) {
  final isAdmin = widget.viewModel.isAdmin;
  final isEmpleado = widget.viewModel.isEmpleado;

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Accesos rápidos',
          style: TextStyle(
            color: AppColors.primaryDark,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),

        // Si es administrador:
      if (isAdmin)
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          children: [
            QuickActionCard(
              icon: Icons.people_alt,
              label: 'Gestionar empleados',
              color: Colors.orange[100]!,
              onTap: () => context.go(Routes.crearEditarEmpleadoAdminAbsolute),
            ),
                QuickActionCard(
              icon: Icons.apartment,
              label: 'Gestionar departamentos',
              color: const Color.fromARGB(255, 168, 161, 150),
              onTap: () => context.go(Routes.crearEditarDepartamentoAdminAbsolute ),
            ),
            QuickActionCard(
              icon: Icons.calendar_today,
              label: 'Gestión de turnos',
              color: Colors.blue[100]!,
              onTap: () => context.go(Routes.turnosAdminAbsolute),
            ),
            QuickActionCard(
              icon: Icons.location_on,
              label: 'Sedes y geolocalización',
              color: Colors.indigo[100]!,
              onTap: () => context.go(Routes.sedesAdminAbsolute),
            ),
            QuickActionCard(
              icon: Icons.approval,
              label: 'Solicitudes de ausencia',
              color: Colors.purple[100]!,
              onTap: () => context.go(Routes.ausenciasAdminAbsolute),
            ),
            QuickActionCard(
              icon: Icons.access_time,
              label: 'Control de fichajes',
              color: Colors.blue[50]!,
              onTap: () => context.go(Routes.fichajesAdminAbsolute),
            ),

            QuickActionCard(
              icon: Icons.insert_drive_file,
              label: 'Documentos empleados',
              color: Colors.amber[100]!,
              onTap: () => context.go(Routes.documentosAdminAbsolute),
            ),
            QuickActionCard(
              icon: Icons.bar_chart,
              label: 'Reportes generales',
              color: Colors.green[100]!,
              onTap: () => context.go(Routes.reportesAdminAbsolute),
            ),
            QuickActionCard(
              icon: Icons.notifications,
              label: 'Notificaciones',
              color: Colors.red[100]!,
              onTap: () => context.go(Routes.notificacionesAdminAbsolute),
            ),
            QuickActionCard(
              icon: Icons.settings,
              label: 'Configuración',
              color: Colors.grey[300]!,
              onTap: () => context.go(Routes.configuracionAdminAbsolute),
            ),
          ],
        ),



        //Si es empleado:
        if (isEmpleado)
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            children: [
              QuickActionCard(
                icon: Icons.calendar_today,
                label: 'Mis turnos',
                color: Colors.blue[100]!,
                onTap: () => context.go(Routes.turnosEmpleadoAbsolute),
              ),
              QuickActionCard(
                icon: Icons.access_time,
                label: 'Fichar',
                color: Colors.teal[100]!,
                onTap: () => context.go(Routes.ficharEmpleadoAbsolute),
              ),
              QuickActionCard(
                icon: Icons.beach_access,
                label: 'Mis ausencias',
                color: Colors.purple[100]!,
                onTap: () => context.go(Routes.ausenciasEmpleadoAbsolute),
              ),
              QuickActionCard(
                icon: Icons.folder,
                label: 'Mis documentos',
                color: Colors.orange[100]!,
                onTap: () => context.go(Routes.documentosEmpleadoAbsolute),
              ),
              QuickActionCard(
                icon: Icons.notifications,
                label: 'Notificaciones',
                color: Colors.red[100]!,
                onTap: () => context.go(Routes.notificacionesEmpleadoAbsolute),
              ),
              QuickActionCard(
                icon: Icons.bar_chart,
                label: 'Mis reportes',
                color: Colors.green[100]!,
                onTap: () => context.go(Routes.reportesEmpleadoAbsolute),
              ),
              QuickActionCard(
                icon: Icons.person,
                label: 'Mi perfil',
                color: Colors.grey[300]!,
                onTap: () => context.go(Routes.perfilEmpleadoAbsolute),
              ),
            ],
          ),

      ],
    ),
  );
}

}


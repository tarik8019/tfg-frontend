import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../routing/routes.dart';
import '../../../core/localization/applocalization.dart';
import '../../../core/ui/error_indicator.dart';
import '../view_models/empleado_viewmodel.dart';
import '../view_models/usuario_dialogo_viewmodel.dart';
import '../view_models/empleado_dialogo_viewmodel.dart';
import '../widgets/crear_empleado_dialogo.dart';
import '../widgets/crear_usuario_dialogo.dart';
import '../../../../domain/models/empleado/dominio/empleado.dart';

class CrearEditarEmpleadoView extends StatefulWidget {
  const CrearEditarEmpleadoView({
    super.key,
    required this.empleadoViewModel,
    required this.usuarioDialogoViewModel,
    required this.empleadoDialogoViewModel,
  });

  final EmpleadoViewModel empleadoViewModel;
  final UsuarioDialogoViewModel usuarioDialogoViewModel;
  final EmpleadoDialogoViewModel empleadoDialogoViewModel;

  @override
  State<CrearEditarEmpleadoView> createState() =>
      _CrearEditarEmpleadoViewState();
}

class _CrearEditarEmpleadoViewState extends State<CrearEditarEmpleadoView> {
  @override
  void initState() {
    super.initState();
    widget.empleadoViewModel.loadEmpleados.execute();
  }

  // FEEDBACK

  void _showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.green),
    );
  }

  // DIALOGOS 

  Future<void> _openCreateUsuarioDialog() async {
    final result = await showDialog<bool>(
      context: context,
      builder: (_) => CrearUsuarioEmpleadoDialog(
        viewModel: widget.usuarioDialogoViewModel,
      ),
    );

    if (!mounted) return;
    if (result == true) {
      _showSuccess(
        AppLocalization.of(context).userCreatedSuccessfully,
      );
      widget.empleadoViewModel.loadEmpleados.execute();
    }
  }

  Future<void> _openCreateEmpleadoDialog({Empleado? empleadoEditar}) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (_) => CrearEmpleadoDialog(
        viewModel: widget.empleadoDialogoViewModel,
         empleadoEditar: empleadoEditar,
     
      ),
    );

    if (!mounted) return;
    if (result == true) {
      _showSuccess(
        empleadoEditar == null
            ? AppLocalization.of(context).employeeCreatedSuccessfully
            : AppLocalization.of(context).employeeUpdatedSuccessfully,
      );
      widget.empleadoViewModel.loadEmpleados.execute();
    }
  }

  void _confirmDeleteEmpleado(Empleado empleado) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Eliminar empleado'),
        content: Text(
          '¿Seguro que deseas eliminar a '
          '${empleado.nombre} ${empleado.apellidos}?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              widget.empleadoDialogoViewModel.deleteEmpleado.execute(empleado);
              Navigator.pop(context);
            },
            child: const Text('Eliminar'),
          ),
        ],
      ),
    );
  }

  // DRAWER

  Drawer _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Admin Empleados',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person_add),
            title: Text(AppLocalization.of(context).createUserEmployee),
            onTap: () {
              Navigator.pop(context);
              _openCreateUsuarioDialog();
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: Text(AppLocalization.of(context).createEmployee),
            onTap: () {
              Navigator.pop(context);
              _openCreateEmpleadoDialog();
            },
          ),
        ],
      ),
    );
  }

  // BODY 

  Widget _buildBody() {
    if (widget.empleadoViewModel.loadEmpleados.running) {
      return const Center(child: CircularProgressIndicator());
    }

    if (widget.empleadoViewModel.loadEmpleados.error) {
      return ErrorIndicator(
        title: AppLocalization.of(context).errorWhileLoadingEmployees,
        label: AppLocalization.of(context).tryAgain,
        onPressed: widget.empleadoViewModel.loadEmpleados.execute,
      );
    }

    final empleados = widget.empleadoViewModel.empleados;

    if (empleados.isEmpty) {
      return const Center(child: Text('No hay empleados'));
    }

    return ListView.separated(
      itemCount: empleados.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (_, index) {
        final e = empleados[index];

        return ListTile(
          leading: CircleAvatar(
            child: Text(e.nombre.substring(0, 1)),
          ),
          title: Text('${e.nombre} ${e.apellidos}'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('DNI: ${e.dniNie}'),
              Text('${e.puesto} · ${e.departamentoNombre}'),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.edit, color: Colors.blue),
                onPressed: () =>
                    _openCreateEmpleadoDialog(empleadoEditar: e),
              ),
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () => _confirmDeleteEmpleado(e),
              ),
            ],
          ),
        );
      },
    );
  }

  //BUILD 

  @override
Widget build(BuildContext context) {
  return PopScope(
    canPop: true,
    onPopInvokedWithResult: (didPop, _) {
      if (!didPop) context.go(Routes.home);
    },
    child: Scaffold(
    appBar: AppBar(
      title: Text(AppLocalization.of(context).employees),

      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => context.go(Routes.home),
      ),

      actions: [
        Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ],

      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: TextField(
            decoration: const InputDecoration(
              hintText: 'Buscar por DNI',
              prefixIcon: Icon(Icons.search),
              filled: true,
            ),
            onChanged: widget.empleadoViewModel.setFiltroDni,
          ),
        ),
      ),
    ),

      drawer: _buildDrawer(),
      body: ListenableBuilder(
        listenable: widget.empleadoViewModel,
        builder: (_, __) => _buildBody(),
      ),
    ),
  );
}

}

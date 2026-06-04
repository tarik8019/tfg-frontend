import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:mijornada/data/repositories/activacion_cuenta/activacion_cuenta_repository.dart';
import 'package:mijornada/ui/activacion_cuenta/widgets/activacion_cuenta_view.dart';
import 'package:provider/provider.dart';

import '../data/repositories/auth/auth_repository.dart';
import '../data/repositories/empleado/empleado_repository.dart';
import '../data/repositories/user/user_repository.dart';

import '../data/services/api/model/activacion_cuenta/activacion_cuenta_api_model.dart';
import '../data/services/api/model/login_response/login_response.dart';
import '../domain/use_cases/activacion_cuenta/activacion_cuenta_use_case.dart';
import '../ui/activacion_cuenta/view_models/activacion_cuenta_viewmodel.dart';
import '../ui/auth/login/view_models/login_viewmodel.dart';
import '../ui/configuracion/configuracionAdmin/view_models/configuracion_viewmodel.dart';
import '../ui/configuracion/configuracionAdmin/widgets/configuracion_view.dart';
import '../ui/departamento/departamento_admin/view/departamento_view.dart';
import '../ui/departamento/departamento_admin/view_models/departamento_viewmodel.dart';
import '../ui/documento/documentoAdmin/view_models/documento_viewmodel.dart';
import '../ui/documento/documentoAdmin/widgets/documento_view.dart';
import '../ui/documento/documentoEmpleado/view_models/documento_viewmodel.dart';
import '../ui/documento/documentoEmpleado/widgets/documento_view.dart';
import '../ui/empleado/empleado_admin/view_models/empleado_dialogo_viewmodel.dart';
import '../ui/empleado/empleado_admin/view_models/empleado_viewmodel.dart';
import '../ui/empleado/empleado_admin/view_models/usuario_dialogo_viewmodel.dart';
import '../ui/empleado/empleado_admin/views/crear_editar_empleado_view.dart';
import '../ui/fichaje/fichajeAdmin/view_models/fichaje_viewmodel.dart';
import '../ui/fichaje/fichajeAdmin/widgets/fichaje_view.dart';
import '../ui/home/view_models/home_viewmodel.dart';
import '../ui/fichaje/fichajeEmpleado/view_models/fichaje_viewmodel.dart';
import '../ui/notificacion/notificacionAdmin/view_models/notificacion_viewmodel.dart';
import '../ui/notificacion/notificacionAdmin/widgets/notificacion_view.dart';
import '../ui/notificacion/notificacionEmpleado/view_models/notificacion_viewmodel.dart';
import '../ui/perfil/perfilEmpleado/view_models/sede_viewmodel.dart';
import '../ui/perfil/perfilEmpleado/widgets/sede_view.dart';
import '../ui/reporte/reporteAdmin/view_models/reporte_viewmodel.dart';
import '../ui/reporte/reporteAdmin/widgets/reporte_view.dart';
import '../ui/reporte/reporteEmpleado/view_models/reporte_viewmodel.dart';
import '../ui/sede/sedeAdmin/view_models/sede_viewmodel.dart';
import '../ui/sede/sedeAdmin/widgets/sede_view.dart';
import '../ui/solicitud_ausencia/solicitud_ausenciaAdmin/view_models/solicitud_ausencia_viewmodel.dart';
import '../ui/solicitud_ausencia/solicitud_ausenciaAdmin/widgets/solicitud_ausencia_view.dart';
import '../ui/solicitud_ausencia/solicitud_ausenciaEmpleado/view_models/solicitud_ausencia_viewmodel.dart';


import '../ui/auth/login/widgets/login_view.dart';
import '../ui/home/widgets/home_view.dart';
import '../ui/fichaje/fichajeEmpleado/widgets/fichaje_view.dart';
import '../ui/notificacion/notificacionEmpleado/widgets/notificacion_view.dart';
import '../ui/reporte/reporteEmpleado/widgets/reporte_view.dart';
import '../ui/solicitud_ausencia/solicitud_ausenciaEmpleado/widgets/solicitud_ausencia_view.dart';

import '../ui/turno/turnoAdmin/view_models/asignacion_turno_viewmodel.dart';
import '../ui/turno/turnoAdmin/view_models/turno_admin_viewmodel.dart';
import '../ui/turno/turnoAdmin/views/turno_admin_view.dart';
import '../ui/turno/turnoEmpleado/view_models/turno_viewmodel.dart';
import '../ui/turno/turnoEmpleado/widgets/turno_view.dart';
import 'routes.dart';

GoRouter router(AuthRepository authRepository) => GoRouter(
  
      initialLocation: Routes.login,
      debugLogDiagnostics: true,
      refreshListenable: authRepository,
      redirect: _redirect,
      routes: [

        //LOGIN
        GoRoute(
          path: Routes.login,
          builder: (context, state) {
        return LoginView(
          viewModel: LoginViewModel(authRepository: context.read()),
            );
          },
        ),

        //HOME
        GoRoute(
          path: Routes.home,
          builder: (context, state) {
            final homeViewModel = HomeViewModel(
              authRepository: context.read<AuthRepository>(),
              userRepository: context.read<UserRepository>(), 
            );

            return HomeView(viewModel: homeViewModel);
          },

          routes: [
  
            //  EMPLEADO
            GoRoute(
              path: Routes.crearEditarEmpleadoAdminRelative,
              builder: (context, state) {
                final viewModel = EmpleadoViewModel(
                   empleadoUseCase: context.read(),
                );
                 // Crear el view model del usuario
                final usuarioViewModel = UsuarioDialogoViewModel(
                  userConfigRepository: context.read(),
                  userCreateUseCase: context.read(),
                  userRepository: context.read(),
                );

                   final empleadoViewModel = EmpleadoDialogoViewModel(
                    empleadoCreateUseCase:  context.read(),
                     empleadoRepository:  context.read(),
                       userRepository: context.read(),
                        departamentoRepository: context.read(),
                         empleadoUseCase: context.read(),
         
                );

                return CrearEditarEmpleadoView( 
                  usuarioDialogoViewModel: usuarioViewModel,
                  empleadoDialogoViewModel: empleadoViewModel,
                   empleadoViewModel: viewModel,);
              },
            ),
             // Departamentos

           GoRoute(
              path: Routes.crearEditarDepartamentoAdminRelative,
              builder: (context, state) {
                final viewModel =
                    DepartamentoViewModel (
                      departamentoUseCase:  context.read(),
                       authRepository: context.read(),       
                    );
                return DepartamentoView (viewModel: viewModel);
              },
            ),

        
      
            //FICHAJE
            GoRoute(
              path: Routes.fichajesAdminRelative,
              builder: (context, state) {
                final viewModel =
                    FichajeAdminViewModel(fichajeUseCase: context.read(),);
                return FichajeAdminView(viewModel: viewModel);
              },
            ),

            // NOTIFICACIONES 
            GoRoute(
              path: Routes.notificacionesAdminRelative,
              builder: (context, state) {
                final viewModel = NotificacionAdminViewModel();
                return NotificacionAdminView(viewModel: viewModel);
              },
            ),

            // REPORTES 
            GoRoute(
              path: Routes.reportesAdminRelative,
              builder: (context, state) {
                final viewModel =
                    ReporteAdminViewmodel();
                return ReporteAdminView(viewModel: viewModel);
              },
            ),

            // SOLICITUDES DE AUSENCIA 
            GoRoute(
              path: Routes.ausenciasAdminRelative,
              builder: (context, state) {
                final viewModel = SolicitudAusenciaAdminViewmodel();
                return SolicitudAusenciaAdminView(viewModel: viewModel);
              },
            ),
             GoRoute(
              path: Routes.sedesAdminRelative,
              builder: (context, state) {
                final viewModel = SedeAdminViewModel(
                  sedeUseCase: context.read(),);
                return SedeAdminView(viewModel: viewModel);
              },
            ),
             GoRoute(
              path: Routes.turnosAdminRelative,
              builder: (context, state) {
                final turnoVM = TurnoAdminViewModel(
                  turnoUseCase:  context.read(),       
                 sedeUseCase:  context.read(),       
                  authRepository:  context.read(),       );
                final asignacionVM = AsignacionTurnoViewModel(
                  asignacionUseCase: context.read(), 
                   empleadoUseCase: context.read(), 
                    turnoUseCase: context.read(), );
                return TurnoAdminView( turnoVM: turnoVM, asignacionVM: asignacionVM,);
              },
            ),
             GoRoute(
              path: Routes.documentosAdminRelative,
              builder: (context, state) {
                final viewModel = DocumentoAdminViewmodel();
                return DocumentoAdminView(viewModel: viewModel);
              },
            ),
            
             GoRoute(
              path: Routes.configuracionAdminRelative,
              builder: (context, state) {
                final viewModel = ConfiguracionAdminViewmodel();
                return ConfiguracionAdminView(viewModel: viewModel);
              },
            
            ),
            
              //--------Empleado--------------------
      
            GoRoute(
              path: Routes.ficharEmpleadoRelative,
              builder: (context, state) {
                final viewModel = FichajeEmpleadoViewModel(
                  fichajeUseCase: context.read());
                return FichajeEmpleadoView(viewModel: viewModel);
              },
            ),
            GoRoute(
              path: Routes.notificacionesEmpleadoRelative,
              builder: (context, state) {
                final viewModel = NotificacionEmpleadoViewModel();
                return NotificacionEmpleadoView(viewModel: viewModel);
              },
            ),
            GoRoute(
              path: Routes.reportesEmpleadoRelative,
              builder: (context, state) {
                final viewModel = ReporteEmpleadoViewmodel();
                return ReporteEmpleadoView(viewModel: viewModel);
              },
            ),
          GoRoute(
              path: Routes.ausenciasEmpleadoRelative,
              builder: (context, state) {
                final viewModel = SolicitudAusenciaEmpleadoViewmodel();
                return SolicitudAusenciaEmpleadoView(viewModel: viewModel);
              },
            ),
           GoRoute(
              path: Routes.turnosEmpleadoRelative,
              builder: (context, state) {
                final viewModel = TurnoEmpleadoViewModel(
                  asignacionTurnoEmpleadoUseCase: context.read()
                );
                return TurnoEmpleadoView(viewModel: viewModel);
              },
            ),
         GoRoute(
              path: Routes.documentosEmpleadoRelative,
              builder: (context, state) {
                final viewModel = DocumentoEmpleadoViewmodel();
                return DocumentoEmpleadoView(viewModel: viewModel);
              },
            ),
           GoRoute(
              path: Routes.perfilEmpleadoRelative,
              builder: (context, state) {
                final viewModel = PerfilEmpleadoViewmodel();
                return PerfilEmpleadoView(viewModel: viewModel);
              },
            ),
          ],
        ),
       ],
      );

/// Si no está logueado va al login.
/// Si ya está logueado pero está en login va al dashboard.
/// En otros casos se queda donde está.

Future<String?> _redirect(BuildContext context, GoRouterState state) async {
  final loggedIn = await context.read<AuthRepository>().isAuthenticated;
  final loggingIn = state.matchedLocation == Routes.login;

  if (!loggedIn) return Routes.login;
  if (loggedIn && loggingIn) return Routes.home;

  return null; 
}










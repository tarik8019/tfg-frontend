import 'package:flutter/foundation.dart';
import 'package:mijornada/domain/use_cases/asignacion_turno/asignacion_turno_empleado_use_case.dart';
import 'package:mijornada/domain/use_cases/fichaje/fichaje_use_case.dart';
import 'package:mijornada/infrastructure/services/location_services.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../data/repositories/asignacion_turno/asignacion_turno_repository.dart';
import '../data/repositories/asignacion_turno/asignacion_turno_repository_local.dart';
import '../data/repositories/asignacion_turno/asignacion_turno_repository_remote.dart';
import '../data/repositories/auth/auth_repository.dart';
import '../data/repositories/auth/auth_repository_dev.dart';
import '../data/repositories/auth/auth_repository_remote.dart';
import '../data/repositories/auth/auth_repository_web.dart';
import '../data/repositories/correccion_fichaje/correccion_fichaje_repository.dart';
import '../data/repositories/correccion_fichaje/correccion_fichaje_repository_local.dart';
import '../data/repositories/correccion_fichaje/correccion_fichaje_repository_remote.dart';
import '../data/repositories/departamento/departamento_repository.dart';
import '../data/repositories/departamento/departamento_repository_remote.dart';
import '../data/repositories/disponibilidad/disponibilidad_repository.dart';
import '../data/repositories/disponibilidad/disponibilidad_repository_local.dart';
import '../data/repositories/disponibilidad/disponibilidad_repository_remote.dart';
import '../data/repositories/documento/documento_repository.dart';
import '../data/repositories/documento/documento_repository_local.dart';
import '../data/repositories/documento/documento_repository_remote.dart';
import '../data/repositories/empleado/empleado_repository.dart';
import '../data/repositories/empleado/empleado_repository_local.dart';
import '../data/repositories/empleado/empleado_repository_remote.dart';
import '../data/repositories/empresa/empresa_repository.dart';
import '../data/repositories/empresa/empresa_repository_local.dart';
import '../data/repositories/empresa/empresa_repository_remote.dart';
import '../data/repositories/fichaje/fichaje_repository.dart';
import '../data/repositories/fichaje/fichaje_repository_local.dart';
import '../data/repositories/fichaje/fichaje_repository_remote.dart';
import '../data/repositories/itinerary_config/config_repository.dart';
import '../data/repositories/itinerary_config/config_repository_memory.dart';
import '../data/repositories/notificacion/notificacion_repository.dart';
import '../data/repositories/notificacion/notificacion_repository_local.dart';
import '../data/repositories/notificacion/notificacion_repository_remote.dart';
import '../data/repositories/regla_turno/regla_turno_repository.dart';
import '../data/repositories/regla_turno/regla_turno_repository_local.dart';
import '../data/repositories/regla_turno/regla_turno_repository_remote.dart';
import '../data/repositories/reporte/reporte_repository.dart';
import '../data/repositories/reporte/reporte_repository_local.dart';
import '../data/repositories/reporte/reporte_repository_remote.dart';
import '../data/repositories/sede/sede_repository.dart';
import '../data/repositories/sede/sede_repository_local.dart';
import '../data/repositories/sede/sede_repository_remote.dart';
import '../data/repositories/solicitud_ausencia/solicitud_ausencia_repository.dart';
import '../data/repositories/solicitud_ausencia/solicitud_ausencia_repository_local.dart';
import '../data/repositories/solicitud_ausencia/solicitud_ausencia_repository_remote.dart';
import '../data/repositories/turno/turno_repository.dart';
import '../data/repositories/turno/turno_repository_local.dart';
import '../data/repositories/turno/turno_repository_remote.dart';
import '../data/repositories/user/user_repository.dart';
import '../data/repositories/user/user_repository_local.dart';
import '../data/repositories/user/user_repository_remote.dart';
import '../data/repositories/activacion_cuenta/activacion_cuenta_repository.dart';
import '../data/repositories/activacion_cuenta/activacion_cuenta_repository_remote.dart';
import '../data/repositories/sede/sede_repository_remote.dart';

import '../data/services/api/activacion_cuenta_api_client.dart';
import '../data/services/api/api_client.dart';
import '../data/services/api/auth_api_client.dart';
import '../data/services/api/model/login_response/login_response.dart';
import '../data/services/local/local_data_service.dart';
import '../data/services/shared_preferences_service.dart';

import '../domain/models/empleado/config/empleado_config.dart';
import '../domain/models/user/config/user_config.dart';
import '../domain/use_cases/activacion_cuenta/activacion_cuenta_use_case.dart';
import '../domain/use_cases/departamento/departamento_use_case.dart';
import '../domain/use_cases/empleado/empleado_create_use_case.dart';
import '../domain/use_cases/empleado/empleado_use_case.dart';
import '../domain/use_cases/sede/sede_use_case.dart';
import '../domain/use_cases/asignacion_turno/asignacion_turno_use_case.dart';
import '../domain/use_cases/turno/turno_use_case.dart';
import '../domain/use_cases/user/user_create_use_case.dart';

List<SingleChildWidget> _sharedProviders = [
    Provider(
    lazy: true,
    create: (context) => EmpleadoCreateUseCase(
    empresaRepository: context.read(),
     userRepository: context.read(),
     empleadoRepository: context.read(),
     departamentoRepository:context.read(),
    ),
  ),

  Provider(
      lazy: true,
  create: (context) => UserCreateUseCase(
    userRepository: context.read(),
  ),
),

  Provider(
      lazy: true,
  create: (context) => DepartamentoUseCase(
    departamentoRepository: context.read(),
   ),
),

  Provider(
      lazy: true,
  create: (context) => FichajeUseCase(
    fichajeRepository: context.read(),
    locationService: context.read(),
     authRepository: context.read(),
      empleadoRepository: context.read(),
    
   ),
),

  Provider(
      lazy: true,
  create: (context) => SedeUseCase(
     repository: context.read(),
   ),
),

  Provider(
      lazy: true,
  create: (context) => AsignacionTurnoUseCase(
   repository: context.read(),
   ),
),

  Provider(
      lazy: true,
  create: (context) => TurnoUseCase(
  turnoRepository: context.read(),
   ),
),

  Provider(
      lazy: true,
  create: (context) => EmpleadoUseCase(
    empleadoRepository: context.read(),
   ),
),

  Provider(
      lazy: true,
  create: (context) => AsignacionTurnoEmpleadoUseCase(
    repository: context.read(),
     authRepository:  context.read(),
      empleadoRepository:  context.read(),
  ),
),

];

List<SingleChildWidget> _sharedProvidersWeb = [
   

 Provider(
    lazy: true,
    create: (context) => ActivacionCuentaUseCase(
       activacionCuentaRepository: context.read(),
    ),
  ),
];

List<SingleChildWidget> get webProviders { 
  return [

    //  ApiClient
   Provider(
      create: (context) => ActivacionCuentaApiClient(),
    ),

    //  Repository (lee correctamente el ApiClient)
  Provider(
      create: (context) => ActivacionCuentaRepositoryRemote(
        activacionCuentaApiClient: context.read()) as ActivacionCuentaRepository ,
      ),
    
    ..._sharedProvidersWeb,
  ];
}

  

List<SingleChildWidget> get providersRemote {
  
  return [
   
  Provider(create: (context) => AuthApiClient()),
  Provider(create: (context) => ApiClient()),
  Provider(create: (context) => SharedPreferencesService()),
  Provider(create: (context) => LocationService()),

   
    ChangeNotifierProvider(
      create: (context) => AuthRepositoryRemote(
        authApiClient: context.read(),
        apiClient: context.read(),
        sharedPreferencesService: context.read(),
      ) as AuthRepository
    ),

  
  Provider<ConfigRepository<EmpleadoConfig>>(
   create: (_) => ConfigRepositoryMemory<EmpleadoConfig>(),
     ),
  Provider<ConfigRepository<UserConfig>>(
  create: (_) => ConfigRepositoryMemory<UserConfig>(),
     ),

    Provider(
      create: (context) => AsignacionTurnoRepositoryRemote(apiClient: context.read()) as AsignacionTurnoRepository,
    ),
    // Provider(
    //   create: (context) => CorreccionFichajeRepositoryRemote(apiClient: context.read()) as CorreccionFichajeRepository,
    // ),
    // Provider(
    //   create: (context) => DisponibilidadRepositoryRemote(apiClient: context.read()) as DisponibilidadRepository,
    // ),
        // En providersRemote

   Provider(
      create: (context) => UserRepositoryRemote(apiClient: context.read()) as UserRepository,
    ),

    // Provider(
    //   create: (context) => DocumentoEmpleadoRepositoryRemote(apiClient: context.read()) as DocumentoEmpleadoRepository,
    // ),
   Provider(
      create: (context) => EmpleadoRepositoryRemote(apiClient: context.read()) as EmpleadoRepository,
    ),
   Provider(
      create: (context) => EmpresaRepositoryRemote(apiClient: context.read()) as EmpresaRepository,
    ),
    Provider(
      create: (context) => DepartamentoRepositoryRemote(apiClient: context.read()) as DepartamentoRepository,
    ),
     Provider(
       create: (context) => FichajeRepositoryRemote(apiClient: context.read()) as FichajeRepository,
     ),
    // Provider(
    //   create: (context) => NotificacionRepositoryRemote(apiClient: context.read()) as NotificacionRepository,
    // ),
    Provider(
      create: (context) => ReglaTurnoRepositoryRemote(apiClient: context.read()) as ReglaTurnoRepository,
    ),
    // Provider(
    //   create: (context) => ReporteRepositoryRemote(apiClient: context.read()) as ReporteRepository,
    // ),
 Provider(
      create: (context) => SedeRepositoryRemote(apiClient: context.read()) as SedeRepository,
    ),
    // Provider(
    //   create: (context) => SolicitudAusenciaRepositoryRemote(apiClient: context.read()) as SolicitudAusenciaRepository,
    // ),
    // Provider.value garantiza que la instancia no se recrea nunca

    Provider(
      create: (context) => TurnoRepositoryRemote(apiClient: context.read()) as TurnoRepository,
    ),

    ..._sharedProviders,
  ];
}

// List<SingleChildWidget> get providersLocal {
//   return [
//     ChangeNotifierProvider.value(value: AuthRepositoryDev() as AuthRepository),

//     Provider.value( value: LocalDataService()),
 
    // Provider(
    //   create: (context) => AsignacionTurnoRepositoryLocal(localDataService: context.read()) as AsignacionTurnoRepository,
    // ),
    // Provider(
    //   create: (context) => CorreccionFichajeRepositoryLocal(localDataService: context.read()) as CorreccionFichajeRepository,
    // ),
    // Provider(
    //   create: (context) => DisponibilidadRepositoryLocal(localDataService: context.read()) as DisponibilidadRepository,
    // ),
    // Provider(
    //   create: (context) => UserRepositoryLocal(localDataService: context.read()) as UserRepository,
    // ),
    // Provider(
    //   create: (context) => DocumentoEmpleadoRepositoryLocal(localDataService: context.read()) as DocumentoEmpleadoRepository,
    // ),
    // Provider(
    //   create: (context) => EmpleadoRepositoryLocal(localDataService: context.read()) as EmpleadoRepository,
    // ),
    // Provider(
    //   create: (context) => FichajeRepositoryLocal(localDataService: context.read()) as FichajeRepository,
    // ),
    // Provider(
    //   create: (context) => NotificacionRepositoryLocal(localDataService: context.read()) as NotificacionRepository,
    // ),
    // Provider(
    //   create: (context) => ReglaTurnoRepositoryLocal(localDataService: context.read()) as ReglaTurnoRepository,
    // ),
    // Provider(
    //   create: (context) => ReporteRepositoryLocal(localDataService: context.read()) as ReporteRepository,
    // ),
    // Provider(
    //   create: (context) => SedeRepositoryLocal(localDataService: context.read()) as SedeRepository,
    // ),
    // Provider(
    //   create: (context) => SolicitudAusenciaRepositoryLocal(localDataService: context.read()) as SolicitudAusenciaRepository,
    // ),
    // Provider(
    //   create: (context) => TurnoRepositoryLocal(localDataService: context.read()) as TurnoRepository,
    // ),

//     ..._sharedProviders,
//   ];
// }

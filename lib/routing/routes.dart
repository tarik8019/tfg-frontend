abstract final class Routes {
 // rutas absulotas se usan a nivel raíz, porque no dependen de otra ruta padre 
 //en contrario las rutas relativas si dependen del padre


  // Pantalla de autenticación
  static const login = '/login';

  // Pantalla principal
  static const home = '/';

  static const String activarCuenta = '/activar-cuenta';

  // Subpantalla desde Home
  // Crear empleado 
  static const crearEditarEmpleadoAdminRelative = 'admin/crear';
  static const crearEditarEmpleadoAdminAbsolute = '/$crearEditarEmpleadoAdminRelative';
  static String crearEditarEmpleadoAdminWithId(int id) => '$crearEditarEmpleadoAdminAbsolute/$id';
// Departamentos
  static const crearEditarDepartamentoAdminRelative =  'admin/departamentos';
  static const crearEditarDepartamentoAdminAbsolute  = '/$crearEditarDepartamentoAdminRelative';
  static String crearEditarDepartamentoAdminWithId(int id) => '$crearEditarDepartamentoAdminAbsolute/$id';

 
  // Turnos
  static const turnosAdminRelative = 'admin/turnos';
  static const turnosAdminAbsolute = '/$turnosAdminRelative';
  static String turnoAdminWithId(int id) => '$turnosAdminAbsolute/$id';

  // Ausencias
  static const ausenciasAdminRelative = 'admin/ausencias';
  static const ausenciasAdminAbsolute = '/$ausenciasAdminRelative';
  static String ausenciaAdminWithId(int id) => '$ausenciasAdminAbsolute/$id';

  // Fichajes
  static const fichajesAdminRelative = 'admin/fichajes';
  static const fichajesAdminAbsolute = '/$fichajesAdminRelative';
  static String fichajeAdminWithId(int id) => '$fichajesAdminAbsolute/$id';

  // Sedes
  static const sedesAdminRelative = 'admin/sedes';
  static const sedesAdminAbsolute = '/$sedesAdminRelative';
  static String sedeAdminWithId(int id) => '$sedesAdminAbsolute/$id';

  // Documentos
  static const documentosAdminRelative = 'admin/documentos';
  static const documentosAdminAbsolute = '/$documentosAdminRelative';
  static String documentoAdminWithId(int id) => '$documentosAdminAbsolute/$id';

  // Reportes
  static const reportesAdminRelative = 'admin/reportes';
  static const reportesAdminAbsolute = '/$reportesAdminRelative';
  static String reporteAdminWithId(int id) => '$reportesAdminAbsolute/$id';

  // Notificaciones
  static const notificacionesAdminRelative = 'admin/notificaciones';
  static const notificacionesAdminAbsolute = '/$notificacionesAdminRelative';
  static String notificacionAdminWithId(int id) => '$notificacionesAdminAbsolute/$id';

  // Configuración
  static const configuracionAdminRelative = 'admin/configuracion';
  static const configuracionAdminAbsolute = '/$configuracionAdminRelative';
  static String configuracionAdminWithId(int id) => '$configuracionAdminAbsolute/$id';

  //  RUTAS DEL EMPLEADO
  

  // Mis turnos
  static const turnosEmpleadoRelative = 'empleado/turnos';
  static const turnosEmpleadoAbsolute = '/$turnosEmpleadoRelative';
  static String turnoEmpleadoWithId(int id) => '$turnosEmpleadoAbsolute/$id';

  // Fichar
  static const ficharEmpleadoRelative = 'empleado/fichar';
  static const ficharEmpleadoAbsolute = '/$ficharEmpleadoRelative';
  static String ficharEmpleadoWithId(int id) => '$ficharEmpleadoAbsolute/$id';

  // Mis ausencias
  static const ausenciasEmpleadoRelative = 'empleado/ausencias';
  static const ausenciasEmpleadoAbsolute = '/$ausenciasEmpleadoRelative';
  static String ausenciaEmpleadoWithId(int id) => '$ausenciasEmpleadoAbsolute/$id';

  // Mis documentos
  static const documentosEmpleadoRelative = 'empleado/documentos';
  static const documentosEmpleadoAbsolute = '/$documentosEmpleadoRelative';
  static String documentoEmpleadoWithId(int id) => '$documentosEmpleadoAbsolute/$id';

  // Mis notificaciones
  static const notificacionesEmpleadoRelative = 'empleado/notificaciones';
  static const notificacionesEmpleadoAbsolute = '/$notificacionesEmpleadoRelative';
  static String notificacionEmpleadoWithId(int id) => '$notificacionesEmpleadoAbsolute/$id';

  // Mis reportes
  static const reportesEmpleadoRelative = 'empleado/reportes';
  static const reportesEmpleadoAbsolute = '/$reportesEmpleadoRelative';
  static String reporteEmpleadoWithId(int id) => '$reportesEmpleadoAbsolute/$id';

  // Mi perfil
  static const perfilEmpleadoRelative = 'empleado/perfil';
  static const perfilEmpleadoAbsolute = '/$perfilEmpleadoRelative';
  static String perfilEmpleadoWithId(int id) => '$perfilEmpleadoAbsolute/$id';
}

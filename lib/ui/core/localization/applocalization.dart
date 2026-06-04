import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppLocalization {
  static AppLocalization of(BuildContext context) {
    return Localizations.of(context, AppLocalization);
  }

  static const _strings = <String, String>{
    // General
    'close': 'Cerrar',
    'confirm': 'Confirmar',
    'cancel': 'Cancelar',
    'save': 'Guardar',
    'delete': 'Eliminar',
    'edit': 'Editar',
    'loading': 'Cargando...',
    'tryAgain': 'Intentar de nuevo',
    'error': 'Ha ocurrido un error',
    'yes': 'Sí',
    'no': 'No',

    // Auth
    'login': 'Iniciar sesión',
    'logout': 'Cerrar sesión',
    'email': 'Correo electrónico',
    'password': 'Contraseña',
    'errorWhileLogin': 'Error al iniciar sesión',
    'errorWhileLogout': 'Error al cerrar sesión',

    // Dashboard / Home
    'home': 'Inicio',
    'dashboard': 'Panel de control',
    'welcome': 'Bienvenido, {name}',

    // Empleados
    'employees': 'Empleados',
    'employeeDetails': 'Detalles del empleado',
    'errorWhileLoadingEmployees': 'Error al cargar empleados',
    'userCreatedSuccessfully': 'Usuario creado correctamente',
    'accept': 'Aceptar',
    'noEmployees': 'No hay empleados disponibles',
    'createUserEmployee': 'Crear usuario de empleado',
    'employeeCreatedSuccessfully': 'Empleado creado correctamente',
    'employeeUpdatedSuccessfully': 'Empleado actualiza correctamente',



    // Fichaje
    'clockIn': 'Fichar entrada',
    'clockOut': 'Fichar salida',
    'checkInSuccess': 'Entrada registrada correctamente',
    'checkOutSuccess': 'Salida registrada correctamente',
    'errorWhileClockIn': 'Error al registrar la entrada',
    'errorWhileClockOut': 'Error al registrar la salida',
    'attendance': 'Registro de jornada',

    // Reportes
    'reports': 'Reportes',
    'viewReport': 'Ver reporte',
    'errorWhileLoadingReports': 'Error al cargar los reportes',

    // Notificaciones
    'notifications': 'Notificaciones',
    'noNotifications': 'No hay notificaciones nuevas',
    'markAsRead': 'Marcar como leída',

    // Solicitudes de ausencia
    'absenceRequests': 'Solicitudes de ausencia',
    'newAbsenceRequest': 'Nueva solicitud de ausencia',
    'reason': 'Motivo',
    'startDate': 'Fecha de inicio',
    'endDate': 'Fecha de fin',
    'status': 'Estado',
    'pending': 'Pendiente',
    'approved': 'Aprobada',
    'rejected': 'Rechazada',
    'errorWhileLoadingAbsences': 'Error al cargar solicitudes de ausencia',
    'absenceSaved': 'Solicitud guardada correctamente',

    // Otros
    'settings': 'Configuración',
    'profile': 'Perfil',
    'updateSuccess': 'Actualización completada con éxito',
  };

  // // Si no existe la cadena para "label", se mostrará "[label]"
  static String _get(String label) =>
      _strings[label] ?? '[${label.toUpperCase()}]';

  // General
  String get close => _get('close');
  String get confirm => _get('confirm');
  String get cancel => _get('cancel');
  String get save => _get('save');
  String get delete => _get('delete');
  String get edit => _get('edit');
  String get loading => _get('loading');
  String get tryAgain => _get('tryAgain');
  String get error => _get('error');
  String get yes => _get('yes');
  String get no => _get('no');

  // Auth
  String get login => _get('login');
  String get logout => _get('logout');
  String get email => _get('email');
  String get password => _get('password');
  String get errorWhileLogin => _get('errorWhileLogin');
  String get errorWhileLogout => _get('errorWhileLogout');

  // Dashboard
  String get dashboard => _get('dashboard');
  String welcome(String name) =>
      _get('welcome').replaceAll('{name}', name);

  // Empleados
  String get employees => _get('employees');
  String get employeeDetails => _get('employeeDetails');
  String get errorWhileLoadingEmployees =>
      _get('errorWhileLoadingEmployees');
      // Usuarios / Empleados
String get userCreatedSuccessfully =>
    _get('userCreatedSuccessfully');
String get accept => _get('accept');
String get noEmployees => _get('noEmployees');


  String get createEmployee => 'Crear empleado';
  String get employeeCreatedSuccessfully => 'Empleado creado correctamente';
  String get employeeUpdatedSuccessfully => 'Empleado actualiza correctamente';
  String get createUserEmployee => 'Crear usuario de empleado';
  String get updateEmployee => 'Actualizar empleado';
  String get loadAllEmployees => 'Cargar todos los empleados';
  String get loadUsers => 'Cargar usuarios';
  String get loadEmpresas => 'Cargar empresas';

  // Fichaje
  String get clockIn => _get('clockIn');
  String get clockOut => _get('clockOut');
  String get checkInSuccess => _get('checkInSuccess');
  String get checkOutSuccess => _get('checkOutSuccess');
  String get errorWhileClockIn => _get('errorWhileClockIn');
  String get errorWhileClockOut => _get('errorWhileClockOut');
  String get attendance => _get('attendance');

  // Reportes
  String get reports => _get('reports');
  String get viewReport => _get('viewReport');
  String get errorWhileLoadingReports => _get('errorWhileLoadingReports');

  // Notificaciones
  String get notifications => _get('notifications');
  String get noNotifications => _get('noNotifications');
  String get markAsRead => _get('markAsRead');

  // Solicitudes de ausencia
  String get absenceRequests => _get('absenceRequests');
  String get newAbsenceRequest => _get('newAbsenceRequest');
  String get reason => _get('reason');
  String get startDate => _get('startDate');
  String get endDate => _get('endDate');
  String get status => _get('status');
  String get pending => _get('pending');
  String get approved => _get('approved');
  String get rejected => _get('rejected');
  String get errorWhileLoadingAbsences =>
      _get('errorWhileLoadingAbsences');
  String get absenceSaved => _get('absenceSaved');

  // Otros
  String get settings => _get('settings');
  String get profile => _get('profile');
  String get updateSuccess => _get('updateSuccess');
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  @override
  bool isSupported(Locale locale) => ['es', 'en'].contains(locale.languageCode);

//cómo obtener el objeto de traducciones.
  @override
  Future<AppLocalization> load(Locale locale) {
    return SynchronousFuture(AppLocalization());
  }

//si Flutter debe recargar las traducciones si algo cambia.
  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalization> old) =>
      false;
}

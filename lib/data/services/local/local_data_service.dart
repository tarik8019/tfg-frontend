
import 'package:flutter/services.dart';
import 'package:mijornada/utils/result.dart';
import '../../../config/assets.dart';
import '../../../domain/models/asignacion_turno/dominio/asignacion_turno.dart';
import '../../../domain/models/correccion_fichaje/dominio/correccion_fichaje.dart';
import '../../../domain/models/disponibilidad/disponibilidad.dart';
import '../../../domain/models/documento_empleado/documento_empleado.dart';
import '../../../domain/models/empleado/dominio/empleado.dart';
import '../../../domain/models/empresa/dominio/empresa.dart';
import '../../../domain/models/fichaje/fichaje.dart';
import '../../../domain/models/notificacion/notificacion.dart';
import '../../../domain/models/regla_turno/regla_turno.dart';
import '../../../domain/models/reporte/reporte.dart';
import '../../../domain/models/sede/dominio/sede.dart';
import '../../../domain/models/solicitud_ausencia/solicitud_ausencia.dart';
import '../../../domain/models/turno/dominio/turno.dart';
import '../../../domain/models/user/dominio/user.dart';
import '../api/model/asignacion_turno/asignacion_turno_api_model.dart';
import '../api/model/correccion_fichaje/correccion_fichaje_api_model.dart';
import '../api/model/disponibilidad/disponibilidad_api_model.dart';
import '../api/model/documento_empleado/documento_empleado_api_model.dart';
import '../api/model/empleado/empleado_api_model.dart';
import '../api/model/empresa/empresa_api_model.dart';
import '../api/model/fichaje/fichaje_api_model.dart';
import '../api/model/notificacion/notificacion_api_model.dart';
import '../api/model/regla_turno/regla_turno_api_model.dart';
import '../api/model/reporte/reporte_api_model.dart';
import '../api/model/sede/sede_api_model.dart';
import '../api/model/solicitud_ausencia/solicitud_ausencia_api_model.dart';
import '../api/model/turno/turno_api_model.dart';
import '../api/model/user/user_api_model.dart';

class LocalDataService {
 
// ---------------- USUARIOS ----------------

    Future<Result<List<User>>> getUsuarios() {
    throw UnimplementedError();
  }

  Future<Result<User>> getUsuarioById(int id) {
    throw UnimplementedError();
  }

  Future<Result<User>> addUsuario(UserApiModel userApi) {
    throw UnimplementedError();
  }

  Future<Result<User>> updateUsuario(UserApiModel userApi) {
    throw UnimplementedError();
  }

  Future<Result<void>> deleteUsuario(int id) {
    throw UnimplementedError();
  }

  Future<Result<User>> setUsuarioActivo(int idUsuario, bool activo) {
    throw UnimplementedError();
  }

  Future<Result<User>> createUsuarioConEmpleado({
    required UserApiModel userApi,
    required EmpleadoApiModel empleadoApi,
  }) {
    throw UnimplementedError();
  }

  Future<Result<void>> deleteUsuarioConEmpleado(int idEmpleado) {
    throw UnimplementedError();
  }


// ---------------- EMPLEADOS ----------------
  Future<Result<List<Empleado>>> getEmpleados() {
    throw UnimplementedError();
  }
Future<Result<Empleado>> getEmpleadoById(int id) {
  throw UnimplementedError();
}
Future<Result<Empleado>> addEmpleado(EmpleadoApiModel empleadoApi) {
  throw UnimplementedError();
}
Future<Result<Empleado>> updateEmpleado(EmpleadoApiModel empleadoApi) {
  throw UnimplementedError();
}
Future<Result<void>> deleteEmpleado(int id) {
  throw UnimplementedError();
}
Future<Result<Empleado>> setEmpleado(int idEmpleado, bool activo) {
  throw UnimplementedError();
}
Future<Result<Empleado>> createEmpleadoConUsuario({
  required UserApiModel userApi,
  required EmpleadoApiModel empleadoApi,
}) {
  throw UnimplementedError();
}
Future<Result<void>> deleteEmpleadoConUsuario(int idEmpleado) {
  throw UnimplementedError();
}

// ---------------- ASIGNACIONES DE TURNO ----------------

Future<Result<List<AsignacionTurno>>> getAsignacionesTurno() {
  throw UnimplementedError();
}
Future<Result<AsignacionTurno>> getAsignacionTurnoById(int id) {
  throw UnimplementedError();
}
Future<Result<AsignacionTurno>> addAsignacionTurno(AsignacionTurnoApiModel asignacionApi) {
  throw UnimplementedError();
}
Future<Result<AsignacionTurno>> updateAsignacionTurno(AsignacionTurnoApiModel asignacionApi) {
  throw UnimplementedError();
}
Future<Result<void>> deleteAsignacionTurno(int id) {
  throw UnimplementedError();
}
Future<Result<List<AsignacionTurno>>> getAsignacionesPorEmpleado(int idEmpleado) {
  throw UnimplementedError();
}
Future<Result<AsignacionTurno>> asignarTurnoAEmpleado({
  required int idEmpleado,
  required int idTurno,
  required DateTime fechaInicio,
  DateTime? fechaFin,
}) {
  throw UnimplementedError();
}
Future<Result<AsignacionTurno>> finalizarAsignacionTurno(int idAsignacion) {
  throw UnimplementedError();
}

// ---------------- CORRECCIONES DE FICHAJE ----------------

Future<Result<List<CorreccionFichaje>>> getCorreccionesFichaje() {
  throw UnimplementedError();
}
Future<Result<CorreccionFichaje>> getCorreccionFichajeById(int id) {
  throw UnimplementedError();
}
Future<Result<CorreccionFichaje>> addCorreccionFichaje(CorreccionFichajeApiModel correccionApi) {
  throw UnimplementedError();
}
Future<Result<CorreccionFichaje>> updateCorreccionFichaje(CorreccionFichajeApiModel correccionApi) {
  throw UnimplementedError();
}
Future<Result<void>> deleteCorreccionFichaje(int id) {
  throw UnimplementedError();
}
Future<Result<List<CorreccionFichaje>>> getCorreccionesPorEmpleado(int idEmpleado) {
  throw UnimplementedError();
}
Future<Result<CorreccionFichaje>> aprobarCorreccionFichaje(int idCorreccion) {
  throw UnimplementedError();
}
Future<Result<CorreccionFichaje>> rechazarCorreccionFichaje(int idCorreccion, {String? motivo}) {
  throw UnimplementedError();
}

// ---------------- DISPONIBILIDADES ----------------

Future<Result<List<Disponibilidad>>> getDisponibilidades() {
  throw UnimplementedError();
}
Future<Result<Disponibilidad>> getDisponibilidadById(int id) {
  throw UnimplementedError();
}
Future<Result<List<Disponibilidad>>> getDisponibilidadesPorEmpleado(int idEmpleado) {
  throw UnimplementedError();
}
Future<Result<Disponibilidad>> addDisponibilidad(DisponibilidadApiModel disponibilidadApi) {
  throw UnimplementedError();
}
Future<Result<Disponibilidad>> updateDisponibilidad(DisponibilidadApiModel disponibilidadApi) {
  throw UnimplementedError();
}
Future<Result<void>> deleteDisponibilidad(int id) {
  throw UnimplementedError();
}
Future<Result<Disponibilidad>> setEstadoDisponibilidad(int idDisponibilidad, String nuevoEstado) {
  throw UnimplementedError();
}
Future<Result<List<Disponibilidad>>> getDisponibilidadesPorFecha({
  required DateTime desde,
  required DateTime hasta,
}) {
  throw UnimplementedError();
}

// ---------------- DOCUMENTOS EMPLEADO ----------------

Future<Result<List<DocumentoEmpleado>>> getDocumentos() {
  throw UnimplementedError();
}
Future<Result<List<DocumentoEmpleado>>> getDocumentosPorEmpleado(int idEmpleado) {
  throw UnimplementedError();
}
Future<Result<DocumentoEmpleado>> getDocumentoById(int id) {
  throw UnimplementedError();
}
Future<Result<DocumentoEmpleado>> addDocumentoEmpleado(DocumentoEmpleadoApiModel documentoApi) {
  throw UnimplementedError();
}
Future<Result<DocumentoEmpleado>> updateDocumentoEmpleado(DocumentoEmpleadoApiModel documentoApi) {
  throw UnimplementedError();
}
Future<Result<void>> deleteDocumentoEmpleado(int id) {
  throw UnimplementedError();
}
Future<Result<Uint8List>> downloadDocumentoEmpleado(int id) {
  throw UnimplementedError();
}
Future<Result<DocumentoEmpleado>> setEstadoDocumentoEmpleado(int idDocumento, String nuevoEstado) {
  throw UnimplementedError();
}

// ---------------- EMPRESA ----------------


Future<Result<List<Empresa>>> getEmpresas() {
  throw UnimplementedError();
}
Future<Result<Empresa>> getEmpresaById(int id) {
  throw UnimplementedError();
}
Future<Result<Empresa>> addEmpresa(EmpresaApiModel empresaApi) {
  throw UnimplementedError();
}
Future<Result<Empresa>> updateEmpresa(EmpresaApiModel empresaApi) {
  throw UnimplementedError();
}
Future<Result<void>> deleteEmpresa(int id) {
  throw UnimplementedError();
}
Future<Result<Empresa>> getEmpresaActual() {
  throw UnimplementedError();
}

// ---------------- FICHAJE ----------------

Future<Result<List<Fichaje>>> getFichajes() {
  throw UnimplementedError();
}
Future<Result<Fichaje>> getFichajeById(int id) {
  throw UnimplementedError();
}
Future<Result<Fichaje>> addFichaje(FichajeApiModel fichajeApi) {
  throw UnimplementedError();
}
Future<Result<Fichaje>> updateFichaje(FichajeApiModel fichajeApi) {
  throw UnimplementedError();
}
Future<Result<void>> deleteFichaje(int id) {
  throw UnimplementedError();
}
Future<Result<List<Fichaje>>> getFichajesByEmpleado(int idEmpleado) {
  throw UnimplementedError();
}


// ---------------- NOTIFICACION ----------------

Future<Result<List<Notificacion>>> getNotificaciones() {
  throw UnimplementedError();
}
Future<Result<Notificacion>> getNotificacionById(int id) {
  throw UnimplementedError();
}
Future<Result<Notificacion>> addNotificacion(NotificacionApiModel notificacionApi) {
  throw UnimplementedError();
}
Future<Result<Notificacion>> updateNotificacion(NotificacionApiModel notificacionApi) {
  throw UnimplementedError();
}
Future<Result<void>> deleteNotificacion(int id) {
  throw UnimplementedError();
}
Future<Result<List<Notificacion>>> getNotificacionesByEmpleado(int idEmpleado) {
  throw UnimplementedError();
}

// ---------------- REGLA TURNO ----------------

Future<Result<List<ReglaTurno>>> getReglasTurno() {
  throw UnimplementedError();
}
Future<Result<ReglaTurno>> getReglaTurnoById(int id) {
  throw UnimplementedError();
}
Future<Result<ReglaTurno>> addReglaTurno(ReglaTurnoApiModel reglaApi) {
  throw UnimplementedError();
}
Future<Result<ReglaTurno>> updateReglaTurno(ReglaTurnoApiModel reglaApi) {
  throw UnimplementedError();
}
Future<Result<void>> deleteReglaTurno(int id) {
  throw UnimplementedError();
}
Future<Result<List<ReglaTurno>>> getReglasTurnoByEmpleado(int idEmpleado) {
  throw UnimplementedError();
}

// ---------------- REPORTE ----------------

Future<Result<List<Reporte>>> getReportes() {
  throw UnimplementedError();
}
Future<Result<Reporte>> getReporteById(int id) {
  throw UnimplementedError();
}
Future<Result<Reporte>> addReporte(ReporteApiModel reporteApi) {
  throw UnimplementedError();
}
Future<Result<Reporte>> updateReporte(ReporteApiModel reporteApi) {
  throw UnimplementedError();
}
Future<Result<void>> deleteReporte(int id) {
  throw UnimplementedError();
}
Future<Result<List<Reporte>>> getReportesByEmpleado(int idEmpleado) {
  throw UnimplementedError();
}

// ---------------- SEDE ----------------

Future<Result<List<Sede>>> getSedes() {
  throw UnimplementedError();
}
Future<Result<Sede>> getSedeById(int id) {
  throw UnimplementedError();
}
Future<Result<Sede>> postSede(SedeApiModel sedeApi) {
  throw UnimplementedError();
}
Future<Result<Sede>> updateSede(SedeApiModel sedeApi) {
  throw UnimplementedError();
}
Future<Result<void>> deleteSede(int id) {
  throw UnimplementedError();
}

// ---------------- SOLICITUD AUSENCIA ----------------

Future<Result<List<SolicitudAusencia>>> getSolicitudesAusencia() {
  throw UnimplementedError();
}
Future<Result<SolicitudAusencia>> getSolicitudAusenciaById(int id) {
  throw UnimplementedError();
}
Future<Result<SolicitudAusencia>> postSolicitudAusencia(SolicitudAusenciaApiModel solicitudApi) {
  throw UnimplementedError();
}
Future<Result<SolicitudAusencia>> updateSolicitudAusencia(SolicitudAusenciaApiModel solicitudApi) {
  throw UnimplementedError();
}
Future<Result<void>> deleteSolicitudAusencia(int id) {
  throw UnimplementedError();
}
Future<Result<List<SolicitudAusencia>>> getSolicitudesByEmpleado(int idEmpleado) {
  throw UnimplementedError();
}

// ---------------- TURNO ----------------

Future<Result<List<Turno>>> getTurnos() {
  throw UnimplementedError();
}
Future<Result<Turno>> getTurnoById(int id) {
  throw UnimplementedError();
}
Future<Result<Turno>> postTurno(TurnoApiModel turnoApi) {
  throw UnimplementedError();
}
Future<Result<Turno>> updateTurno(TurnoApiModel turnoApi) {
  throw UnimplementedError();
}
Future<Result<void>> deleteTurno(int id) {
  throw UnimplementedError();
}

}
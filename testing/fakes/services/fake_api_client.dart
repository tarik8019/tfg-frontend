import 'package:mijornada/data/mappers/asignacion_turno_mapper.dart';
import 'package:mijornada/data/mappers/departamento_mapper.dart';
import 'package:mijornada/data/mappers/empleado_mapper.dart';
import 'package:mijornada/data/mappers/fichaje_mapper.dart';
import 'package:mijornada/data/mappers/sede_mapper.dart';
import 'package:mijornada/data/mappers/turno_mapper.dart';
import 'package:mijornada/data/mappers/user_mapper.dart';
import 'package:mijornada/data/services/api/api_client.dart';
import 'package:mijornada/data/services/api/model/asignacion_turno/create/asignacion_turno_create_api_model.dart';
import 'package:mijornada/data/services/api/model/asignacion_turno/update/asignacion_turno_update_api_model.dart';
import 'package:mijornada/data/services/api/model/correccion_fichaje/correccion_fichaje_api_model.dart';
import 'package:mijornada/data/services/api/model/departamento/create/departamento_create_api_model.dart';
import 'package:mijornada/data/services/api/model/departamento/departamento_api_model.dart';
import 'package:mijornada/data/services/api/model/departamento/update/departamento_update_api_model.dart';
import 'package:mijornada/data/services/api/model/disponibilidad/disponibilidad_api_model.dart';
import 'package:mijornada/data/services/api/model/documento_empleado/documento_empleado_api_model.dart';
import 'package:mijornada/data/services/api/model/empleado/create/empleado_create_api_model.dart';
import 'package:mijornada/data/services/api/model/empleado/empleado_api_model.dart';
import 'package:mijornada/data/services/api/model/empleado/update/empleado_update_api_model.dart';
import 'package:mijornada/data/services/api/model/empresa/empresa_api_model.dart';
import 'package:mijornada/data/services/api/model/fichaje/create/fichaje_create_api_model.dart';
import 'package:mijornada/data/services/api/model/fichaje/fichaje_api_model.dart';
import 'package:mijornada/data/services/api/model/fichaje/fichajes_empleado_api_model.dart';
import 'package:mijornada/data/services/api/model/fichaje/fichajes_por_dia_api_model.dart';
import 'package:mijornada/data/services/api/model/notificacion/notificacion_api_model.dart';
import 'package:mijornada/data/services/api/model/regla_turno/regla_turno_api_model.dart';
import 'package:mijornada/data/services/api/model/reporte/reporte_api_model.dart';
import 'package:mijornada/data/services/api/model/responsable/dominio/responsable_api_model.dart';
import 'package:mijornada/data/services/api/model/responsable_empleado/dominio/responsable_empleado_api_model.dart';
import 'package:mijornada/data/services/api/model/sede/create/sede_create_api_model.dart';
import 'package:mijornada/data/services/api/model/sede/sede_api_model.dart';
import 'package:mijornada/data/services/api/model/sede/update/sede_update_api_model.dart';
import 'package:mijornada/data/services/api/model/solicitud_ausencia/solicitud_ausencia_api_model.dart';
import 'package:mijornada/data/services/api/model/turno/create/turno_create_api_model.dart';
import 'package:mijornada/data/services/api/model/turno/turno_api_model.dart';
import 'package:mijornada/data/services/api/model/asignacion_turno/asignacion_turno_api_model.dart';
import 'package:mijornada/data/services/api/model/turno/update/turno_update_api_model.dart';
import 'package:mijornada/data/services/api/model/user/user_api_model.dart';
import 'package:mijornada/domain/models/departamento/dominio/departamento.dart';
import 'package:mijornada/domain/models/turno/dominio/turno.dart';
import 'package:mijornada/utils/result.dart';

import '../../models/asignacionTurno.dart';
import '../../models/departamento.dart';
import '../../models/empleado.dart';
import '../../models/fichaje.dart';
import '../../models/sede.dart';
import '../../models/turno.dart';
import '../../models/user.dart';



class FakeApiClient implements ApiClient {
  // Contador para simular requests
  int requestCount = 0;

  // Listas internas
   List<DepartamentoApiModel> departamentos = [];
   List<EmpleadoApiModel> empleados = [];
   List<TurnoApiModel> turnos = [];
   List<AsignacionTurnoApiModel> asignacionesTurno = [];
   List<UserApiModel> usuarios = [];
   List<SedeApiModel> sedes = [];
   List<FichajeApiModel> fichajes = [];



  // ----------------- DEPARTAMENTOS -----------------
  @override
  Future<Result<List<DepartamentoApiModel>>> getDepartamentos() async {
    requestCount++;
    return Result.ok([kDepartamentoApiModel]);
  }

  @override
  Future<Result<DepartamentoApiModel>> createDepartamento(DepartamentoCreateApiModel model) async {
    requestCount++;
    final newDep = model.createApiModel().copyWith(idDepartamento: departamentos.length);
    departamentos.add(newDep);
    return Result.ok(newDep);
  }

  // ----------------- EMPLEADOS -----------------
  @override
  Future<Result<List<EmpleadoApiModel>>> getEmpleados() async {
    requestCount++;
    return Result.ok([kEmpleadoApiModel]);
  }

  @override
  Future<Result<EmpleadoApiModel>> createEmpleado(EmpleadoCreateApiModel model) async {
    requestCount++;
    final newEmp = model.createEmpleadoToApiModel().copyWith(idEmpleado: empleados.length);
    empleados.add(newEmp);
    return Result.ok(newEmp);
  }

  @override
  Future<Result<EmpleadoApiModel>> updateEmpleado(EmpleadoUpdateApiModel model) async {
    requestCount++;
    final index = empleados.indexWhere((e) => e.idEmpleado == model.idEmpleado);
    if (index == -1) return Result.error(Exception('Empleado no encontrado'));

    final updated = model.updateEmpleadoToApiModel();
    empleados[index] = updated;
    return Result.ok(updated);
  }

  @override
  Future<Result<void>> deleteEmpleado(int id) async {
    requestCount++;
    empleados.removeWhere((e) => e.idEmpleado == id);
    return const Result.ok(null);
  }

  @override
  Future<Result<EmpleadoApiModel>> setEmpleadoActivo(int idEmpleado, bool activo) async {
    requestCount++;
    final index = empleados.indexWhere((e) => e.idEmpleado == idEmpleado);
    if (index == -1) return Result.error(Exception('Empleado no encontrado'));

    empleados[index] = empleados[index].copyWith(isActivo: activo);
    return Result.ok(empleados[index]);
  }

  // ----------------- TURNOS -----------------
  @override
  Future<Result<List<TurnoApiModel>>> getTurnos() async {
    requestCount++;
    return Result.ok([kTurnoApiModel]);
  }

  @override
  Future<Result<TurnoApiModel>> createTurno(TurnoCreateApiModel model) async {
    requestCount++;
    final newTurno = model.createToApiModel().copyWith(idTurno: turnos.length);
    turnos.add(newTurno);
    return Result.ok(newTurno);
  }

  // ----------------- ASIGNACIONES -----------------
  @override
  Future<Result<List<AsignacionTurnoApiModel>>> getAsignacionTurnos() async {
    requestCount++;
    return Result.ok([kAsignacionTurnoApiModel]);
  }

  @override
  Future<Result<AsignacionTurnoApiModel>> createAsignacionTurno(AsignacionTurnoCreateApiModel model) async {
    requestCount++;
    final newAsig = model.createToApiModel().copyWith(idAsignacion: asignacionesTurno.length);
    asignacionesTurno.add(newAsig);
    return Result.ok(newAsig);
  }

  // ----------------- USUARIOS -----------------
  @override
  Future<Result<List<UserApiModel>>> getUsuarios() async {
    requestCount++;
    return Result.ok(List.from(usuarios));
  }

  @override
  Future<Result<UserApiModel>> createUsuario(UserApiModel model) async {
    requestCount++;
    final newUser = model.createToApiModel().copyWith(id: usuarios.length);
    usuarios.add(newUser);
    return Result.ok(newUser);
  }

  @override
  Future<Result<void>> setUsuarioActivo(int idUsuario, bool activo) async {
    requestCount++;
    final index = usuarios.indexWhere((u) => u.id == idUsuario);
    if (index != -1) {
      usuarios[index] = usuarios[index].copyWith(isActivo: activo);
    }
    return const Result.ok(null);
  }

  // ----------------- SEDES -----------------
  @override
  Future<Result<List<SedeApiModel>>> getSedes() async {
    requestCount++;
    return Result.ok(List.from(sedes));
  }

  @override
  Future<Result<SedeApiModel>> getSedeById(int id) async {
    requestCount++;
    final sede = sedes.firstWhere((s) => s.idSede == id, orElse: () => throw Exception('Sede no encontrada'));
    return Result.ok(sede);
  }

  @override
  Future<Result<SedeApiModel>> createSede(SedeCreateApiModel model) async {
    requestCount++;
    final newSede = model.createToApiModel().copyWith(idSede: sedes.length);
    sedes.add(newSede);
    return Result.ok(newSede);
  }

  @override
  Future<Result<SedeApiModel>> updateSede(SedeUpdateApiModel model) async {
    requestCount++;
    final index = sedes.indexWhere((s) => s.idSede == model.idSede);
    if (index == -1) return Result.error(Exception('Sede no encontrada'));

    final updated = model.updateToApiModel();
    sedes[index] = updated;
    return Result.ok(updated);
  }
    @override
  Future<Result<EmpleadoApiModel>> getEmpleadoByEmail(String email) async {
    requestCount++;
    try {
      // Buscar empleado por email (case-insensitive)
      final empleado = empleados.firstWhere(
        (e) => e.email!.toLowerCase() == email.toLowerCase(),
        orElse: () => throw Exception('Empleado no encontrado'),
      );
      return Result.ok(empleado);
    } catch (e) {
      return Result.error(Exception('Empleado no encontrado'));
    }
  }


  @override
  Future<Result<void>> deleteSede(int id) async {
    requestCount++;
    sedes.removeWhere((s) => s.idSede == id);
    return const Result.ok(null);
  }

  // ----------------- Auth -----------------
  @override
  AuthHeaderProvider? authHeaderProvider;
  
  @override
  Future<Result<void>> asignarRolUsuario(int idUsuario, String rol) {
    // TODO: implement asignarRolUsuario
    throw UnimplementedError();
  }
  
  @override
  Future<Result<ResponsableApiModel?>> createResponsable(ResponsableApiModel responsableApi) {
    // TODO: implement createResponsable
    throw UnimplementedError();
  }
  
  @override
  Future<Result<ResponsableEmpleadoApiModel?>> createResponsableEmpleado(ResponsableEmpleadoApiModel responsableEmpleadoApi) {
    // TODO: implement createResponsableEmpleado
    throw UnimplementedError();
  }
  
  @override
  Future<Result<void>> deleteAsignacionTurno(int id) {
    // TODO: implement deleteAsignacionTurno
    throw UnimplementedError();
  }
  
  @override
  Future<Result<void>> deleteCorreccionFichaje(int id) {
    // TODO: implement deleteCorreccionFichaje
    throw UnimplementedError();
  }
  
  @override
  Future<Result<void>> deleteDepartamento(int id) {
    // TODO: implement deleteDepartamento
    throw UnimplementedError();
  }
  
  @override
  Future<Result<void>> deleteDisponibilidad(int id) {
    // TODO: implement deleteDisponibilidad
    throw UnimplementedError();
  }
  
  @override
  Future<Result<void>> deleteDocumentoEmpleado(int id) {
    // TODO: implement deleteDocumentoEmpleado
    throw UnimplementedError();
  }
  
  @override
  Future<Result<void>> deleteEmpresa(int id) {
    // TODO: implement deleteEmpresa
    throw UnimplementedError();
  }
  
  @override
  Future<Result<void>> deleteFichaje(int id) {
    // TODO: implement deleteFichaje
    throw UnimplementedError();
  }
  
  @override
  Future<Result<void>> deleteNotificacion(int id) {
    // TODO: implement deleteNotificacion
    throw UnimplementedError();
  }
  
  @override
  Future<Result<void>> deleteReglaTurno(int id) {
    // TODO: implement deleteReglaTurno
    throw UnimplementedError();
  }
  
  @override
  Future<Result<void>> deleteReporte(int id) {
    // TODO: implement deleteReporte
    throw UnimplementedError();
  }
  
  @override
  Future<Result<void>> deleteResponsable(int id) {
    // TODO: implement deleteResponsable
    throw UnimplementedError();
  }
  
  @override
  Future<Result<void>> deleteResponsableEmpleado(int id) {
    // TODO: implement deleteResponsableEmpleado
    throw UnimplementedError();
  }
  
  @override
  Future<Result<void>> deleteSolicitudAusencia(int id) {
    // TODO: implement deleteSolicitudAusencia
    throw UnimplementedError();
  }
  
  @override
  Future<Result<void>> deleteTurno(int id) {
    // TODO: implement deleteTurno
    throw UnimplementedError();
  }
  
  @override
  Future<Result<void>> deleteUsuario(int id) {
    // TODO: implement deleteUsuario
    throw UnimplementedError();
  }
  
  @override
  Future<Result<AsignacionTurnoApiModel>> getAsignacionTurnoById(int id) {
    // TODO: implement getAsignacionTurnoById
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<AsignacionTurnoApiModel>>> getAsignacionTurnosBySede(int idSede) {
    // TODO: implement getAsignacionTurnosBySede
    throw UnimplementedError();
  }
  
  @override
  Future<Result<CorreccionFichajeApiModel>> getCorreccionFichajeById(int id) {
    // TODO: implement getCorreccionFichajeById
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<CorreccionFichajeApiModel>>> getCorreccionFichajesByEmpleado(int idEmpleado) {
    // TODO: implement getCorreccionFichajesByEmpleado
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<CorreccionFichajeApiModel>>> getCorreccionesFichaje() {
    // TODO: implement getCorreccionesFichaje
    throw UnimplementedError();
  }
  
  @override
  Future<Result<DepartamentoApiModel>> getDepartamentoById(int id) {
    // TODO: implement getDepartamentoById
    throw UnimplementedError();
  }
  
  @override
  Future<Result<DepartamentoApiModel>> getDepartamentoByNombre(int idEmpresa, String nombre) {
    // TODO: implement getDepartamentoByNombre
    throw UnimplementedError();
  }
  
  @override
  Future<Result<DisponibilidadApiModel>> getDisponibilidadById(int id) {
    // TODO: implement getDisponibilidadById
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<DisponibilidadApiModel>>> getDisponibilidades() {
    // TODO: implement getDisponibilidades
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<DisponibilidadApiModel>>> getDisponibilidadesByEmpleado(int idEmpleado) {
    // TODO: implement getDisponibilidadesByEmpleado
    throw UnimplementedError();
  }
  
  @override
  Future<Result<DocumentoEmpleadoApiModel>> getDocumentoEmpleadoById(int id) {
    // TODO: implement getDocumentoEmpleadoById
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<DocumentoEmpleadoApiModel>>> getDocumentoEmpleados() {
    // TODO: implement getDocumentoEmpleados
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<DocumentoEmpleadoApiModel>>> getDocumentosByEmpleado(int idEmpleado) {
    // TODO: implement getDocumentosByEmpleado
    throw UnimplementedError();
  }
  
  @override
  Future<Result<EmpleadoApiModel>> getEmpleadoById(int id) {
    // TODO: implement getEmpleadoById
    throw UnimplementedError();
  }
  
  @override
  Future<Result<EmpresaApiModel>> getEmpresaByEmpleado(int idEmpleado) {
    // TODO: implement getEmpresaByEmpleado
    throw UnimplementedError();
  }
  
  @override
  Future<Result<EmpresaApiModel>> getEmpresaById(int id) {
    // TODO: implement getEmpresaById
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<EmpresaApiModel>>> getEmpresas() {
    // TODO: implement getEmpresas
    throw UnimplementedError();
  }
  
  @override
  Future<Result<FichajeApiModel>> getFichajeById(int id) {
    // TODO: implement getFichajeById
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<FichajeApiModel>>> getFichajes() {
    // TODO: implement getFichajes
    throw UnimplementedError();
  }
 
  
  @override
  Future<Result<NotificacionApiModel>> getNotificacionById(int id) {
    // TODO: implement getNotificacionById
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<NotificacionApiModel>>> getNotificaciones() {
    // TODO: implement getNotificaciones
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<NotificacionApiModel>>> getNotificacionesByUsuario(int idUsuario) {
    // TODO: implement getNotificacionesByUsuario
    throw UnimplementedError();
  }
  
  @override
  Future<Result<ReglaTurnoApiModel>> getReglaTurnoById(int id) {
    // TODO: implement getReglaTurnoById
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<ReglaTurnoApiModel>>> getReglasByTipo(String tipo) {
    // TODO: implement getReglasByTipo
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<ReglaTurnoApiModel>>> getReglasTurno() {
    // TODO: implement getReglasTurno
    throw UnimplementedError();
  }
  
  @override
  Future<Result<ReporteApiModel>> getReporteById(int id) {
    // TODO: implement getReporteById
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<ReporteApiModel>>> getReportes() {
    // TODO: implement getReportes
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<ReporteApiModel>>> getReportesByTipo(String tipo) {
    // TODO: implement getReportesByTipo
    throw UnimplementedError();
  }
  
  @override
  Future<Result<ResponsableApiModel>> getResponsableById(int id) {
    // TODO: implement getResponsableById
    throw UnimplementedError();
  }
  
  @override
  Future<Result<ResponsableEmpleadoApiModel>> getResponsableEmpleadoById(int id) {
    // TODO: implement getResponsableEmpleadoById
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<ResponsableApiModel>>> getResponsables() {
    // TODO: implement getResponsables
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<ResponsableEmpleadoApiModel>>> getResponsablesEmpleado() {
    // TODO: implement getResponsablesEmpleado
    throw UnimplementedError();
  }
  
  @override
  Future<Result<SolicitudAusenciaApiModel>> getSolicitudAusenciaById(int id) {
    // TODO: implement getSolicitudAusenciaById
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<SolicitudAusenciaApiModel>>> getSolicitudesAusencia() {
    // TODO: implement getSolicitudesAusencia
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<SolicitudAusenciaApiModel>>> getSolicitudesByEmpleado(int idEmpleado) {
    // TODO: implement getSolicitudesByEmpleado
    throw UnimplementedError();
  }
  
  @override
  Future<Result<TurnoApiModel>> getTurnoById(int id) {
    // TODO: implement getTurnoById
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<TurnoApiModel>>> getTurnosBySede(int idSede) {
    // TODO: implement getTurnosBySede
    throw UnimplementedError();
  }
  
  @override
  Future<Result<UserApiModel>> getUsuarioByEmail(String email) {
    // TODO: implement getUsuarioByEmail
    throw UnimplementedError();
  }
  
  @override
  Future<Result<UserApiModel>> getUsuarioById(int id) {
    // TODO: implement getUsuarioById
    throw UnimplementedError();
  }
  
  @override
  Future<Result<CorreccionFichajeApiModel>> postCorreccionFichaje(CorreccionFichajeApiModel apiModel) {
    // TODO: implement postCorreccionFichaje
    throw UnimplementedError();
  }
  
  @override
  Future<Result<DisponibilidadApiModel>> postDisponibilidad(DisponibilidadApiModel apiModel) {
    // TODO: implement postDisponibilidad
    throw UnimplementedError();
  }
  
  @override
  Future<Result<DocumentoEmpleadoApiModel>> postDocumentoEmpleado(DocumentoEmpleadoApiModel apiModel) {
    // TODO: implement postDocumentoEmpleado
    throw UnimplementedError();
  }
  
  @override
  Future<Result<EmpresaApiModel>> postEmpresa(EmpresaApiModel apiModel) {
    // TODO: implement postEmpresa
    throw UnimplementedError();
  }
  
  @override
  Future<Result<FichajeApiModel>> postFichaje(FichajeApiModel apiModel) {
    // TODO: implement postFichaje
    throw UnimplementedError();
  }
  
  @override
  Future<Result<NotificacionApiModel>> postNotificacion(NotificacionApiModel apiModel) {
    // TODO: implement postNotificacion
    throw UnimplementedError();
  }
  
  @override
  Future<Result<ReglaTurnoApiModel>> postReglaTurno(ReglaTurnoApiModel apiModel) {
    // TODO: implement postReglaTurno
    throw UnimplementedError();
  }
  
  @override
  Future<Result<ReporteApiModel>> postReporte(ReporteApiModel apiModel) {
    // TODO: implement postReporte
    throw UnimplementedError();
  }
  
  @override
  Future<Result<SolicitudAusenciaApiModel>> postSolicitudAusencia(SolicitudAusenciaApiModel apiModel) {
    // TODO: implement postSolicitudAusencia
    throw UnimplementedError();
  }
  
  @override
  Future<Result<AsignacionTurnoApiModel?>> updateAsignacionTurno(AsignacionTurnoUpdateApiModel turnoApi) {
    // TODO: implement updateAsignacionTurno
    throw UnimplementedError();
  }
  
  @override
  Future<Result<CorreccionFichajeApiModel>> updateCorreccionFichaje(CorreccionFichajeApiModel apiModel) {
    // TODO: implement updateCorreccionFichaje
    throw UnimplementedError();
  }
  
  @override
  Future<Result<DepartamentoApiModel?>> updateDepartamento(DepartamentoUpdateApiModel departamentoApi) {
    // TODO: implement updateDepartamento
    throw UnimplementedError();
  }
  
  @override
  Future<Result<DisponibilidadApiModel>> updateDisponibilidad(DisponibilidadApiModel apiModel) {
    // TODO: implement updateDisponibilidad
    throw UnimplementedError();
  }
  
  @override
  Future<Result<DocumentoEmpleadoApiModel>> updateDocumentoEmpleado(DocumentoEmpleadoApiModel apiModel) {
    // TODO: implement updateDocumentoEmpleado
    throw UnimplementedError();
  }
  
  @override
  Future<Result<EmpresaApiModel>> updateEmpresa(EmpresaApiModel apiModel) {
    // TODO: implement updateEmpresa
    throw UnimplementedError();
  }
  
  @override
  Future<Result<FichajeApiModel>> updateFichaje(FichajeApiModel apiModel) {
    // TODO: implement updateFichaje
    throw UnimplementedError();
  }
  
  @override
  Future<Result<NotificacionApiModel>> updateNotificacion(NotificacionApiModel apiModel) {
    // TODO: implement updateNotificacion
    throw UnimplementedError();
  }
  
  @override
  Future<Result<ReglaTurnoApiModel>> updateReglaTurno(ReglaTurnoApiModel apiModel) {
    // TODO: implement updateReglaTurno
    throw UnimplementedError();
  }
  
  @override
  Future<Result<ReporteApiModel>> updateReporte(ReporteApiModel apiModel) {
    // TODO: implement updateReporte
    throw UnimplementedError();
  }
  
  @override
  Future<Result<ResponsableApiModel?>> updateResponsable(ResponsableApiModel responsableApi) {
    // TODO: implement updateResponsable
    throw UnimplementedError();
  }
  
  @override
  Future<Result<ResponsableEmpleadoApiModel?>> updateResponsableEmpleado(ResponsableEmpleadoApiModel responsableEmpleadoApi) {
    // TODO: implement updateResponsableEmpleado
    throw UnimplementedError();
  }
  
  @override
  Future<Result<SolicitudAusenciaApiModel>> updateSolicitudAusencia(SolicitudAusenciaApiModel apiModel) {
    // TODO: implement updateSolicitudAusencia
    throw UnimplementedError();
  }
  
  @override
  Future<Result<TurnoApiModel?>> updateTurno(TurnoUpdateApiModel turnoApi) {
    // TODO: implement updateTurno
    throw UnimplementedError();
  }
  
  @override
  Future<Result<void>> updateUsuario(UserApiModel userApi) {
    // TODO: implement updateUsuario
    throw UnimplementedError();
  }
  
// Crear un fichaje (simulado)
@override
Future<Result<FichajeApiModel>> createFichaje(FichajeApiModel dto) async {
  requestCount++;
  
  // Simular ID incremental basado en la longitud actual
  final newFichaje = dto.copyWith(idFichaje: fichajes.length);
  fichajes.add(newFichaje);

  return Result.ok(newFichaje);
}

// Obtener el último fichaje de un empleado (simulado)
@override
Future<Result<FichajeApiModel?>> getUltimoFichaje(int idEmpleado) async {
  requestCount++;

  try {
    // Filtrar fichajes por empleado y ordenar por fecha descendente
    final fichajesEmpleado = fichajes
        .where((f) => f.idEmpleado == idEmpleado)
        .toList()
      ..sort((a, b) => b.timestamp!.compareTo(a.timestamp!));

    if (fichajesEmpleado.isEmpty) return Result.ok(null);

    return Result.ok(fichajesEmpleado.first);
  } catch (e) {
    return Result.error(Exception('No se pudo obtener el último fichaje'));
  }
}

  @override
  Future<Result<List<AsignacionTurnoApiModel>>> getAsignacionesPorEmpleado(int idEmpleado) {
    // TODO: implement getAsignacionesPorEmpleado
    throw UnimplementedError();
  }

  @override
  Future<Result<EmpleadoApiModel>> getEmpleadoByUsuario(int idUsuario) {
    // TODO: implement getEmpleadoByUsuario
    throw UnimplementedError();
  }

  @override
  Future<Result<List<FichajesEmpleadoApiModel>>> getFichajesHoyAgrupados() {
    // TODO: implement getFichajesHoyAgrupados
    throw UnimplementedError();
  }

  @override
  Future<Result<List<FichajesPorDiaApiModel>>> getFichajesPorEmpleadoAgrupadosPorDia(int idEmpleado) {
    // TODO: implement getFichajesPorEmpleadoAgrupadosPorDia
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<FichajesEmpleadoApiModel>>> getFichajesByEmpleado(int idEmpleado) {
    // TODO: implement getFichajesByEmpleado
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<FichajesPorDiaApiModel>>> getFichajesFiltrados({  String? nombre,
  String? apellidos,
  DateTime? fecha,}) {
    // TODO: implement getFichajesFiltrados
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<FichajeApiModel>>> getFichajesHoyPorEmpleado(int idEmpleado) {
    // TODO: implement getFichajesHoyPorEmpleado
    throw UnimplementedError();
  }

}

  // TODO: dejar los demás métodos como no implementados por ahora
  @override
  Future<Result<void>> deleteDepartamento(int id) => throw UnimplementedError();
  @override
  Future<Result<void>> deleteTurno(int id) => throw UnimplementedError();
  @override
  Future<Result<void>> deleteAsignacionTurno(int id) => throw UnimplementedError();
  @override
  Future<Result<void>> deleteUsuario(int id) => throw UnimplementedError();

  @override
  Future<Result<void>> asignarRolUsuario(int idUsuario, String rol) {
    // TODO: implement asignarRolUsuario
    throw UnimplementedError();
  }

  @override
  Future<Result<ResponsableApiModel?>> createResponsable(ResponsableApiModel responsableApi) {
    // TODO: implement createResponsable
    throw UnimplementedError();
  }

  @override
  Future<Result<ResponsableEmpleadoApiModel?>> createResponsableEmpleado(ResponsableEmpleadoApiModel responsableEmpleadoApi) {
    // TODO: implement createResponsableEmpleado
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> deleteCorreccionFichaje(int id) {
    // TODO: implement deleteCorreccionFichaje
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> deleteDisponibilidad(int id) {
    // TODO: implement deleteDisponibilidad
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> deleteDocumentoEmpleado(int id) {
    // TODO: implement deleteDocumentoEmpleado
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> deleteEmpresa(int id) {
    // TODO: implement deleteEmpresa
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> deleteFichaje(int id) {
    // TODO: implement deleteFichaje
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> deleteNotificacion(int id) {
    // TODO: implement deleteNotificacion
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> deleteReglaTurno(int id) {
    // TODO: implement deleteReglaTurno
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> deleteReporte(int id) {
    // TODO: implement deleteReporte
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> deleteResponsable(int id) {
    // TODO: implement deleteResponsable
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> deleteResponsableEmpleado(int id) {
    // TODO: implement deleteResponsableEmpleado
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> deleteSolicitudAusencia(int id) {
    // TODO: implement deleteSolicitudAusencia
    throw UnimplementedError();
  }

  @override
  Future<Result<AsignacionTurnoApiModel>> getAsignacionTurnoById(int id) {
    // TODO: implement getAsignacionTurnoById
    throw UnimplementedError();
  }

  @override
  Future<Result<List<AsignacionTurnoApiModel>>> getAsignacionTurnosBySede(int idSede) {
    // TODO: implement getAsignacionTurnosBySede
    throw UnimplementedError();
  }

  @override
  Future<Result<CorreccionFichajeApiModel>> getCorreccionFichajeById(int id) {
    // TODO: implement getCorreccionFichajeById
    throw UnimplementedError();
  }

  @override
  Future<Result<List<CorreccionFichajeApiModel>>> getCorreccionFichajesByEmpleado(int idEmpleado) {
    // TODO: implement getCorreccionFichajesByEmpleado
    throw UnimplementedError();
  }

  @override
  Future<Result<List<CorreccionFichajeApiModel>>> getCorreccionesFichaje() {
    // TODO: implement getCorreccionesFichaje
    throw UnimplementedError();
  }

  @override
  Future<Result<DepartamentoApiModel>> getDepartamentoById(int id) {
    // TODO: implement getDepartamentoById
    throw UnimplementedError();
  }

  @override
  Future<Result<DepartamentoApiModel>> getDepartamentoByNombre(int idEmpresa, String nombre) {
    // TODO: implement getDepartamentoByNombre
    throw UnimplementedError();
  }

  @override
  Future<Result<DisponibilidadApiModel>> getDisponibilidadById(int id) {
    // TODO: implement getDisponibilidadById
    throw UnimplementedError();
  }

  @override
  Future<Result<List<DisponibilidadApiModel>>> getDisponibilidades() {
    // TODO: implement getDisponibilidades
    throw UnimplementedError();
  }

  @override
  Future<Result<List<DisponibilidadApiModel>>> getDisponibilidadesByEmpleado(int idEmpleado) {
    // TODO: implement getDisponibilidadesByEmpleado
    throw UnimplementedError();
  }

  @override
  Future<Result<DocumentoEmpleadoApiModel>> getDocumentoEmpleadoById(int id) {
    // TODO: implement getDocumentoEmpleadoById
    throw UnimplementedError();
  }

  @override
  Future<Result<List<DocumentoEmpleadoApiModel>>> getDocumentoEmpleados() {
    // TODO: implement getDocumentoEmpleados
    throw UnimplementedError();
  }

  @override
  Future<Result<List<DocumentoEmpleadoApiModel>>> getDocumentosByEmpleado(int idEmpleado) {
    // TODO: implement getDocumentosByEmpleado
    throw UnimplementedError();
  }

  @override
  Future<Result<EmpleadoApiModel>> getEmpleadoById(int id) {
    // TODO: implement getEmpleadoById
    throw UnimplementedError();
  }

  @override
  Future<Result<EmpresaApiModel>> getEmpresaByEmpleado(int idEmpleado) {
    // TODO: implement getEmpresaByEmpleado
    throw UnimplementedError();
  }

  @override
  Future<Result<EmpresaApiModel>> getEmpresaById(int id) {
    // TODO: implement getEmpresaById
    throw UnimplementedError();
  }

  @override
  Future<Result<List<EmpresaApiModel>>> getEmpresas() {
    // TODO: implement getEmpresas
    throw UnimplementedError();
  }

  @override
  Future<Result<FichajeApiModel>> getFichajeById(int id) {
    // TODO: implement getFichajeById
    throw UnimplementedError();
  }

  @override
  Future<Result<List<FichajeApiModel>>> getFichajes() {
    // TODO: implement getFichajes
    throw UnimplementedError();
  }

  @override
  Future<Result<List<FichajeApiModel>>> getFichajesByEmpleado(int idEmpleado) {
    // TODO: implement getFichajesByEmpleado
    throw UnimplementedError();
  }

  @override
  Future<Result<NotificacionApiModel>> getNotificacionById(int id) {
    // TODO: implement getNotificacionById
    throw UnimplementedError();
  }

  @override
  Future<Result<List<NotificacionApiModel>>> getNotificaciones() {
    // TODO: implement getNotificaciones
    throw UnimplementedError();
  }

  @override
  Future<Result<List<NotificacionApiModel>>> getNotificacionesByUsuario(int idUsuario) {
    // TODO: implement getNotificacionesByUsuario
    throw UnimplementedError();
  }

  @override
  Future<Result<ReglaTurnoApiModel>> getReglaTurnoById(int id) {
    // TODO: implement getReglaTurnoById
    throw UnimplementedError();
  }

  @override
  Future<Result<List<ReglaTurnoApiModel>>> getReglasByTipo(String tipo) {
    // TODO: implement getReglasByTipo
    throw UnimplementedError();
  }

  @override
  Future<Result<List<ReglaTurnoApiModel>>> getReglasTurno() {
    // TODO: implement getReglasTurno
    throw UnimplementedError();
  }

  @override
  Future<Result<ReporteApiModel>> getReporteById(int id) {
    // TODO: implement getReporteById
    throw UnimplementedError();
  }

  @override
  Future<Result<List<ReporteApiModel>>> getReportes() {
    // TODO: implement getReportes
    throw UnimplementedError();
  }

  @override
  Future<Result<List<ReporteApiModel>>> getReportesByTipo(String tipo) {
    // TODO: implement getReportesByTipo
    throw UnimplementedError();
  }

  @override
  Future<Result<ResponsableApiModel>> getResponsableById(int id) {
    // TODO: implement getResponsableById
    throw UnimplementedError();
  }

  @override
  Future<Result<ResponsableEmpleadoApiModel>> getResponsableEmpleadoById(int id) {
    // TODO: implement getResponsableEmpleadoById
    throw UnimplementedError();
  }

  @override
  Future<Result<List<ResponsableApiModel>>> getResponsables() {
    // TODO: implement getResponsables
    throw UnimplementedError();
  }

  @override
  Future<Result<List<ResponsableEmpleadoApiModel>>> getResponsablesEmpleado() {
    // TODO: implement getResponsablesEmpleado
    throw UnimplementedError();
  }
  @override
  Future<Result<SolicitudAusenciaApiModel>> getSolicitudAusenciaById(int id) {
    // TODO: implement getSolicitudAusenciaById
    throw UnimplementedError();
  }

  @override
  Future<Result<List<SolicitudAusenciaApiModel>>> getSolicitudesAusencia() {
    // TODO: implement getSolicitudesAusencia
    throw UnimplementedError();
  }

  @override
  Future<Result<List<SolicitudAusenciaApiModel>>> getSolicitudesByEmpleado(int idEmpleado) {
    // TODO: implement getSolicitudesByEmpleado
    throw UnimplementedError();
  }

  @override
  Future<Result<TurnoApiModel>> getTurnoById(int id) {
    // TODO: implement getTurnoById
    throw UnimplementedError();
  }

  @override
  Future<Result<List<TurnoApiModel>>> getTurnosBySede(int idSede) {
    // TODO: implement getTurnosBySede
    throw UnimplementedError();
  }

  @override
  Future<Result<UserApiModel>> getUsuarioByEmail(String email) {
    // TODO: implement getUsuarioByEmail
    throw UnimplementedError();
  }

  @override
  Future<Result<UserApiModel>> getUsuarioById(int id) {
    // TODO: implement getUsuarioById
    throw UnimplementedError();
  }

  @override
  Future<Result<CorreccionFichajeApiModel>> postCorreccionFichaje(CorreccionFichajeApiModel apiModel) {
    // TODO: implement postCorreccionFichaje
    throw UnimplementedError();
  }

  @override
  Future<Result<DisponibilidadApiModel>> postDisponibilidad(DisponibilidadApiModel apiModel) {
    // TODO: implement postDisponibilidad
    throw UnimplementedError();
  }

  @override
  Future<Result<DocumentoEmpleadoApiModel>> postDocumentoEmpleado(DocumentoEmpleadoApiModel apiModel) {
    // TODO: implement postDocumentoEmpleado
    throw UnimplementedError();
  }

  @override
  Future<Result<EmpresaApiModel>> postEmpresa(EmpresaApiModel apiModel) {
    // TODO: implement postEmpresa
    throw UnimplementedError();
  }

  @override
  Future<Result<FichajeApiModel>> postFichaje(FichajeApiModel apiModel) {
    // TODO: implement postFichaje
    throw UnimplementedError();
  }

  @override
  Future<Result<NotificacionApiModel>> postNotificacion(NotificacionApiModel apiModel) {
    // TODO: implement postNotificacion
    throw UnimplementedError();
  }

  @override
  Future<Result<ReglaTurnoApiModel>> postReglaTurno(ReglaTurnoApiModel apiModel) {
    // TODO: implement postReglaTurno
    throw UnimplementedError();
  }

  @override
  Future<Result<ReporteApiModel>> postReporte(ReporteApiModel apiModel) {
    // TODO: implement postReporte
    throw UnimplementedError();
  }

  @override
  Future<Result<SolicitudAusenciaApiModel>> postSolicitudAusencia(SolicitudAusenciaApiModel apiModel) {
    // TODO: implement postSolicitudAusencia
    throw UnimplementedError();
  }


  @override
  Future<Result<AsignacionTurnoApiModel?>> updateAsignacionTurno(AsignacionTurnoUpdateApiModel turnoApi) {
    // TODO: implement updateAsignacionTurno
    throw UnimplementedError();
  }

  @override
  Future<Result<CorreccionFichajeApiModel>> updateCorreccionFichaje(CorreccionFichajeApiModel apiModel) {
    // TODO: implement updateCorreccionFichaje
    throw UnimplementedError();
  }

  @override
  Future<Result<DepartamentoApiModel?>> updateDepartamento(DepartamentoUpdateApiModel departamentoApi) {
    // TODO: implement updateDepartamento
    throw UnimplementedError();
  }

  @override
  Future<Result<DisponibilidadApiModel>> updateDisponibilidad(DisponibilidadApiModel apiModel) {
    // TODO: implement updateDisponibilidad
    throw UnimplementedError();
  }

  @override
  Future<Result<DocumentoEmpleadoApiModel>> updateDocumentoEmpleado(DocumentoEmpleadoApiModel apiModel) {
    // TODO: implement updateDocumentoEmpleado
    throw UnimplementedError();
  }


  @override
  Future<Result<EmpresaApiModel>> updateEmpresa(EmpresaApiModel apiModel) {
    // TODO: implement updateEmpresa
    throw UnimplementedError();
  }

  @override
  Future<Result<FichajeApiModel>> updateFichaje(FichajeApiModel apiModel) {
    // TODO: implement updateFichaje
    throw UnimplementedError();
  }

  @override
  Future<Result<NotificacionApiModel>> updateNotificacion(NotificacionApiModel apiModel) {
    // TODO: implement updateNotificacion
    throw UnimplementedError();
  }

  @override
  Future<Result<ReglaTurnoApiModel>> updateReglaTurno(ReglaTurnoApiModel apiModel) {
    // TODO: implement updateReglaTurno
    throw UnimplementedError();
  }

  @override
  Future<Result<ReporteApiModel>> updateReporte(ReporteApiModel apiModel) {
    // TODO: implement updateReporte
    throw UnimplementedError();
  }

  @override
  Future<Result<ResponsableApiModel?>> updateResponsable(ResponsableApiModel responsableApi) {
    // TODO: implement updateResponsable
    throw UnimplementedError();
  }

  @override
  Future<Result<ResponsableEmpleadoApiModel?>> updateResponsableEmpleado(ResponsableEmpleadoApiModel responsableEmpleadoApi) {
    // TODO: implement updateResponsableEmpleado
    throw UnimplementedError();
  }

  @override
  Future<Result<SolicitudAusenciaApiModel>> updateSolicitudAusencia(SolicitudAusenciaApiModel apiModel) {
    // TODO: implement updateSolicitudAusencia
    throw UnimplementedError();
  }

  @override
  Future<Result<TurnoApiModel?>> updateTurno(TurnoUpdateApiModel turnoApi) {
    // TODO: implement updateTurno
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> updateUsuario(UserApiModel userApi) {
    // TODO: implement updateUsuario
    throw UnimplementedError();
  }


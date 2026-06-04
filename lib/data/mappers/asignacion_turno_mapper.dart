import 'package:mijornada/data/services/api/model/turno/turno_api_model.dart';
import 'package:mijornada/domain/models/sede/dominio/sede.dart';

import '../../../../data/services/api/model/asignacion_turno/asignacion_turno_api_model.dart';
import '../../../../data/services/api/model/asignacion_turno/create/asignacion_turno_create_api_model.dart';
import '../../../../data/services/api/model/asignacion_turno/update/asignacion_turno_update_api_model.dart';

import '../../domain/models/asignacion_turno/dominio/asignacion_turno.dart';
import '../../domain/models/turno/dominio/turno.dart';

    /// API a DOMAIN
 extension AsignacionTurnoApiModelMapper on AsignacionTurnoApiModel {
  AsignacionTurno toDomain() {
    return AsignacionTurno(
      idAsignacion: idAsignacion,
      estado: estado,
      idTurno: idTurno,
      turno: turno == null
          ? null
          : Turno(
              idTurno: turno!.idTurno,
              nombre: turno!.nombre ?? '',             
              fecha: turno!.fecha ?? DateTime.now(),            
              horaInicio: turno!.horaInicio ?? '',      
              horaFin: turno!.horaFin ?? '',        
              esNocturno: turno!.esNocturno ?? false,
              sede: turno!.sede == null
                  ? null
                  : Sede(
                      idSede: turno!.sede!.idSede,
                      nombre: turno!.sede!.nombre ?? '',          
                      direccion: turno!.sede!.direccion ?? '', 
                      latitud: turno!.sede!.latitud,
                      longitud: turno!.sede!.longitud,
                      radioGeofencing: turno!.sede!.radioGeofencing,
                    ),
            ),
      idEmpleados: [idEmpleado],
      empleados: const [],
    );
  }
}


/// LIST API a LIST DOMAIN
extension AsignacionTurnoApiModelListMapper on List<AsignacionTurnoApiModel> {
  List<AsignacionTurno> toDomainList() {
    return map((api) => api.toDomain()).toList();
  }
}

/// DOMAIN a CREATE DTO
extension AsignacionTurnoDomainCreateMapper on AsignacionTurno {
  AsignacionTurnoCreateApiModel toCreateApiModel() {
    return AsignacionTurnoCreateApiModel(
      estado: estado,
      idTurno: idTurno!,
      idEmpleados: idEmpleados!,
    );
  }
}

/// DOMAIN a UPDATE DTO
extension AsignacionTurnoDomainUpdateMapper on AsignacionTurno {
  AsignacionTurnoUpdateApiModel toUpdateApiModel() {
    return AsignacionTurnoUpdateApiModel(
      idAsignacion: idAsignacion!,
      estado: estado,
      idTurno: idTurno!,
      idEmpleados: idEmpleados!,
    );
  }
}

/// CREATE DTO a API MODEL
extension AsignacionTurnoCreateMapper on AsignacionTurnoCreateApiModel {
  AsignacionTurnoApiModel createToApiModel({int? idAsignacion}) {
    return AsignacionTurnoApiModel(
      idAsignacion: idAsignacion,
      estado: estado,
      idTurno: idTurno,
      idEmpleado: idEmpleados.first,
    );
  }
}

/// UPDATE DTO a API MODEL
extension AsignacionTurnoUpdateMapper on AsignacionTurnoUpdateApiModel {
  AsignacionTurnoApiModel updateToApiModel() {
    return AsignacionTurnoApiModel(
      idAsignacion: idAsignacion,
      estado: estado,
      idTurno: idTurno,
      idEmpleado: idEmpleados.first,
    );
  }
}

extension AsignacionTurnoDomainApiMapper on AsignacionTurno {
  AsignacionTurnoApiModel toApiModel() {
    return AsignacionTurnoApiModel(
      idAsignacion: idAsignacion,
      estado: estado,
      idTurno: idTurno!,
      idEmpleado: idEmpleados!.first,
    );
  }
}
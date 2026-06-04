import 'package:collection/collection.dart';
import 'package:mijornada/data/mappers/sede_mapper.dart';
import '../../../../data/services/api/model/turno/turno_api_model.dart';
import '../../domain/models/sede/dominio/sede.dart';
import '../../domain/models/turno/dominio/turno.dart';
import '../services/api/model/turno/create/turno_create_api_model.dart';
import '../services/api/model/turno/update/turno_update_api_model.dart';

/// MAPPERS PROFESIONALES ENTRE:
/// - Dominio (Turno)
/// - API Read (TurnoApiModel)
/// - API Create (TurnoCreateApiModel)
/// - API Update (TurnoUpdateApiModel)

extension TurnoApiModelMapper on TurnoApiModel {
  /// Convierte un API model ---> Dominio
  Turno toDomain() {
    return Turno(
      idTurno: idTurno,
      nombre: nombre ?? '',         
      idSede: idSede,
      sede: sede?.toDomain(),
      fecha: fecha ?? DateTime.now(),       
      horaInicio: horaInicio ?? '',
      horaFin: horaFin ?? '',        
      esNocturno: esNocturno ?? false, 
    );
  }
}


extension TurnoDomainMapper on Turno {
  /// Dominio---> API Create DTO
  TurnoCreateApiModel toCreateApiModelDto() {
    return TurnoCreateApiModel(
      idSede: idSede!,
      nombre: nombre,
      esNocturno: esNocturno,
      fecha: fecha,
      horaInicio: horaInicio,
      horaFin: horaFin,
    );
  }

  /// Dominio ----> API Update DTO
  TurnoUpdateApiModel toUpdateApiModel() {
    return TurnoUpdateApiModel(
      idTurno: idTurno!,
      idSede: idSede!,
      nombre: nombre,
      esNocturno: esNocturno,
      fecha: fecha,
      horaInicio: horaInicio,
      horaFin: horaFin,
    );
  }

  /// Dominio -----> API Read Model 
  TurnoApiModel toApiModel() {
    return TurnoApiModel(
      idTurno: idTurno,
      idSede: idSede!,
      nombre: nombre,
      esNocturno: esNocturno,
      fecha: fecha,
      horaInicio: horaInicio,
      horaFin: horaFin,
    );
  }
}

extension TurnoApiModelListMapper on List<TurnoApiModel> {
  /// Lista de API ----> Lista de dominio
  List<Turno> toDomainList(List<Sede> sedes) {
    return map((api) {
      final sede = sedes.firstWhereOrNull((s) => s.idSede == api.idSede);
      if (sede == null) {
        throw Exception("No se encontró la sede con id ${api.idSede}");
      }
      return api.toDomain();
    }).toList();
  }
}

extension TurnoCreateMapper on TurnoCreateApiModel {
  /// Create DTO a API Model
  TurnoApiModel createToApiModel({int? idTurno}) {
    return TurnoApiModel(
      idTurno: idTurno,
      idSede: idSede,
      nombre: nombre,
      esNocturno: esNocturno,
      fecha: fecha,
      horaInicio: horaInicio,
      horaFin: horaFin,
    );
  }
}

extension TurnoUpdateMapper on TurnoUpdateApiModel {
  /// Update DTO a API Model
  TurnoApiModel updateToApiModel() {
    return TurnoApiModel(
      idTurno: idTurno,
      idSede: idSede,
      nombre: nombre,
      esNocturno: esNocturno,
      fecha: fecha,
      horaInicio: horaInicio,
      horaFin: horaFin,
    );
  }
}

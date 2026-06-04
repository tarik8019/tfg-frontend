import '../../../../data/services/api/model/sede/sede_api_model.dart';
import '../../domain/models/sede/dominio/sede.dart';
import '../services/api/model/sede/create/sede_create_api_model.dart';
import '../services/api/model/sede/update/sede_update_api_model.dart';

/// MAPPERS PROFESIONALES ENTRE:
/// - Dominio (Sede)
/// - API Read (SedeApiModel)
/// - API Create (SedeCreateApiModel)
/// - API Update (SedeUpdateApiModel)


extension SedeApiModelMapper on SedeApiModel {
  /// API a  Dominio
  Sede toDomain() {
    return Sede(
      idSede: idSede,
      nombre: nombre,
      direccion: direccion,
      latitud: latitud,
      longitud: longitud,
      radioGeofencing: radioGeofencing,
    );
  }
}

extension SedeDomainMapper on Sede {
  /// Dominio a API Create DTO
  SedeCreateApiModel toCreateApiModelDto() {
    return SedeCreateApiModel(
      nombre: nombre,
      direccion: direccion,
      latitud: latitud,
      longitud: longitud,
      radioGeofencing: radioGeofencing,
    );
  }

  /// Dominio a API Update DTO
  SedeUpdateApiModel toUpdateApiModel() {
    return SedeUpdateApiModel(
      idSede: idSede!,
      nombre: nombre,
      direccion: direccion,
      latitud: latitud,
      longitud: longitud,
      radioGeofencing: radioGeofencing,
    );
  }

  /// Dominio a API Read Model (útil para tests o mocks)
  SedeApiModel toApiModel() {
    return SedeApiModel(
      idSede: idSede,
      nombre: nombre,
      direccion: direccion,
      latitud: latitud,
      longitud: longitud,
      radioGeofencing: radioGeofencing,
    );
  }
}

extension SedeApiModelListMapper on List<SedeApiModel> {
  /// Lista API a Lista dominio
  List<Sede> toDomainList() {
    return map((api) => api.toDomain()).toList();
  }
}

extension SedeCreateApiModelMapper on SedeCreateApiModel {
  SedeApiModel createToApiModel() {
    return SedeApiModel(
      idSede: null,
      nombre: nombre,
      direccion: direccion,
      latitud: latitud,
      longitud: longitud,
      radioGeofencing: radioGeofencing,
    );
  }
}

extension SedeUpdateApiModelMapper on SedeUpdateApiModel {
  SedeApiModel updateToApiModel() {
    return SedeApiModel(
      idSede: idSede,
      nombre: nombre,
      direccion: direccion,
      latitud: latitud,
      longitud: longitud,
      radioGeofencing: radioGeofencing,
    );
  }
}
import 'package:mijornada/data/mappers/sede_mapper.dart';
import 'package:mijornada/domain/models/sede/dominio/sede.dart';

/// Instancia de dominio Sede
final kSede = Sede(
  idSede: 1,
  nombre: 'Sede Central',
  direccion: 'Calle Principal 123',
  latitud: 40.4168,
  longitud: -3.7038,
  radioGeofencing: 100,
);

/// Instancia API read model (como lo devuelve el backend)
final kSedeApiModel = kSede.toApiModel();

/// Instancia para enviar al backend al crear una sede
final kSedeCreateApiModel = kSede.toCreateApiModelDto();

/// Instancia para enviar al backend al actualizar una sede
final kSedeUpdateApiModel = kSede.toUpdateApiModel();

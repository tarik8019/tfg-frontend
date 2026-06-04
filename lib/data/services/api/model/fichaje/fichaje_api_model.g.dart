// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fichaje_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FichajeApiModel _$FichajeApiModelFromJson(Map<String, dynamic> json) =>
    _FichajeApiModel(
      idFichaje: (json['idFichaje'] as num?)?.toInt(),
      idEmpleado: (json['idEmpleado'] as num?)?.toInt(),
      nombre: json['nombre'] as String?,
      apellidos: json['apellidos'] as String?,
      tipoFichaje: json['tipoFichaje'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      latitud: (json['latitud'] as num?)?.toDouble(),
      longitud: (json['longitud'] as num?)?.toDouble(),
      validadoFacial: json['validadoFacial'] as bool?,
      fuenteFichaje: json['fuenteFichaje'] as String?,
    );

Map<String, dynamic> _$FichajeApiModelToJson(_FichajeApiModel instance) =>
    <String, dynamic>{
      'idFichaje': instance.idFichaje,
      'idEmpleado': instance.idEmpleado,
      'nombre': instance.nombre,
      'apellidos': instance.apellidos,
      'tipoFichaje': instance.tipoFichaje,
      'timestamp': instance.timestamp?.toIso8601String(),
      'latitud': instance.latitud,
      'longitud': instance.longitud,
      'validadoFacial': instance.validadoFacial,
      'fuenteFichaje': instance.fuenteFichaje,
    };

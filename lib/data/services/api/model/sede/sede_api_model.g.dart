// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sede_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SedeApiModel _$SedeApiModelFromJson(Map<String, dynamic> json) =>
    _SedeApiModel(
      idSede: (json['idSede'] as num?)?.toInt(),
      nombre: json['nombre'] as String,
      direccion: json['direccion'] as String?,
      latitud: (json['latitud'] as num?)?.toDouble(),
      longitud: (json['longitud'] as num?)?.toDouble(),
      radioGeofencing: (json['radioGeofencing'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SedeApiModelToJson(_SedeApiModel instance) =>
    <String, dynamic>{
      'idSede': instance.idSede,
      'nombre': instance.nombre,
      'direccion': instance.direccion,
      'latitud': instance.latitud,
      'longitud': instance.longitud,
      'radioGeofencing': instance.radioGeofencing,
    };

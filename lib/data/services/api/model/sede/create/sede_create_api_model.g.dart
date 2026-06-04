// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sede_create_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SedeCreateApiModel _$SedeCreateApiModelFromJson(Map<String, dynamic> json) =>
    _SedeCreateApiModel(
      nombre: json['nombre'] as String,
      direccion: json['direccion'] as String?,
      latitud: (json['latitud'] as num?)?.toDouble(),
      longitud: (json['longitud'] as num?)?.toDouble(),
      radioGeofencing: (json['radioGeofencing'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SedeCreateApiModelToJson(_SedeCreateApiModel instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'direccion': instance.direccion,
      'latitud': instance.latitud,
      'longitud': instance.longitud,
      'radioGeofencing': instance.radioGeofencing,
    };

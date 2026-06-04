// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fichaje.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Fichaje _$FichajeFromJson(Map<String, dynamic> json) => _Fichaje(
  idFichaje: (json['idFichaje'] as num?)?.toInt(),
  idEmpleado: (json['idEmpleado'] as num).toInt(),
  empleado: json['empleado'] == null
      ? null
      : Empleado.fromJson(json['empleado'] as Map<String, dynamic>),
  tipoFichaje: json['tipoFichaje'] as String,
  timestamp: json['timestamp'] == null
      ? null
      : DateTime.parse(json['timestamp'] as String),
  latitud: (json['latitud'] as num?)?.toDouble(),
  longitud: (json['longitud'] as num?)?.toDouble(),
  validadoFacial: json['validadoFacial'] as bool,
  fuenteFichaje: json['fuenteFichaje'] as String,
);

Map<String, dynamic> _$FichajeToJson(_Fichaje instance) => <String, dynamic>{
  'idFichaje': instance.idFichaje,
  'idEmpleado': instance.idEmpleado,
  'empleado': instance.empleado,
  'tipoFichaje': instance.tipoFichaje,
  'timestamp': instance.timestamp?.toIso8601String(),
  'latitud': instance.latitud,
  'longitud': instance.longitud,
  'validadoFacial': instance.validadoFacial,
  'fuenteFichaje': instance.fuenteFichaje,
};

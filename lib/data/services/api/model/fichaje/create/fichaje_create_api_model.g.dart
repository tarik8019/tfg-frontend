// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fichaje_create_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FichajeCreateApiModel _$FichajeCreateApiModelFromJson(
  Map<String, dynamic> json,
) => _FichajeCreateApiModel(
  idEmpleado: (json['idEmpleado'] as num).toInt(),
  tipoFichaje: json['tipoFichaje'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
  latitud: (json['latitud'] as num?)?.toDouble(),
  longitud: (json['longitud'] as num?)?.toDouble(),
  validadoFacial: json['validadoFacial'] as bool,
  fuenteFichaje: json['fuenteFichaje'] as String,
);

Map<String, dynamic> _$FichajeCreateApiModelToJson(
  _FichajeCreateApiModel instance,
) => <String, dynamic>{
  'idEmpleado': instance.idEmpleado,
  'tipoFichaje': instance.tipoFichaje,
  'timestamp': instance.timestamp.toIso8601String(),
  'latitud': instance.latitud,
  'longitud': instance.longitud,
  'validadoFacial': instance.validadoFacial,
  'fuenteFichaje': instance.fuenteFichaje,
};

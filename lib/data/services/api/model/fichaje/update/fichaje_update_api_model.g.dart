// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fichaje_update_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FichajeUpdateApiModel _$FichajeUpdateApiModelFromJson(
  Map<String, dynamic> json,
) => _FichajeUpdateApiModel(
  idFichaje: (json['idFichaje'] as num).toInt(),
  idEmpleado: (json['idEmpleado'] as num).toInt(),
  tipoFichaje: json['tipoFichaje'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
  latitud: (json['latitud'] as num?)?.toDouble(),
  longitud: (json['longitud'] as num?)?.toDouble(),
  validadoFacial: json['validadoFacial'] as bool,
  fuenteFichaje: json['fuenteFichaje'] as String,
);

Map<String, dynamic> _$FichajeUpdateApiModelToJson(
  _FichajeUpdateApiModel instance,
) => <String, dynamic>{
  'idFichaje': instance.idFichaje,
  'idEmpleado': instance.idEmpleado,
  'tipoFichaje': instance.tipoFichaje,
  'timestamp': instance.timestamp.toIso8601String(),
  'latitud': instance.latitud,
  'longitud': instance.longitud,
  'validadoFacial': instance.validadoFacial,
  'fuenteFichaje': instance.fuenteFichaje,
};

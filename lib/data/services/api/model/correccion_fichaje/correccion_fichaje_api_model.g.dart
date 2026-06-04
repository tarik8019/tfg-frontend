// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correccion_fichaje_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CorreccionFichajeApiModel _$CorreccionFichajeApiModelFromJson(
  Map<String, dynamic> json,
) => _CorreccionFichajeApiModel(
  idCorreccion: (json['idCorreccion'] as num?)?.toInt(),
  idEmpleado: (json['idEmpleado'] as num).toInt(),
  idFichaje: (json['idFichaje'] as num).toInt(),
  motivo: json['motivo'] as String?,
  estado: json['estado'] as String,
);

Map<String, dynamic> _$CorreccionFichajeApiModelToJson(
  _CorreccionFichajeApiModel instance,
) => <String, dynamic>{
  'idCorreccion': instance.idCorreccion,
  'idEmpleado': instance.idEmpleado,
  'idFichaje': instance.idFichaje,
  'motivo': instance.motivo,
  'estado': instance.estado,
};

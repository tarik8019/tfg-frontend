// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regla_turno_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReglaTurnoApiModel _$ReglaTurnoApiModelFromJson(Map<String, dynamic> json) =>
    _ReglaTurnoApiModel(
      idRegla: (json['idRegla'] as num?)?.toInt(),
      descripcion: json['descripcion'] as String?,
      tipo: json['tipo'] as String,
      parametros: json['parametros'] as String,
    );

Map<String, dynamic> _$ReglaTurnoApiModelToJson(_ReglaTurnoApiModel instance) =>
    <String, dynamic>{
      'idRegla': instance.idRegla,
      'descripcion': instance.descripcion,
      'tipo': instance.tipo,
      'parametros': instance.parametros,
    };

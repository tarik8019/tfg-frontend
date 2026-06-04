// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regla_turno.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReglaTurno _$ReglaTurnoFromJson(Map<String, dynamic> json) => _ReglaTurno(
  idRegla: (json['idRegla'] as num?)?.toInt(),
  descripcion: json['descripcion'] as String?,
  tipo: json['tipo'] as String,
  parametros: json['parametros'] as String,
);

Map<String, dynamic> _$ReglaTurnoToJson(_ReglaTurno instance) =>
    <String, dynamic>{
      'idRegla': instance.idRegla,
      'descripcion': instance.descripcion,
      'tipo': instance.tipo,
      'parametros': instance.parametros,
    };

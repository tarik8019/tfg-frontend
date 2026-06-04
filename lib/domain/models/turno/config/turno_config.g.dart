// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'turno_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TurnoConfig _$TurnoConfigFromJson(Map<String, dynamic> json) => _TurnoConfig(
  nombre: json['nombre'] as String?,
  horaInicio: json['horaInicio'] == null
      ? null
      : DateTime.parse(json['horaInicio'] as String),
  horaFin: json['horaFin'] == null
      ? null
      : DateTime.parse(json['horaFin'] as String),
  esNocturno: json['esNocturno'] as bool?,
  fecha: json['fecha'] == null ? null : DateTime.parse(json['fecha'] as String),
  idSede: (json['idSede'] as num?)?.toInt(),
);

Map<String, dynamic> _$TurnoConfigToJson(_TurnoConfig instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'horaInicio': instance.horaInicio?.toIso8601String(),
      'horaFin': instance.horaFin?.toIso8601String(),
      'esNocturno': instance.esNocturno,
      'fecha': instance.fecha?.toIso8601String(),
      'idSede': instance.idSede,
    };

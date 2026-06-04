// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'turno.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Turno _$TurnoFromJson(Map<String, dynamic> json) => _Turno(
  idTurno: (json['idTurno'] as num?)?.toInt(),
  nombre: json['nombre'] as String,
  idSede: (json['idSede'] as num?)?.toInt(),
  sede: json['sede'] == null
      ? null
      : Sede.fromJson(json['sede'] as Map<String, dynamic>),
  fecha: DateTime.parse(json['fecha'] as String),
  horaInicio: json['horaInicio'] as String,
  horaFin: json['horaFin'] as String,
  esNocturno: json['esNocturno'] as bool,
);

Map<String, dynamic> _$TurnoToJson(_Turno instance) => <String, dynamic>{
  'idTurno': instance.idTurno,
  'nombre': instance.nombre,
  'idSede': instance.idSede,
  'sede': instance.sede,
  'fecha': instance.fecha.toIso8601String(),
  'horaInicio': instance.horaInicio,
  'horaFin': instance.horaFin,
  'esNocturno': instance.esNocturno,
};

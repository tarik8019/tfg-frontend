// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'turno_update_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TurnoUpdateApiModel _$TurnoUpdateApiModelFromJson(Map<String, dynamic> json) =>
    _TurnoUpdateApiModel(
      idTurno: (json['idTurno'] as num).toInt(),
      idSede: (json['idSede'] as num).toInt(),
      nombre: json['nombre'] as String,
      esNocturno: json['esNocturno'] as bool,
      fecha: DateTime.parse(json['fecha'] as String),
      horaInicio: json['horaInicio'] as String,
      horaFin: json['horaFin'] as String,
    );

Map<String, dynamic> _$TurnoUpdateApiModelToJson(
  _TurnoUpdateApiModel instance,
) => <String, dynamic>{
  'idTurno': instance.idTurno,
  'idSede': instance.idSede,
  'nombre': instance.nombre,
  'esNocturno': instance.esNocturno,
  'fecha': instance.fecha.toIso8601String(),
  'horaInicio': instance.horaInicio,
  'horaFin': instance.horaFin,
};

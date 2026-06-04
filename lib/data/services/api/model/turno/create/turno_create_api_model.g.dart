// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'turno_create_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TurnoCreateApiModel _$TurnoCreateApiModelFromJson(Map<String, dynamic> json) =>
    _TurnoCreateApiModel(
      idSede: (json['idSede'] as num).toInt(),
      nombre: json['nombre'] as String,
      esNocturno: json['esNocturno'] as bool,
      fecha: DateTime.parse(json['fecha'] as String),
      horaInicio: json['horaInicio'] as String,
      horaFin: json['horaFin'] as String,
    );

Map<String, dynamic> _$TurnoCreateApiModelToJson(
  _TurnoCreateApiModel instance,
) => <String, dynamic>{
  'idSede': instance.idSede,
  'nombre': instance.nombre,
  'esNocturno': instance.esNocturno,
  'fecha': instance.fecha.toIso8601String(),
  'horaInicio': instance.horaInicio,
  'horaFin': instance.horaFin,
};

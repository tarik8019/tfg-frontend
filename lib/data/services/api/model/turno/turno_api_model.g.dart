// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'turno_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TurnoApiModel _$TurnoApiModelFromJson(Map<String, dynamic> json) =>
    _TurnoApiModel(
      idTurno: (json['idTurno'] as num?)?.toInt(),
      idSede: (json['idSede'] as num?)?.toInt(),
      sede: json['sede'] == null
          ? null
          : SedeApiModel.fromJson(json['sede'] as Map<String, dynamic>),
      nombre: json['nombre'] as String?,
      esNocturno: json['esNocturno'] as bool?,
      fecha: json['fecha'] == null
          ? null
          : DateTime.parse(json['fecha'] as String),
      horaInicio: json['horaInicio'] as String?,
      horaFin: json['horaFin'] as String?,
    );

Map<String, dynamic> _$TurnoApiModelToJson(_TurnoApiModel instance) =>
    <String, dynamic>{
      'idTurno': instance.idTurno,
      'idSede': instance.idSede,
      'sede': instance.sede,
      'nombre': instance.nombre,
      'esNocturno': instance.esNocturno,
      'fecha': instance.fecha?.toIso8601String(),
      'horaInicio': instance.horaInicio,
      'horaFin': instance.horaFin,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disponibilidad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Disponibilidad _$DisponibilidadFromJson(Map<String, dynamic> json) =>
    _Disponibilidad(
      idDisponibilidad: (json['idDisponibilidad'] as num?)?.toInt(),
      empleado: Empleado.fromJson(json['empleado'] as Map<String, dynamic>),
      diaSemana: json['diaSemana'] as String?,
      horaInicio: json['horaInicio'] as String?,
      horaFin: json['horaFin'] as String?,
    );

Map<String, dynamic> _$DisponibilidadToJson(_Disponibilidad instance) =>
    <String, dynamic>{
      'idDisponibilidad': instance.idDisponibilidad,
      'empleado': instance.empleado,
      'diaSemana': instance.diaSemana,
      'horaInicio': instance.horaInicio,
      'horaFin': instance.horaFin,
    };

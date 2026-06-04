// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disponibilidad_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DisponibilidadApiModel _$DisponibilidadApiModelFromJson(
  Map<String, dynamic> json,
) => _DisponibilidadApiModel(
  idDisponibilidad: (json['idDisponibilidad'] as num?)?.toInt(),
  idEmpleado: (json['idEmpleado'] as num).toInt(),
  diaSemana: json['diaSemana'] as String?,
  horaInicio: json['horaInicio'] as String?,
  horaFin: json['horaFin'] as String?,
);

Map<String, dynamic> _$DisponibilidadApiModelToJson(
  _DisponibilidadApiModel instance,
) => <String, dynamic>{
  'idDisponibilidad': instance.idDisponibilidad,
  'idEmpleado': instance.idEmpleado,
  'diaSemana': instance.diaSemana,
  'horaInicio': instance.horaInicio,
  'horaFin': instance.horaFin,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disponibilidad_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DisponibilidadConfig _$DisponibilidadConfigFromJson(
  Map<String, dynamic> json,
) => _DisponibilidadConfig(
  idEmpleado: (json['idEmpleado'] as num?)?.toInt(),
  diaSemana: json['diaSemana'] as String?,
  horaInicio: json['horaInicio'] as String?,
  horaFin: json['horaFin'] as String?,
);

Map<String, dynamic> _$DisponibilidadConfigToJson(
  _DisponibilidadConfig instance,
) => <String, dynamic>{
  'idEmpleado': instance.idEmpleado,
  'diaSemana': instance.diaSemana,
  'horaInicio': instance.horaInicio,
  'horaFin': instance.horaFin,
};

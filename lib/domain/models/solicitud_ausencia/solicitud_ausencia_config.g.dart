// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solicitud_ausencia_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SolicitudAusenciaConfig _$SolicitudAusenciaConfigFromJson(
  Map<String, dynamic> json,
) => _SolicitudAusenciaConfig(
  idEmpleado: (json['idEmpleado'] as num?)?.toInt(),
  fechaInicio: json['fechaInicio'] == null
      ? null
      : DateTime.parse(json['fechaInicio'] as String),
  fechaFin: json['fechaFin'] == null
      ? null
      : DateTime.parse(json['fechaFin'] as String),
  motivo: json['motivo'] as String?,
  estado: json['estado'] as String? ?? "pendiente",
);

Map<String, dynamic> _$SolicitudAusenciaConfigToJson(
  _SolicitudAusenciaConfig instance,
) => <String, dynamic>{
  'idEmpleado': instance.idEmpleado,
  'fechaInicio': instance.fechaInicio?.toIso8601String(),
  'fechaFin': instance.fechaFin?.toIso8601String(),
  'motivo': instance.motivo,
  'estado': instance.estado,
};

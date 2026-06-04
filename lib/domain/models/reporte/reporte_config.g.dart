// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reporte_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReporteConfig _$ReporteConfigFromJson(Map<String, dynamic> json) =>
    _ReporteConfig(
      idUsuario: (json['idUsuario'] as num?)?.toInt(),
      tipo: json['tipo'] as String?,
      fechaInicio: json['fechaInicio'] == null
          ? null
          : DateTime.parse(json['fechaInicio'] as String),
      fechaFin: json['fechaFin'] == null
          ? null
          : DateTime.parse(json['fechaFin'] as String),
    );

Map<String, dynamic> _$ReporteConfigToJson(_ReporteConfig instance) =>
    <String, dynamic>{
      'idUsuario': instance.idUsuario,
      'tipo': instance.tipo,
      'fechaInicio': instance.fechaInicio?.toIso8601String(),
      'fechaFin': instance.fechaFin?.toIso8601String(),
    };

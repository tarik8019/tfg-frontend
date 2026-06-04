// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reporte_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReporteApiModel _$ReporteApiModelFromJson(Map<String, dynamic> json) =>
    _ReporteApiModel(
      idReporte: (json['idReporte'] as num?)?.toInt(),
      tipo: json['tipo'] as String,
      fechaGeneracion: DateTime.parse(json['fechaGeneracion'] as String),
      archivoUrl: json['archivoUrl'] as String?,
    );

Map<String, dynamic> _$ReporteApiModelToJson(_ReporteApiModel instance) =>
    <String, dynamic>{
      'idReporte': instance.idReporte,
      'tipo': instance.tipo,
      'fechaGeneracion': instance.fechaGeneracion.toIso8601String(),
      'archivoUrl': instance.archivoUrl,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solicitud_ausencia_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SolicitudAusenciaApiModel _$SolicitudAusenciaApiModelFromJson(
  Map<String, dynamic> json,
) => _SolicitudAusenciaApiModel(
  idSolicitud: (json['idSolicitud'] as num?)?.toInt(),
  idEmpleado: (json['idEmpleado'] as num).toInt(),
  tipo: json['tipo'] as String,
  fechaInicio: DateTime.parse(json['fechaInicio'] as String),
  fechaFin: DateTime.parse(json['fechaFin'] as String),
  estado: json['estado'] as String,
  documentoJustificante: json['documentoJustificante'] as String?,
);

Map<String, dynamic> _$SolicitudAusenciaApiModelToJson(
  _SolicitudAusenciaApiModel instance,
) => <String, dynamic>{
  'idSolicitud': instance.idSolicitud,
  'idEmpleado': instance.idEmpleado,
  'tipo': instance.tipo,
  'fechaInicio': instance.fechaInicio.toIso8601String(),
  'fechaFin': instance.fechaFin.toIso8601String(),
  'estado': instance.estado,
  'documentoJustificante': instance.documentoJustificante,
};

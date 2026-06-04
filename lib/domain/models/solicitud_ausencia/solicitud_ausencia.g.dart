// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solicitud_ausencia.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SolicitudAusencia _$SolicitudAusenciaFromJson(Map<String, dynamic> json) =>
    _SolicitudAusencia(
      idSolicitud: (json['idSolicitud'] as num?)?.toInt(),
      empleado: Empleado.fromJson(json['empleado'] as Map<String, dynamic>),
      tipo: json['tipo'] as String,
      fechaInicio: DateTime.parse(json['fechaInicio'] as String),
      fechaFin: DateTime.parse(json['fechaFin'] as String),
      estado: json['estado'] as String? ?? "pendiente",
    );

Map<String, dynamic> _$SolicitudAusenciaToJson(_SolicitudAusencia instance) =>
    <String, dynamic>{
      'idSolicitud': instance.idSolicitud,
      'empleado': instance.empleado,
      'tipo': instance.tipo,
      'fechaInicio': instance.fechaInicio.toIso8601String(),
      'fechaFin': instance.fechaFin.toIso8601String(),
      'estado': instance.estado,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reporte.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Reporte _$ReporteFromJson(Map<String, dynamic> json) => _Reporte(
  idReporte: (json['idReporte'] as num?)?.toInt(),
  usuario: User.fromJson(json['usuario'] as Map<String, dynamic>),
  tipo: json['tipo'] as String,
  fechaGeneracion: DateTime.parse(json['fechaGeneracion'] as String),
  archivoUrl: json['archivoUrl'] as String?,
);

Map<String, dynamic> _$ReporteToJson(_Reporte instance) => <String, dynamic>{
  'idReporte': instance.idReporte,
  'usuario': instance.usuario,
  'tipo': instance.tipo,
  'fechaGeneracion': instance.fechaGeneracion.toIso8601String(),
  'archivoUrl': instance.archivoUrl,
};

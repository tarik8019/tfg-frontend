// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correccion_fichaje_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CorreccionFichajeSummary _$CorreccionFichajeSummaryFromJson(
  Map<String, dynamic> json,
) => _CorreccionFichajeSummary(
  idCorreccion: (json['idCorreccion'] as num).toInt(),
  motivo: json['motivo'] as String,
  estado: json['estado'] as String,
);

Map<String, dynamic> _$CorreccionFichajeSummaryToJson(
  _CorreccionFichajeSummary instance,
) => <String, dynamic>{
  'idCorreccion': instance.idCorreccion,
  'motivo': instance.motivo,
  'estado': instance.estado,
};

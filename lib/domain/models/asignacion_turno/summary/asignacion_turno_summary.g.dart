// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asignacion_turno_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AsignacionTurnoSummary _$AsignacionTurnoSummaryFromJson(
  Map<String, dynamic> json,
) => _AsignacionTurnoSummary(
  idAsignacion: (json['idAsignacion'] as num).toInt(),
  estado: json['estado'] as String,
);

Map<String, dynamic> _$AsignacionTurnoSummaryToJson(
  _AsignacionTurnoSummary instance,
) => <String, dynamic>{
  'idAsignacion': instance.idAsignacion,
  'estado': instance.estado,
};

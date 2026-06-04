// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asignacion_turno_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AsignacionTurnoApiModel _$AsignacionTurnoApiModelFromJson(
  Map<String, dynamic> json,
) => _AsignacionTurnoApiModel(
  idAsignacion: (json['idAsignacion'] as num?)?.toInt(),
  estado: json['estado'] as String,
  idTurno: (json['idTurno'] as num).toInt(),
  idEmpleado: (json['idEmpleado'] as num).toInt(),
  turno: json['turno'] == null
      ? null
      : TurnoApiModel.fromJson(json['turno'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AsignacionTurnoApiModelToJson(
  _AsignacionTurnoApiModel instance,
) => <String, dynamic>{
  'idAsignacion': instance.idAsignacion,
  'estado': instance.estado,
  'idTurno': instance.idTurno,
  'idEmpleado': instance.idEmpleado,
  'turno': instance.turno,
};

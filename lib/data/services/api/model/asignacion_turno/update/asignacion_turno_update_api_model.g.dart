// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asignacion_turno_update_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AsignacionTurnoUpdateApiModel _$AsignacionTurnoUpdateApiModelFromJson(
  Map<String, dynamic> json,
) => _AsignacionTurnoUpdateApiModel(
  idAsignacion: (json['idAsignacion'] as num).toInt(),
  estado: json['estado'] as String,
  idTurno: (json['idTurno'] as num).toInt(),
  idEmpleados: (json['idEmpleados'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$AsignacionTurnoUpdateApiModelToJson(
  _AsignacionTurnoUpdateApiModel instance,
) => <String, dynamic>{
  'idAsignacion': instance.idAsignacion,
  'estado': instance.estado,
  'idTurno': instance.idTurno,
  'idEmpleados': instance.idEmpleados,
};

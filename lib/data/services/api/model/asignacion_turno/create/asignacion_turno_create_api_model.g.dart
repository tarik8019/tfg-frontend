// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asignacion_turno_create_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AsignacionTurnoCreateApiModel _$AsignacionTurnoCreateApiModelFromJson(
  Map<String, dynamic> json,
) => _AsignacionTurnoCreateApiModel(
  estado: json['estado'] as String,
  idTurno: (json['idTurno'] as num).toInt(),
  idEmpleados: (json['idEmpleados'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$AsignacionTurnoCreateApiModelToJson(
  _AsignacionTurnoCreateApiModel instance,
) => <String, dynamic>{
  'estado': instance.estado,
  'idTurno': instance.idTurno,
  'idEmpleados': instance.idEmpleados,
};

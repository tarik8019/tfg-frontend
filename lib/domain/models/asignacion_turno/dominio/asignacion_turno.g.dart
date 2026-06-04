// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asignacion_turno.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AsignacionTurno _$AsignacionTurnoFromJson(Map<String, dynamic> json) =>
    _AsignacionTurno(
      idAsignacion: (json['idAsignacion'] as num?)?.toInt(),
      estado: json['estado'] as String,
      idTurno: (json['idTurno'] as num?)?.toInt(),
      turno: json['turno'] == null
          ? null
          : Turno.fromJson(json['turno'] as Map<String, dynamic>),
      idEmpleados: (json['idEmpleados'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      empleados: (json['empleados'] as List<dynamic>?)
          ?.map((e) => Empleado.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AsignacionTurnoToJson(_AsignacionTurno instance) =>
    <String, dynamic>{
      'idAsignacion': instance.idAsignacion,
      'estado': instance.estado,
      'idTurno': instance.idTurno,
      'turno': instance.turno,
      'idEmpleados': instance.idEmpleados,
      'empleados': instance.empleados,
    };

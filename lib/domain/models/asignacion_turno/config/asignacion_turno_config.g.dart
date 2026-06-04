// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asignacion_turno_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AsignacionTurnoConfig _$AsignacionTurnoConfigFromJson(
  Map<String, dynamic> json,
) => _AsignacionTurnoConfig(
  estado: json['estado'] as String?,
  idTurno: (json['idTurno'] as num?)?.toInt(),
  idEmpleados:
      (json['idEmpleados'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
);

Map<String, dynamic> _$AsignacionTurnoConfigToJson(
  _AsignacionTurnoConfig instance,
) => <String, dynamic>{
  'estado': instance.estado,
  'idTurno': instance.idTurno,
  'idEmpleados': instance.idEmpleados,
};

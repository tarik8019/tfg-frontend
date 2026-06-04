// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empleado_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmpleadoSummary _$EmpleadoSummaryFromJson(Map<String, dynamic> json) =>
    _EmpleadoSummary(
      idEmpleado: (json['idEmpleado'] as num?)?.toInt(),
      nombre: json['nombre'] as String,
      apellidos: json['apellidos'] as String,
    );

Map<String, dynamic> _$EmpleadoSummaryToJson(_EmpleadoSummary instance) =>
    <String, dynamic>{
      'idEmpleado': instance.idEmpleado,
      'nombre': instance.nombre,
      'apellidos': instance.apellidos,
    };

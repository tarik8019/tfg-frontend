// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responsable_empleado_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponsableEmpleadoApiModel _$ResponsableEmpleadoApiModelFromJson(
  Map<String, dynamic> json,
) => _ResponsableEmpleadoApiModel(
  idResponsableEmpleado: (json['idResponsableEmpleado'] as num).toInt(),
  idEmpleado: (json['idEmpleado'] as num).toInt(),
  idResponsable: (json['idResponsable'] as num).toInt(),
  idEmpresa: (json['idEmpresa'] as num).toInt(),
  fechaInicio: DateTime.parse(json['fechaInicio'] as String),
  fechaFin: DateTime.parse(json['fechaFin'] as String),
  tipoResponsabilidad: json['tipoResponsabilidad'] as String,
  observaciones: json['observaciones'] as String,
  activo: json['activo'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$ResponsableEmpleadoApiModelToJson(
  _ResponsableEmpleadoApiModel instance,
) => <String, dynamic>{
  'idResponsableEmpleado': instance.idResponsableEmpleado,
  'idEmpleado': instance.idEmpleado,
  'idResponsable': instance.idResponsable,
  'idEmpresa': instance.idEmpresa,
  'fechaInicio': instance.fechaInicio.toIso8601String(),
  'fechaFin': instance.fechaFin.toIso8601String(),
  'tipoResponsabilidad': instance.tipoResponsabilidad,
  'observaciones': instance.observaciones,
  'activo': instance.activo,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};

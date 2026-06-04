// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responsable_empleado.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponsableEmpleado _$ResponsableEmpleadoFromJson(Map<String, dynamic> json) =>
    _ResponsableEmpleado(
      idResponsableEmpleado: (json['idResponsableEmpleado'] as num).toInt(),
      idEmpleado: (json['idEmpleado'] as num).toInt(),
      empleado: json['empleado'] == null
          ? null
          : Empleado.fromJson(json['empleado'] as Map<String, dynamic>),
      idResponsable: (json['idResponsable'] as num).toInt(),
      responsable: json['responsable'] == null
          ? null
          : Responsable.fromJson(json['responsable'] as Map<String, dynamic>),
      idEmpresa: (json['idEmpresa'] as num).toInt(),
      empresa: json['empresa'] == null
          ? null
          : Empresa.fromJson(json['empresa'] as Map<String, dynamic>),
      fechaInicio: DateTime.parse(json['fechaInicio'] as String),
      fechaFin: DateTime.parse(json['fechaFin'] as String),
      tipoResponsabilidad: json['tipoResponsabilidad'] as String,
      observaciones: json['observaciones'] as String,
      activo: json['activo'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ResponsableEmpleadoToJson(
  _ResponsableEmpleado instance,
) => <String, dynamic>{
  'idResponsableEmpleado': instance.idResponsableEmpleado,
  'idEmpleado': instance.idEmpleado,
  'empleado': instance.empleado,
  'idResponsable': instance.idResponsable,
  'responsable': instance.responsable,
  'idEmpresa': instance.idEmpresa,
  'empresa': instance.empresa,
  'fechaInicio': instance.fechaInicio.toIso8601String(),
  'fechaFin': instance.fechaFin.toIso8601String(),
  'tipoResponsabilidad': instance.tipoResponsabilidad,
  'observaciones': instance.observaciones,
  'activo': instance.activo,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};

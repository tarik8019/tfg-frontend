// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responsable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Responsable _$ResponsableFromJson(Map<String, dynamic> json) => _Responsable(
  idResponsable: (json['idResponsable'] as num?)?.toInt(),
  idEmpleado: (json['idEmpleado'] as num).toInt(),
  empleado: json['empleado'] == null
      ? null
      : Empleado.fromJson(json['empleado'] as Map<String, dynamic>),
  idEmpresa: (json['idEmpresa'] as num).toInt(),
  empresa: json['empresa'] == null
      ? null
      : Empresa.fromJson(json['empresa'] as Map<String, dynamic>),
  cargo: json['cargo'] as String,
  emailContacto: json['emailContacto'] as String,
  telefonoContacto: json['telefonoContacto'] as String,
  activo: json['activo'] as bool,
  fechaCreacion: DateTime.parse(json['fechaCreacion'] as String),
  fechaActualizacion: DateTime.parse(json['fechaActualizacion'] as String),
);

Map<String, dynamic> _$ResponsableToJson(_Responsable instance) =>
    <String, dynamic>{
      'idResponsable': instance.idResponsable,
      'idEmpleado': instance.idEmpleado,
      'empleado': instance.empleado,
      'idEmpresa': instance.idEmpresa,
      'empresa': instance.empresa,
      'cargo': instance.cargo,
      'emailContacto': instance.emailContacto,
      'telefonoContacto': instance.telefonoContacto,
      'activo': instance.activo,
      'fechaCreacion': instance.fechaCreacion.toIso8601String(),
      'fechaActualizacion': instance.fechaActualizacion.toIso8601String(),
    };

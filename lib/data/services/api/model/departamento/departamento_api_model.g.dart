// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departamento_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DepartamentoApiModel _$DepartamentoApiModelFromJson(
  Map<String, dynamic> json,
) => _DepartamentoApiModel(
  idDepartamento: (json['idDepartamento'] as num?)?.toInt(),
  idEmpresa: (json['idEmpresa'] as num).toInt(),
  codigoDepartamento: json['codigoDepartamento'] as String,
  nombre: json['nombre'] as String,
  descripcion: json['descripcion'] as String,
  idResponsableEmpleado: (json['idResponsableEmpleado'] as num?)?.toInt(),
  emailContacto: json['emailContacto'] as String,
  telefonoContacto: json['telefonoContacto'] as String,
  activo: json['activo'] as bool,
  fechaCreacion: DateTime.parse(json['fechaCreacion'] as String),
  fechaActualizacion: DateTime.parse(json['fechaActualizacion'] as String),
);

Map<String, dynamic> _$DepartamentoApiModelToJson(
  _DepartamentoApiModel instance,
) => <String, dynamic>{
  'idDepartamento': instance.idDepartamento,
  'idEmpresa': instance.idEmpresa,
  'codigoDepartamento': instance.codigoDepartamento,
  'nombre': instance.nombre,
  'descripcion': instance.descripcion,
  'idResponsableEmpleado': instance.idResponsableEmpleado,
  'emailContacto': instance.emailContacto,
  'telefonoContacto': instance.telefonoContacto,
  'activo': instance.activo,
  'fechaCreacion': instance.fechaCreacion.toIso8601String(),
  'fechaActualizacion': instance.fechaActualizacion.toIso8601String(),
};

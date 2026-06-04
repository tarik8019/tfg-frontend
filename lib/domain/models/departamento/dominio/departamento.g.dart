// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departamento.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Departamento _$DepartamentoFromJson(Map<String, dynamic> json) =>
    _Departamento(
      idDepartamento: (json['idDepartamento'] as num?)?.toInt(),
      idEmpresa: (json['idEmpresa'] as num?)?.toInt(),
      empresa: json['empresa'] == null
          ? null
          : Empresa.fromJson(json['empresa'] as Map<String, dynamic>),
      codigoDepartamento: json['codigoDepartamento'] as String,
      nombre: json['nombre'] as String,
      descripcion: json['descripcion'] as String,
      idResponsableEmpleado: (json['idResponsableEmpleado'] as num?)?.toInt(),
      responsableEmpleado: json['responsableEmpleado'] == null
          ? null
          : ResponsableEmpleado.fromJson(
              json['responsableEmpleado'] as Map<String, dynamic>,
            ),
      emailContacto: json['emailContacto'] as String,
      telefonoContacto: json['telefonoContacto'] as String,
      activo: json['activo'] as bool?,
      fechaCreacion: json['fechaCreacion'] == null
          ? null
          : DateTime.parse(json['fechaCreacion'] as String),
      fechaActualizacion: json['fechaActualizacion'] == null
          ? null
          : DateTime.parse(json['fechaActualizacion'] as String),
    );

Map<String, dynamic> _$DepartamentoToJson(_Departamento instance) =>
    <String, dynamic>{
      'idDepartamento': instance.idDepartamento,
      'idEmpresa': instance.idEmpresa,
      'empresa': instance.empresa,
      'codigoDepartamento': instance.codigoDepartamento,
      'nombre': instance.nombre,
      'descripcion': instance.descripcion,
      'idResponsableEmpleado': instance.idResponsableEmpleado,
      'responsableEmpleado': instance.responsableEmpleado,
      'emailContacto': instance.emailContacto,
      'telefonoContacto': instance.telefonoContacto,
      'activo': instance.activo,
      'fechaCreacion': instance.fechaCreacion?.toIso8601String(),
      'fechaActualizacion': instance.fechaActualizacion?.toIso8601String(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empresa_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmpresaApiModel _$EmpresaApiModelFromJson(Map<String, dynamic> json) =>
    _EmpresaApiModel(
      idEmpresa: (json['idEmpresa'] as num?)?.toInt(),
      codigoEmpresa: json['codigoEmpresa'] as String,
      nombre: json['nombre'] as String,
      cif: json['cif'] as String,
      direccion: json['direccion'] as String?,
      ciudad: json['ciudad'] as String?,
      pais: json['pais'] as String?,
      fechaCreacion: json['fechaCreacion'] as String?,
      cantidadUsuarios: (json['cantidadUsuarios'] as num?)?.toInt(),
      cantidadEmpleados: (json['cantidadEmpleados'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EmpresaApiModelToJson(_EmpresaApiModel instance) =>
    <String, dynamic>{
      'idEmpresa': instance.idEmpresa,
      'codigoEmpresa': instance.codigoEmpresa,
      'nombre': instance.nombre,
      'cif': instance.cif,
      'direccion': instance.direccion,
      'ciudad': instance.ciudad,
      'pais': instance.pais,
      'fechaCreacion': instance.fechaCreacion,
      'cantidadUsuarios': instance.cantidadUsuarios,
      'cantidadEmpleados': instance.cantidadEmpleados,
    };

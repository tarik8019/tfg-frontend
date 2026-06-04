// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empresa_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmpresaConfig _$EmpresaConfigFromJson(Map<String, dynamic> json) =>
    _EmpresaConfig(
      nombre: json['nombre'] as String?,
      cif: json['cif'] as String?,
      codigoEmpresa: json['codigoEmpresa'] as String?,
      direccion: json['direccion'] as String?,
      ciudad: json['ciudad'] as String?,
      pais: json['pais'] as String?,
      fechaCreacion: json['fechaCreacion'] as String?,
      cantidadUsuarios: (json['cantidadUsuarios'] as num?)?.toInt(),
      cantidadEmpleados: (json['cantidadEmpleados'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EmpresaConfigToJson(_EmpresaConfig instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'cif': instance.cif,
      'codigoEmpresa': instance.codigoEmpresa,
      'direccion': instance.direccion,
      'ciudad': instance.ciudad,
      'pais': instance.pais,
      'fechaCreacion': instance.fechaCreacion,
      'cantidadUsuarios': instance.cantidadUsuarios,
      'cantidadEmpleados': instance.cantidadEmpleados,
    };

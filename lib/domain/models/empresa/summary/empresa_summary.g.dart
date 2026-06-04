// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empresa_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmpresaSummary _$EmpresaSummaryFromJson(Map<String, dynamic> json) =>
    _EmpresaSummary(
      idEmpresa: (json['idEmpresa'] as num?)?.toInt(),
      nombre: json['nombre'] as String,
      ciudad: json['ciudad'] as String?,
      fechaCreacion: json['fechaCreacion'] as String?,
      cantidadUsuarios: (json['cantidadUsuarios'] as num?)?.toInt(),
      cantidadEmpleados: (json['cantidadEmpleados'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EmpresaSummaryToJson(_EmpresaSummary instance) =>
    <String, dynamic>{
      'idEmpresa': instance.idEmpresa,
      'nombre': instance.nombre,
      'ciudad': instance.ciudad,
      'fechaCreacion': instance.fechaCreacion,
      'cantidadUsuarios': instance.cantidadUsuarios,
      'cantidadEmpleados': instance.cantidadEmpleados,
    };

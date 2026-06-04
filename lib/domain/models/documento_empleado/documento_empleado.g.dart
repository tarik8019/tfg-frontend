// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documento_empleado.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocumentoEmpleado _$DocumentoEmpleadoFromJson(Map<String, dynamic> json) =>
    _DocumentoEmpleado(
      idDocumento: (json['idDocumento'] as num?)?.toInt(),
      empleado: Empleado.fromJson(json['empleado'] as Map<String, dynamic>),
      tipo: json['tipo'] as String?,
      rutaArchivo: json['rutaArchivo'] as String?,
    );

Map<String, dynamic> _$DocumentoEmpleadoToJson(_DocumentoEmpleado instance) =>
    <String, dynamic>{
      'idDocumento': instance.idDocumento,
      'empleado': instance.empleado,
      'tipo': instance.tipo,
      'rutaArchivo': instance.rutaArchivo,
    };

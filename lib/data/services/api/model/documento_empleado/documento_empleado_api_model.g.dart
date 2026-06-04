// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documento_empleado_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocumentoEmpleadoApiModel _$DocumentoEmpleadoApiModelFromJson(
  Map<String, dynamic> json,
) => _DocumentoEmpleadoApiModel(
  idDocumento: (json['idDocumento'] as num?)?.toInt(),
  idEmpleado: (json['idEmpleado'] as num).toInt(),
  tipo: json['tipo'] as String?,
  rutaArchivo: json['rutaArchivo'] as String?,
);

Map<String, dynamic> _$DocumentoEmpleadoApiModelToJson(
  _DocumentoEmpleadoApiModel instance,
) => <String, dynamic>{
  'idDocumento': instance.idDocumento,
  'idEmpleado': instance.idEmpleado,
  'tipo': instance.tipo,
  'rutaArchivo': instance.rutaArchivo,
};

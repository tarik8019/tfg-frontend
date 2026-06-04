// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documento_empleado_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocumentoEmpleadoConfig _$DocumentoEmpleadoConfigFromJson(
  Map<String, dynamic> json,
) => _DocumentoEmpleadoConfig(
  idEmpleado: (json['idEmpleado'] as num?)?.toInt(),
  tipo: json['tipo'] as String?,
  rutaArchivo: json['rutaArchivo'] as String?,
);

Map<String, dynamic> _$DocumentoEmpleadoConfigToJson(
  _DocumentoEmpleadoConfig instance,
) => <String, dynamic>{
  'idEmpleado': instance.idEmpleado,
  'tipo': instance.tipo,
  'rutaArchivo': instance.rutaArchivo,
};

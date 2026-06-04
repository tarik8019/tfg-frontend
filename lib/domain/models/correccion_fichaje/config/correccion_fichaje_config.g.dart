// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correccion_fichaje_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CorreccionFichajeConfig _$CorreccionFichajeConfigFromJson(
  Map<String, dynamic> json,
) => _CorreccionFichajeConfig(
  idEmpleado: (json['idEmpleado'] as num?)?.toInt(),
  idFichaje: (json['idFichaje'] as num?)?.toInt(),
  motivo: json['motivo'] as String?,
  estado: json['estado'] as String?,
);

Map<String, dynamic> _$CorreccionFichajeConfigToJson(
  _CorreccionFichajeConfig instance,
) => <String, dynamic>{
  'idEmpleado': instance.idEmpleado,
  'idFichaje': instance.idFichaje,
  'motivo': instance.motivo,
  'estado': instance.estado,
};

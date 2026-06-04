// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fichaje_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FichajeConfig _$FichajeConfigFromJson(Map<String, dynamic> json) =>
    _FichajeConfig(
      idEmpleado: (json['idEmpleado'] as num?)?.toInt(),
      tipo: json['tipo'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      latitud: (json['latitud'] as num?)?.toDouble(),
      longitud: (json['longitud'] as num?)?.toDouble(),
      validadoFacial: json['validadoFacial'] as bool?,
      fuente: json['fuente'] as String?,
    );

Map<String, dynamic> _$FichajeConfigToJson(_FichajeConfig instance) =>
    <String, dynamic>{
      'idEmpleado': instance.idEmpleado,
      'tipo': instance.tipo,
      'timestamp': instance.timestamp?.toIso8601String(),
      'latitud': instance.latitud,
      'longitud': instance.longitud,
      'validadoFacial': instance.validadoFacial,
      'fuente': instance.fuente,
    };

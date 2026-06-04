// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regla_turno_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReglaTurnoConfig _$ReglaTurnoConfigFromJson(Map<String, dynamic> json) =>
    _ReglaTurnoConfig(
      nombre: json['nombre'] as String?,
      horasMinimas: (json['horasMinimas'] as num?)?.toInt(),
      horasMaximas: (json['horasMaximas'] as num?)?.toInt(),
      esObligatoria: json['esObligatoria'] as bool?,
    );

Map<String, dynamic> _$ReglaTurnoConfigToJson(_ReglaTurnoConfig instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'horasMinimas': instance.horasMinimas,
      'horasMaximas': instance.horasMaximas,
      'esObligatoria': instance.esObligatoria,
    };

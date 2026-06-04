// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fichajes_por_dia.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FichajesPorDia _$FichajesPorDiaFromJson(Map<String, dynamic> json) =>
    _FichajesPorDia(
      fecha: DateTime.parse(json['fecha'] as String),
      empleados: (json['empleados'] as List<dynamic>)
          .map((e) => FichajesEmpleado.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FichajesPorDiaToJson(_FichajesPorDia instance) =>
    <String, dynamic>{
      'fecha': instance.fecha.toIso8601String(),
      'empleados': instance.empleados,
    };

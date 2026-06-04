// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fichajes_por_dia_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FichajesPorDiaApiModel _$FichajesPorDiaApiModelFromJson(
  Map<String, dynamic> json,
) => _FichajesPorDiaApiModel(
  fecha: json['fecha'] as String,
  empleados: (json['empleados'] as List<dynamic>)
      .map((e) => FichajesEmpleadoApiModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FichajesPorDiaApiModelToJson(
  _FichajesPorDiaApiModel instance,
) => <String, dynamic>{
  'fecha': instance.fecha,
  'empleados': instance.empleados,
};

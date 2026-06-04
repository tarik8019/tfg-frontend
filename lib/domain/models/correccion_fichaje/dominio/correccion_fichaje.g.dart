// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correccion_fichaje.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CorreccionFichaje _$CorreccionFichajeFromJson(Map<String, dynamic> json) =>
    _CorreccionFichaje(
      idCorreccion: (json['idCorreccion'] as num?)?.toInt(),
      empleado: Empleado.fromJson(json['empleado'] as Map<String, dynamic>),
      fichaje: Fichaje.fromJson(json['fichaje'] as Map<String, dynamic>),
      motivo: json['motivo'] as String?,
      estado: json['estado'] as String,
    );

Map<String, dynamic> _$CorreccionFichajeToJson(_CorreccionFichaje instance) =>
    <String, dynamic>{
      'idCorreccion': instance.idCorreccion,
      'empleado': instance.empleado,
      'fichaje': instance.fichaje,
      'motivo': instance.motivo,
      'estado': instance.estado,
    };

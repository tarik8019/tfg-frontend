// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notificacion_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificacionConfig _$NotificacionConfigFromJson(Map<String, dynamic> json) =>
    _NotificacionConfig(
      idUsuario: (json['idUsuario'] as num?)?.toInt(),
      titulo: json['titulo'] as String?,
      mensaje: json['mensaje'] as String?,
      fecha: json['fecha'] == null
          ? null
          : DateTime.parse(json['fecha'] as String),
      leida: json['leida'] as bool? ?? false,
    );

Map<String, dynamic> _$NotificacionConfigToJson(_NotificacionConfig instance) =>
    <String, dynamic>{
      'idUsuario': instance.idUsuario,
      'titulo': instance.titulo,
      'mensaje': instance.mensaje,
      'fecha': instance.fecha?.toIso8601String(),
      'leida': instance.leida,
    };

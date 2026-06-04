// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notificacion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Notificacion _$NotificacionFromJson(Map<String, dynamic> json) =>
    _Notificacion(
      idNotificacion: (json['idNotificacion'] as num?)?.toInt(),
      usuario: User.fromJson(json['usuario'] as Map<String, dynamic>),
      titulo: json['titulo'] as String?,
      mensaje: json['mensaje'] as String?,
      tipo: json['tipo'] as String,
      fechaEnvio: DateTime.parse(json['fechaEnvio'] as String),
      estado: json['estado'] as String,
    );

Map<String, dynamic> _$NotificacionToJson(_Notificacion instance) =>
    <String, dynamic>{
      'idNotificacion': instance.idNotificacion,
      'usuario': instance.usuario,
      'titulo': instance.titulo,
      'mensaje': instance.mensaje,
      'tipo': instance.tipo,
      'fechaEnvio': instance.fechaEnvio.toIso8601String(),
      'estado': instance.estado,
    };

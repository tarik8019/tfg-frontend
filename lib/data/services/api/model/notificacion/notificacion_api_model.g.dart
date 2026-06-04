// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notificacion_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificacionApiModel _$NotificacionApiModelFromJson(
  Map<String, dynamic> json,
) => _NotificacionApiModel(
  idNotificacion: (json['idNotificacion'] as num?)?.toInt(),
  idUsuario: (json['idUsuario'] as num).toInt(),
  titulo: json['titulo'] as String?,
  mensaje: json['mensaje'] as String?,
  tipo: json['tipo'] as String,
  fechaEnvio: DateTime.parse(json['fechaEnvio'] as String),
  estado: json['estado'] as String,
);

Map<String, dynamic> _$NotificacionApiModelToJson(
  _NotificacionApiModel instance,
) => <String, dynamic>{
  'idNotificacion': instance.idNotificacion,
  'idUsuario': instance.idUsuario,
  'titulo': instance.titulo,
  'mensaje': instance.mensaje,
  'tipo': instance.tipo,
  'fechaEnvio': instance.fechaEnvio.toIso8601String(),
  'estado': instance.estado,
};

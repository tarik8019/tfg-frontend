// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserConfig _$UserConfigFromJson(Map<String, dynamic> json) => _UserConfig(
  idUsuario: (json['idUsuario'] as num?)?.toInt(),
  nombre: json['nombre'] as String?,
  apellidos: json['apellidos'] as String?,
  email: json['email'] as String?,
  pictureUrl: json['pictureUrl'] as String?,
  rol: json['rol'] as String?,
  token: json['token'] as String?,
  isActivo: json['isActivo'] as bool?,
  idEmpresa: (json['idEmpresa'] as num?)?.toInt(),
  idAppUser: json['idAppUser'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$UserConfigToJson(_UserConfig instance) =>
    <String, dynamic>{
      'idUsuario': instance.idUsuario,
      'nombre': instance.nombre,
      'apellidos': instance.apellidos,
      'email': instance.email,
      'pictureUrl': instance.pictureUrl,
      'rol': instance.rol,
      'token': instance.token,
      'isActivo': instance.isActivo,
      'idEmpresa': instance.idEmpresa,
      'idAppUser': instance.idAppUser,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

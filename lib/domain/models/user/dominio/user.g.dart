// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  idUsuario: (json['idUsuario'] as num?)?.toInt(),
  nombre: json['nombre'] as String,
  apellidos: json['apellidos'] as String,
  email: json['email'] as String,
  rol: json['rol'] as String,
  password: json['password'] as String?,
  token: json['token'] as String?,
  pictureUrl: json['pictureUrl'] as String?,
  idEmpresa: (json['idEmpresa'] as num).toInt(),
  empresa: json['empresa'] == null
      ? null
      : Empresa.fromJson(json['empresa'] as Map<String, dynamic>),
  idAppUser: json['idAppUser'] as String?,
  isActivo: json['isActivo'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'idUsuario': instance.idUsuario,
  'nombre': instance.nombre,
  'apellidos': instance.apellidos,
  'email': instance.email,
  'rol': instance.rol,
  'password': instance.password,
  'token': instance.token,
  'pictureUrl': instance.pictureUrl,
  'idEmpresa': instance.idEmpresa,
  'empresa': instance.empresa,
  'idAppUser': instance.idAppUser,
  'isActivo': instance.isActivo,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

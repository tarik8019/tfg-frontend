// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserApiModel _$UserApiModelFromJson(Map<String, dynamic> json) =>
    _UserApiModel(
      id: (json['id'] as num?)?.toInt(),
      nombre: json['nombre'] as String,
      apellidos: json['apellidos'] as String,
      email: json['email'] as String,
      password: json['password'] as String?,
      rol: json['rol'] as String,
      isActivo: json['isActivo'] as bool?,
      idEmpresa: (json['idEmpresa'] as num).toInt(),
      idAppUser: json['idAppUser'] as String?,
      pictureUrl: json['pictureUrl'] as String?,
      createdAt: _fromJsonDateTime(json['createdAt'] as String),
      updatedAt: _fromJsonDateTime(json['updatedAt'] as String),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$UserApiModelToJson(_UserApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'apellidos': instance.apellidos,
      'email': instance.email,
      'password': instance.password,
      'rol': instance.rol,
      'isActivo': instance.isActivo,
      'idEmpresa': instance.idEmpresa,
      'idAppUser': instance.idAppUser,
      'pictureUrl': instance.pictureUrl,
      'createdAt': _toJsonDateTime(instance.createdAt),
      'updatedAt': _toJsonDateTime(instance.updatedAt),
      'token': instance.token,
    };

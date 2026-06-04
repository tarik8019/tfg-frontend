// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      id: (json['id'] as num).toInt(),
      token: json['token'] as String,
      nombre: json['nombre'] as String,
      apellidos: json['apellidos'] as String,
      email: json['email'] as String,
      rol: json['rol'] as String,
      idEmpresa: (json['idEmpresa'] as num).toInt(),
      pictureUrl: json['pictureUrl'] as String,
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'token': instance.token,
      'nombre': instance.nombre,
      'apellidos': instance.apellidos,
      'email': instance.email,
      'rol': instance.rol,
      'idEmpresa': instance.idEmpresa,
      'pictureUrl': instance.pictureUrl,
    };

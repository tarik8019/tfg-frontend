// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activacion_cuenta_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActivacionCuentaApiModel _$ActivacionCuentaApiModelFromJson(
  Map<String, dynamic> json,
) => _ActivacionCuentaApiModel(
  email: json['email'] as String,
  token: json['token'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$ActivacionCuentaApiModelToJson(
  _ActivacionCuentaApiModel instance,
) => <String, dynamic>{
  'email': instance.email,
  'token': instance.token,
  'password': instance.password,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empleado_con_usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmpleadoConUsuario _$EmpleadoConUsuarioFromJson(Map<String, dynamic> json) =>
    _EmpleadoConUsuario(
      empleado: Empleado.fromJson(json['empleado'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmpleadoConUsuarioToJson(_EmpleadoConUsuario instance) =>
    <String, dynamic>{'empleado': instance.empleado, 'user': instance.user};

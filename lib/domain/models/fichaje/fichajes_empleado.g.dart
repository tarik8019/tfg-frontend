// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fichajes_empleado.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FichajesEmpleado _$FichajesEmpleadoFromJson(Map<String, dynamic> json) =>
    _FichajesEmpleado(
      idEmpleado: (json['idEmpleado'] as num).toInt(),
      nombre: json['nombre'] as String,
      apellidos: json['apellidos'] as String,
      fichajes: (json['fichajes'] as List<dynamic>)
          .map((e) => Fichaje.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FichajesEmpleadoToJson(_FichajesEmpleado instance) =>
    <String, dynamic>{
      'idEmpleado': instance.idEmpleado,
      'nombre': instance.nombre,
      'apellidos': instance.apellidos,
      'fichajes': instance.fichajes,
    };

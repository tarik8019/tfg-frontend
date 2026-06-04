// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fichajes_empleado_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FichajesEmpleadoApiModel _$FichajesEmpleadoApiModelFromJson(
  Map<String, dynamic> json,
) => _FichajesEmpleadoApiModel(
  idEmpleado: (json['idEmpleado'] as num).toInt(),
  nombre: json['nombre'] as String,
  apellidos: json['apellidos'] as String,
  fichajes: (json['fichajes'] as List<dynamic>)
      .map((e) => FichajeApiModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FichajesEmpleadoApiModelToJson(
  _FichajesEmpleadoApiModel instance,
) => <String, dynamic>{
  'idEmpleado': instance.idEmpleado,
  'nombre': instance.nombre,
  'apellidos': instance.apellidos,
  'fichajes': instance.fichajes,
};

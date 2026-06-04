// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responsable_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponsableApiModel _$ResponsableApiModelFromJson(Map<String, dynamic> json) =>
    _ResponsableApiModel(
      idResponsable: (json['idResponsable'] as num).toInt(),
      idEmpleado: (json['idEmpleado'] as num).toInt(),
      idEmpresa: (json['idEmpresa'] as num).toInt(),
      cargo: json['cargo'] as String,
      emailContacto: json['emailContacto'] as String,
      telefonoContacto: json['telefonoContacto'] as String,
      activo: json['activo'] as bool,
      fechaCreacion: DateTime.parse(json['fechaCreacion'] as String),
      fechaActualizacion: DateTime.parse(json['fechaActualizacion'] as String),
    );

Map<String, dynamic> _$ResponsableApiModelToJson(
  _ResponsableApiModel instance,
) => <String, dynamic>{
  'idResponsable': instance.idResponsable,
  'idEmpleado': instance.idEmpleado,
  'idEmpresa': instance.idEmpresa,
  'cargo': instance.cargo,
  'emailContacto': instance.emailContacto,
  'telefonoContacto': instance.telefonoContacto,
  'activo': instance.activo,
  'fechaCreacion': instance.fechaCreacion.toIso8601String(),
  'fechaActualizacion': instance.fechaActualizacion.toIso8601String(),
};

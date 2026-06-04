// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empleado_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmpleadoApiModel _$EmpleadoApiModelFromJson(Map<String, dynamic> json) =>
    _EmpleadoApiModel(
      idEmpleado: (json['idEmpleado'] as num?)?.toInt(),
      codigoEmpleado: json['codigoEmpleado'] as String?,
      nombre: json['nombre'] as String?,
      apellidos: json['apellidos'] as String?,
      email: json['email'] as String?,
      telefono: json['telefono'] as String?,
      direccion: json['direccion'] as String?,
      ciudad: json['ciudad'] as String?,
      provincia: json['provincia'] as String?,
      codigoPostal: json['codigoPostal'] as String?,
      fechaNacimiento: json['fechaNacimiento'] == null
          ? null
          : DateTime.parse(json['fechaNacimiento'] as String),
      salarioBase: (json['salarioBase'] as num?)?.toDouble(),
      tipoContrato: json['tipoContrato'] as String?,
      jornada: json['jornada'] as String?,
      observaciones: json['observaciones'] as String?,
      imagenUrl: json['imagenUrl'] as String?,
      puesto: json['puesto'] as String?,
      dniNie: json['dniNie'] as String?,
      fechaAlta: json['fechaAlta'] == null
          ? null
          : DateTime.parse(json['fechaAlta'] as String),
      fechaBaja: json['fechaBaja'] == null
          ? null
          : DateTime.parse(json['fechaBaja'] as String),
      saldoVacaciones: (json['saldoVacaciones'] as num?)?.toInt(),
      isActivo: json['isActivo'] as bool?,
      idDepartamento: (json['idDepartamento'] as num?)?.toInt(),
      idEmpresa: (json['idEmpresa'] as num?)?.toInt(),
      idUsuario: (json['idUsuario'] as num?)?.toInt(),
      departamentoNombre: json['departamentoNombre'] as String?,
    );

Map<String, dynamic> _$EmpleadoApiModelToJson(_EmpleadoApiModel instance) =>
    <String, dynamic>{
      'idEmpleado': instance.idEmpleado,
      'codigoEmpleado': instance.codigoEmpleado,
      'nombre': instance.nombre,
      'apellidos': instance.apellidos,
      'email': instance.email,
      'telefono': instance.telefono,
      'direccion': instance.direccion,
      'ciudad': instance.ciudad,
      'provincia': instance.provincia,
      'codigoPostal': instance.codigoPostal,
      'fechaNacimiento': instance.fechaNacimiento?.toIso8601String(),
      'salarioBase': instance.salarioBase,
      'tipoContrato': instance.tipoContrato,
      'jornada': instance.jornada,
      'observaciones': instance.observaciones,
      'imagenUrl': instance.imagenUrl,
      'puesto': instance.puesto,
      'dniNie': instance.dniNie,
      'fechaAlta': instance.fechaAlta?.toIso8601String(),
      'fechaBaja': instance.fechaBaja?.toIso8601String(),
      'saldoVacaciones': instance.saldoVacaciones,
      'isActivo': instance.isActivo,
      'idDepartamento': instance.idDepartamento,
      'idEmpresa': instance.idEmpresa,
      'idUsuario': instance.idUsuario,
      'departamentoNombre': instance.departamentoNombre,
    };

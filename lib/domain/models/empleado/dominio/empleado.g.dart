// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empleado.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Empleado _$EmpleadoFromJson(Map<String, dynamic> json) => _Empleado(
  idEmpleado: (json['idEmpleado'] as num?)?.toInt(),
  nombre: json['nombre'] as String,
  apellidos: json['apellidos'] as String,
  email: json['email'] as String,
  telefono: json['telefono'] as String,
  codigoEmpleado: json['codigoEmpleado'] as String,
  direccion: json['direccion'] as String,
  ciudad: json['ciudad'] as String,
  provincia: json['provincia'] as String,
  codigoPostal: json['codigoPostal'] as String,
  fechaNacimiento: DateTime.parse(json['fechaNacimiento'] as String),
  salarioBase: (json['salarioBase'] as num).toDouble(),
  tipoContrato: json['tipoContrato'] as String,
  jornada: json['jornada'] as String,
  observaciones: json['observaciones'] as String?,
  puesto: json['puesto'] as String,
  dniNie: json['dniNie'] as String,
  fechaAlta: DateTime.parse(json['fechaAlta'] as String),
  fechaBaja: json['fechaBaja'] == null
      ? null
      : DateTime.parse(json['fechaBaja'] as String),
  saldoVacaciones: (json['saldoVacaciones'] as num).toInt(),
  imagenUrl: json['imagenUrl'] as String?,
  usuario: json['usuario'] == null
      ? null
      : User.fromJson(json['usuario'] as Map<String, dynamic>),
  empresa: json['empresa'] == null
      ? null
      : Empresa.fromJson(json['empresa'] as Map<String, dynamic>),
  departamentoEntity: json['departamentoEntity'] == null
      ? null
      : Departamento.fromJson(
          json['departamentoEntity'] as Map<String, dynamic>,
        ),
  idUsuario: (json['idUsuario'] as num).toInt(),
  idEmpresa: (json['idEmpresa'] as num).toInt(),
  idDepartamento: (json['idDepartamento'] as num).toInt(),
  departamentoNombre: json['departamentoNombre'] as String,
  isActivo: json['isActivo'] as bool,
);

Map<String, dynamic> _$EmpleadoToJson(_Empleado instance) => <String, dynamic>{
  'idEmpleado': instance.idEmpleado,
  'nombre': instance.nombre,
  'apellidos': instance.apellidos,
  'email': instance.email,
  'telefono': instance.telefono,
  'codigoEmpleado': instance.codigoEmpleado,
  'direccion': instance.direccion,
  'ciudad': instance.ciudad,
  'provincia': instance.provincia,
  'codigoPostal': instance.codigoPostal,
  'fechaNacimiento': instance.fechaNacimiento.toIso8601String(),
  'salarioBase': instance.salarioBase,
  'tipoContrato': instance.tipoContrato,
  'jornada': instance.jornada,
  'observaciones': instance.observaciones,
  'puesto': instance.puesto,
  'dniNie': instance.dniNie,
  'fechaAlta': instance.fechaAlta.toIso8601String(),
  'fechaBaja': instance.fechaBaja?.toIso8601String(),
  'saldoVacaciones': instance.saldoVacaciones,
  'imagenUrl': instance.imagenUrl,
  'usuario': instance.usuario,
  'empresa': instance.empresa,
  'departamentoEntity': instance.departamentoEntity,
  'idUsuario': instance.idUsuario,
  'idEmpresa': instance.idEmpresa,
  'idDepartamento': instance.idDepartamento,
  'departamentoNombre': instance.departamentoNombre,
  'isActivo': instance.isActivo,
};

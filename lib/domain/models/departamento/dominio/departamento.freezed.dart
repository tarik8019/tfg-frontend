// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'departamento.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Departamento {

 int? get idDepartamento; int? get idEmpresa; Empresa? get empresa; String get codigoDepartamento; String get nombre; String get descripcion; int? get idResponsableEmpleado; ResponsableEmpleado? get responsableEmpleado; String get emailContacto; String get telefonoContacto; bool? get activo; DateTime? get fechaCreacion; DateTime? get fechaActualizacion;
/// Create a copy of Departamento
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepartamentoCopyWith<Departamento> get copyWith => _$DepartamentoCopyWithImpl<Departamento>(this as Departamento, _$identity);

  /// Serializes this Departamento to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Departamento&&(identical(other.idDepartamento, idDepartamento) || other.idDepartamento == idDepartamento)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.empresa, empresa) || other.empresa == empresa)&&(identical(other.codigoDepartamento, codigoDepartamento) || other.codigoDepartamento == codigoDepartamento)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.idResponsableEmpleado, idResponsableEmpleado) || other.idResponsableEmpleado == idResponsableEmpleado)&&(identical(other.responsableEmpleado, responsableEmpleado) || other.responsableEmpleado == responsableEmpleado)&&(identical(other.emailContacto, emailContacto) || other.emailContacto == emailContacto)&&(identical(other.telefonoContacto, telefonoContacto) || other.telefonoContacto == telefonoContacto)&&(identical(other.activo, activo) || other.activo == activo)&&(identical(other.fechaCreacion, fechaCreacion) || other.fechaCreacion == fechaCreacion)&&(identical(other.fechaActualizacion, fechaActualizacion) || other.fechaActualizacion == fechaActualizacion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDepartamento,idEmpresa,empresa,codigoDepartamento,nombre,descripcion,idResponsableEmpleado,responsableEmpleado,emailContacto,telefonoContacto,activo,fechaCreacion,fechaActualizacion);

@override
String toString() {
  return 'Departamento(idDepartamento: $idDepartamento, idEmpresa: $idEmpresa, empresa: $empresa, codigoDepartamento: $codigoDepartamento, nombre: $nombre, descripcion: $descripcion, idResponsableEmpleado: $idResponsableEmpleado, responsableEmpleado: $responsableEmpleado, emailContacto: $emailContacto, telefonoContacto: $telefonoContacto, activo: $activo, fechaCreacion: $fechaCreacion, fechaActualizacion: $fechaActualizacion)';
}


}

/// @nodoc
abstract mixin class $DepartamentoCopyWith<$Res>  {
  factory $DepartamentoCopyWith(Departamento value, $Res Function(Departamento) _then) = _$DepartamentoCopyWithImpl;
@useResult
$Res call({
 int? idDepartamento, int? idEmpresa, Empresa? empresa, String codigoDepartamento, String nombre, String descripcion, int? idResponsableEmpleado, ResponsableEmpleado? responsableEmpleado, String emailContacto, String telefonoContacto, bool? activo, DateTime? fechaCreacion, DateTime? fechaActualizacion
});


$EmpresaCopyWith<$Res>? get empresa;$ResponsableEmpleadoCopyWith<$Res>? get responsableEmpleado;

}
/// @nodoc
class _$DepartamentoCopyWithImpl<$Res>
    implements $DepartamentoCopyWith<$Res> {
  _$DepartamentoCopyWithImpl(this._self, this._then);

  final Departamento _self;
  final $Res Function(Departamento) _then;

/// Create a copy of Departamento
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idDepartamento = freezed,Object? idEmpresa = freezed,Object? empresa = freezed,Object? codigoDepartamento = null,Object? nombre = null,Object? descripcion = null,Object? idResponsableEmpleado = freezed,Object? responsableEmpleado = freezed,Object? emailContacto = null,Object? telefonoContacto = null,Object? activo = freezed,Object? fechaCreacion = freezed,Object? fechaActualizacion = freezed,}) {
  return _then(_self.copyWith(
idDepartamento: freezed == idDepartamento ? _self.idDepartamento : idDepartamento // ignore: cast_nullable_to_non_nullable
as int?,idEmpresa: freezed == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int?,empresa: freezed == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa?,codigoDepartamento: null == codigoDepartamento ? _self.codigoDepartamento : codigoDepartamento // ignore: cast_nullable_to_non_nullable
as String,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,idResponsableEmpleado: freezed == idResponsableEmpleado ? _self.idResponsableEmpleado : idResponsableEmpleado // ignore: cast_nullable_to_non_nullable
as int?,responsableEmpleado: freezed == responsableEmpleado ? _self.responsableEmpleado : responsableEmpleado // ignore: cast_nullable_to_non_nullable
as ResponsableEmpleado?,emailContacto: null == emailContacto ? _self.emailContacto : emailContacto // ignore: cast_nullable_to_non_nullable
as String,telefonoContacto: null == telefonoContacto ? _self.telefonoContacto : telefonoContacto // ignore: cast_nullable_to_non_nullable
as String,activo: freezed == activo ? _self.activo : activo // ignore: cast_nullable_to_non_nullable
as bool?,fechaCreacion: freezed == fechaCreacion ? _self.fechaCreacion : fechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime?,fechaActualizacion: freezed == fechaActualizacion ? _self.fechaActualizacion : fechaActualizacion // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Departamento
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpresaCopyWith<$Res>? get empresa {
    if (_self.empresa == null) {
    return null;
  }

  return $EmpresaCopyWith<$Res>(_self.empresa!, (value) {
    return _then(_self.copyWith(empresa: value));
  });
}/// Create a copy of Departamento
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponsableEmpleadoCopyWith<$Res>? get responsableEmpleado {
    if (_self.responsableEmpleado == null) {
    return null;
  }

  return $ResponsableEmpleadoCopyWith<$Res>(_self.responsableEmpleado!, (value) {
    return _then(_self.copyWith(responsableEmpleado: value));
  });
}
}


/// Adds pattern-matching-related methods to [Departamento].
extension DepartamentoPatterns on Departamento {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Departamento value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Departamento() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Departamento value)  $default,){
final _that = this;
switch (_that) {
case _Departamento():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Departamento value)?  $default,){
final _that = this;
switch (_that) {
case _Departamento() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idDepartamento,  int? idEmpresa,  Empresa? empresa,  String codigoDepartamento,  String nombre,  String descripcion,  int? idResponsableEmpleado,  ResponsableEmpleado? responsableEmpleado,  String emailContacto,  String telefonoContacto,  bool? activo,  DateTime? fechaCreacion,  DateTime? fechaActualizacion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Departamento() when $default != null:
return $default(_that.idDepartamento,_that.idEmpresa,_that.empresa,_that.codigoDepartamento,_that.nombre,_that.descripcion,_that.idResponsableEmpleado,_that.responsableEmpleado,_that.emailContacto,_that.telefonoContacto,_that.activo,_that.fechaCreacion,_that.fechaActualizacion);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idDepartamento,  int? idEmpresa,  Empresa? empresa,  String codigoDepartamento,  String nombre,  String descripcion,  int? idResponsableEmpleado,  ResponsableEmpleado? responsableEmpleado,  String emailContacto,  String telefonoContacto,  bool? activo,  DateTime? fechaCreacion,  DateTime? fechaActualizacion)  $default,) {final _that = this;
switch (_that) {
case _Departamento():
return $default(_that.idDepartamento,_that.idEmpresa,_that.empresa,_that.codigoDepartamento,_that.nombre,_that.descripcion,_that.idResponsableEmpleado,_that.responsableEmpleado,_that.emailContacto,_that.telefonoContacto,_that.activo,_that.fechaCreacion,_that.fechaActualizacion);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idDepartamento,  int? idEmpresa,  Empresa? empresa,  String codigoDepartamento,  String nombre,  String descripcion,  int? idResponsableEmpleado,  ResponsableEmpleado? responsableEmpleado,  String emailContacto,  String telefonoContacto,  bool? activo,  DateTime? fechaCreacion,  DateTime? fechaActualizacion)?  $default,) {final _that = this;
switch (_that) {
case _Departamento() when $default != null:
return $default(_that.idDepartamento,_that.idEmpresa,_that.empresa,_that.codigoDepartamento,_that.nombre,_that.descripcion,_that.idResponsableEmpleado,_that.responsableEmpleado,_that.emailContacto,_that.telefonoContacto,_that.activo,_that.fechaCreacion,_that.fechaActualizacion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Departamento implements Departamento {
  const _Departamento({this.idDepartamento, this.idEmpresa, this.empresa, required this.codigoDepartamento, required this.nombre, required this.descripcion, this.idResponsableEmpleado, this.responsableEmpleado, required this.emailContacto, required this.telefonoContacto, this.activo, this.fechaCreacion, this.fechaActualizacion});
  factory _Departamento.fromJson(Map<String, dynamic> json) => _$DepartamentoFromJson(json);

@override final  int? idDepartamento;
@override final  int? idEmpresa;
@override final  Empresa? empresa;
@override final  String codigoDepartamento;
@override final  String nombre;
@override final  String descripcion;
@override final  int? idResponsableEmpleado;
@override final  ResponsableEmpleado? responsableEmpleado;
@override final  String emailContacto;
@override final  String telefonoContacto;
@override final  bool? activo;
@override final  DateTime? fechaCreacion;
@override final  DateTime? fechaActualizacion;

/// Create a copy of Departamento
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DepartamentoCopyWith<_Departamento> get copyWith => __$DepartamentoCopyWithImpl<_Departamento>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DepartamentoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Departamento&&(identical(other.idDepartamento, idDepartamento) || other.idDepartamento == idDepartamento)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.empresa, empresa) || other.empresa == empresa)&&(identical(other.codigoDepartamento, codigoDepartamento) || other.codigoDepartamento == codigoDepartamento)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.idResponsableEmpleado, idResponsableEmpleado) || other.idResponsableEmpleado == idResponsableEmpleado)&&(identical(other.responsableEmpleado, responsableEmpleado) || other.responsableEmpleado == responsableEmpleado)&&(identical(other.emailContacto, emailContacto) || other.emailContacto == emailContacto)&&(identical(other.telefonoContacto, telefonoContacto) || other.telefonoContacto == telefonoContacto)&&(identical(other.activo, activo) || other.activo == activo)&&(identical(other.fechaCreacion, fechaCreacion) || other.fechaCreacion == fechaCreacion)&&(identical(other.fechaActualizacion, fechaActualizacion) || other.fechaActualizacion == fechaActualizacion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDepartamento,idEmpresa,empresa,codigoDepartamento,nombre,descripcion,idResponsableEmpleado,responsableEmpleado,emailContacto,telefonoContacto,activo,fechaCreacion,fechaActualizacion);

@override
String toString() {
  return 'Departamento(idDepartamento: $idDepartamento, idEmpresa: $idEmpresa, empresa: $empresa, codigoDepartamento: $codigoDepartamento, nombre: $nombre, descripcion: $descripcion, idResponsableEmpleado: $idResponsableEmpleado, responsableEmpleado: $responsableEmpleado, emailContacto: $emailContacto, telefonoContacto: $telefonoContacto, activo: $activo, fechaCreacion: $fechaCreacion, fechaActualizacion: $fechaActualizacion)';
}


}

/// @nodoc
abstract mixin class _$DepartamentoCopyWith<$Res> implements $DepartamentoCopyWith<$Res> {
  factory _$DepartamentoCopyWith(_Departamento value, $Res Function(_Departamento) _then) = __$DepartamentoCopyWithImpl;
@override @useResult
$Res call({
 int? idDepartamento, int? idEmpresa, Empresa? empresa, String codigoDepartamento, String nombre, String descripcion, int? idResponsableEmpleado, ResponsableEmpleado? responsableEmpleado, String emailContacto, String telefonoContacto, bool? activo, DateTime? fechaCreacion, DateTime? fechaActualizacion
});


@override $EmpresaCopyWith<$Res>? get empresa;@override $ResponsableEmpleadoCopyWith<$Res>? get responsableEmpleado;

}
/// @nodoc
class __$DepartamentoCopyWithImpl<$Res>
    implements _$DepartamentoCopyWith<$Res> {
  __$DepartamentoCopyWithImpl(this._self, this._then);

  final _Departamento _self;
  final $Res Function(_Departamento) _then;

/// Create a copy of Departamento
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idDepartamento = freezed,Object? idEmpresa = freezed,Object? empresa = freezed,Object? codigoDepartamento = null,Object? nombre = null,Object? descripcion = null,Object? idResponsableEmpleado = freezed,Object? responsableEmpleado = freezed,Object? emailContacto = null,Object? telefonoContacto = null,Object? activo = freezed,Object? fechaCreacion = freezed,Object? fechaActualizacion = freezed,}) {
  return _then(_Departamento(
idDepartamento: freezed == idDepartamento ? _self.idDepartamento : idDepartamento // ignore: cast_nullable_to_non_nullable
as int?,idEmpresa: freezed == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int?,empresa: freezed == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa?,codigoDepartamento: null == codigoDepartamento ? _self.codigoDepartamento : codigoDepartamento // ignore: cast_nullable_to_non_nullable
as String,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,idResponsableEmpleado: freezed == idResponsableEmpleado ? _self.idResponsableEmpleado : idResponsableEmpleado // ignore: cast_nullable_to_non_nullable
as int?,responsableEmpleado: freezed == responsableEmpleado ? _self.responsableEmpleado : responsableEmpleado // ignore: cast_nullable_to_non_nullable
as ResponsableEmpleado?,emailContacto: null == emailContacto ? _self.emailContacto : emailContacto // ignore: cast_nullable_to_non_nullable
as String,telefonoContacto: null == telefonoContacto ? _self.telefonoContacto : telefonoContacto // ignore: cast_nullable_to_non_nullable
as String,activo: freezed == activo ? _self.activo : activo // ignore: cast_nullable_to_non_nullable
as bool?,fechaCreacion: freezed == fechaCreacion ? _self.fechaCreacion : fechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime?,fechaActualizacion: freezed == fechaActualizacion ? _self.fechaActualizacion : fechaActualizacion // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Departamento
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpresaCopyWith<$Res>? get empresa {
    if (_self.empresa == null) {
    return null;
  }

  return $EmpresaCopyWith<$Res>(_self.empresa!, (value) {
    return _then(_self.copyWith(empresa: value));
  });
}/// Create a copy of Departamento
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponsableEmpleadoCopyWith<$Res>? get responsableEmpleado {
    if (_self.responsableEmpleado == null) {
    return null;
  }

  return $ResponsableEmpleadoCopyWith<$Res>(_self.responsableEmpleado!, (value) {
    return _then(_self.copyWith(responsableEmpleado: value));
  });
}
}

// dart format on

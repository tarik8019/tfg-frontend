// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'responsable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Responsable {

 int? get idResponsable; int get idEmpleado; Empleado? get empleado; int get idEmpresa; Empresa? get empresa; String get cargo; String get emailContacto; String get telefonoContacto; bool get activo; DateTime get fechaCreacion; DateTime get fechaActualizacion;
/// Create a copy of Responsable
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponsableCopyWith<Responsable> get copyWith => _$ResponsableCopyWithImpl<Responsable>(this as Responsable, _$identity);

  /// Serializes this Responsable to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Responsable&&(identical(other.idResponsable, idResponsable) || other.idResponsable == idResponsable)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.empleado, empleado) || other.empleado == empleado)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.empresa, empresa) || other.empresa == empresa)&&(identical(other.cargo, cargo) || other.cargo == cargo)&&(identical(other.emailContacto, emailContacto) || other.emailContacto == emailContacto)&&(identical(other.telefonoContacto, telefonoContacto) || other.telefonoContacto == telefonoContacto)&&(identical(other.activo, activo) || other.activo == activo)&&(identical(other.fechaCreacion, fechaCreacion) || other.fechaCreacion == fechaCreacion)&&(identical(other.fechaActualizacion, fechaActualizacion) || other.fechaActualizacion == fechaActualizacion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idResponsable,idEmpleado,empleado,idEmpresa,empresa,cargo,emailContacto,telefonoContacto,activo,fechaCreacion,fechaActualizacion);

@override
String toString() {
  return 'Responsable(idResponsable: $idResponsable, idEmpleado: $idEmpleado, empleado: $empleado, idEmpresa: $idEmpresa, empresa: $empresa, cargo: $cargo, emailContacto: $emailContacto, telefonoContacto: $telefonoContacto, activo: $activo, fechaCreacion: $fechaCreacion, fechaActualizacion: $fechaActualizacion)';
}


}

/// @nodoc
abstract mixin class $ResponsableCopyWith<$Res>  {
  factory $ResponsableCopyWith(Responsable value, $Res Function(Responsable) _then) = _$ResponsableCopyWithImpl;
@useResult
$Res call({
 int? idResponsable, int idEmpleado, Empleado? empleado, int idEmpresa, Empresa? empresa, String cargo, String emailContacto, String telefonoContacto, bool activo, DateTime fechaCreacion, DateTime fechaActualizacion
});


$EmpleadoCopyWith<$Res>? get empleado;$EmpresaCopyWith<$Res>? get empresa;

}
/// @nodoc
class _$ResponsableCopyWithImpl<$Res>
    implements $ResponsableCopyWith<$Res> {
  _$ResponsableCopyWithImpl(this._self, this._then);

  final Responsable _self;
  final $Res Function(Responsable) _then;

/// Create a copy of Responsable
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idResponsable = freezed,Object? idEmpleado = null,Object? empleado = freezed,Object? idEmpresa = null,Object? empresa = freezed,Object? cargo = null,Object? emailContacto = null,Object? telefonoContacto = null,Object? activo = null,Object? fechaCreacion = null,Object? fechaActualizacion = null,}) {
  return _then(_self.copyWith(
idResponsable: freezed == idResponsable ? _self.idResponsable : idResponsable // ignore: cast_nullable_to_non_nullable
as int?,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,empleado: freezed == empleado ? _self.empleado : empleado // ignore: cast_nullable_to_non_nullable
as Empleado?,idEmpresa: null == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int,empresa: freezed == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa?,cargo: null == cargo ? _self.cargo : cargo // ignore: cast_nullable_to_non_nullable
as String,emailContacto: null == emailContacto ? _self.emailContacto : emailContacto // ignore: cast_nullable_to_non_nullable
as String,telefonoContacto: null == telefonoContacto ? _self.telefonoContacto : telefonoContacto // ignore: cast_nullable_to_non_nullable
as String,activo: null == activo ? _self.activo : activo // ignore: cast_nullable_to_non_nullable
as bool,fechaCreacion: null == fechaCreacion ? _self.fechaCreacion : fechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime,fechaActualizacion: null == fechaActualizacion ? _self.fechaActualizacion : fechaActualizacion // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of Responsable
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpleadoCopyWith<$Res>? get empleado {
    if (_self.empleado == null) {
    return null;
  }

  return $EmpleadoCopyWith<$Res>(_self.empleado!, (value) {
    return _then(_self.copyWith(empleado: value));
  });
}/// Create a copy of Responsable
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
}
}


/// Adds pattern-matching-related methods to [Responsable].
extension ResponsablePatterns on Responsable {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Responsable value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Responsable() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Responsable value)  $default,){
final _that = this;
switch (_that) {
case _Responsable():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Responsable value)?  $default,){
final _that = this;
switch (_that) {
case _Responsable() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idResponsable,  int idEmpleado,  Empleado? empleado,  int idEmpresa,  Empresa? empresa,  String cargo,  String emailContacto,  String telefonoContacto,  bool activo,  DateTime fechaCreacion,  DateTime fechaActualizacion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Responsable() when $default != null:
return $default(_that.idResponsable,_that.idEmpleado,_that.empleado,_that.idEmpresa,_that.empresa,_that.cargo,_that.emailContacto,_that.telefonoContacto,_that.activo,_that.fechaCreacion,_that.fechaActualizacion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idResponsable,  int idEmpleado,  Empleado? empleado,  int idEmpresa,  Empresa? empresa,  String cargo,  String emailContacto,  String telefonoContacto,  bool activo,  DateTime fechaCreacion,  DateTime fechaActualizacion)  $default,) {final _that = this;
switch (_that) {
case _Responsable():
return $default(_that.idResponsable,_that.idEmpleado,_that.empleado,_that.idEmpresa,_that.empresa,_that.cargo,_that.emailContacto,_that.telefonoContacto,_that.activo,_that.fechaCreacion,_that.fechaActualizacion);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idResponsable,  int idEmpleado,  Empleado? empleado,  int idEmpresa,  Empresa? empresa,  String cargo,  String emailContacto,  String telefonoContacto,  bool activo,  DateTime fechaCreacion,  DateTime fechaActualizacion)?  $default,) {final _that = this;
switch (_that) {
case _Responsable() when $default != null:
return $default(_that.idResponsable,_that.idEmpleado,_that.empleado,_that.idEmpresa,_that.empresa,_that.cargo,_that.emailContacto,_that.telefonoContacto,_that.activo,_that.fechaCreacion,_that.fechaActualizacion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Responsable implements Responsable {
  const _Responsable({this.idResponsable, required this.idEmpleado, this.empleado, required this.idEmpresa, this.empresa, required this.cargo, required this.emailContacto, required this.telefonoContacto, required this.activo, required this.fechaCreacion, required this.fechaActualizacion});
  factory _Responsable.fromJson(Map<String, dynamic> json) => _$ResponsableFromJson(json);

@override final  int? idResponsable;
@override final  int idEmpleado;
@override final  Empleado? empleado;
@override final  int idEmpresa;
@override final  Empresa? empresa;
@override final  String cargo;
@override final  String emailContacto;
@override final  String telefonoContacto;
@override final  bool activo;
@override final  DateTime fechaCreacion;
@override final  DateTime fechaActualizacion;

/// Create a copy of Responsable
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponsableCopyWith<_Responsable> get copyWith => __$ResponsableCopyWithImpl<_Responsable>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponsableToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Responsable&&(identical(other.idResponsable, idResponsable) || other.idResponsable == idResponsable)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.empleado, empleado) || other.empleado == empleado)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.empresa, empresa) || other.empresa == empresa)&&(identical(other.cargo, cargo) || other.cargo == cargo)&&(identical(other.emailContacto, emailContacto) || other.emailContacto == emailContacto)&&(identical(other.telefonoContacto, telefonoContacto) || other.telefonoContacto == telefonoContacto)&&(identical(other.activo, activo) || other.activo == activo)&&(identical(other.fechaCreacion, fechaCreacion) || other.fechaCreacion == fechaCreacion)&&(identical(other.fechaActualizacion, fechaActualizacion) || other.fechaActualizacion == fechaActualizacion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idResponsable,idEmpleado,empleado,idEmpresa,empresa,cargo,emailContacto,telefonoContacto,activo,fechaCreacion,fechaActualizacion);

@override
String toString() {
  return 'Responsable(idResponsable: $idResponsable, idEmpleado: $idEmpleado, empleado: $empleado, idEmpresa: $idEmpresa, empresa: $empresa, cargo: $cargo, emailContacto: $emailContacto, telefonoContacto: $telefonoContacto, activo: $activo, fechaCreacion: $fechaCreacion, fechaActualizacion: $fechaActualizacion)';
}


}

/// @nodoc
abstract mixin class _$ResponsableCopyWith<$Res> implements $ResponsableCopyWith<$Res> {
  factory _$ResponsableCopyWith(_Responsable value, $Res Function(_Responsable) _then) = __$ResponsableCopyWithImpl;
@override @useResult
$Res call({
 int? idResponsable, int idEmpleado, Empleado? empleado, int idEmpresa, Empresa? empresa, String cargo, String emailContacto, String telefonoContacto, bool activo, DateTime fechaCreacion, DateTime fechaActualizacion
});


@override $EmpleadoCopyWith<$Res>? get empleado;@override $EmpresaCopyWith<$Res>? get empresa;

}
/// @nodoc
class __$ResponsableCopyWithImpl<$Res>
    implements _$ResponsableCopyWith<$Res> {
  __$ResponsableCopyWithImpl(this._self, this._then);

  final _Responsable _self;
  final $Res Function(_Responsable) _then;

/// Create a copy of Responsable
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idResponsable = freezed,Object? idEmpleado = null,Object? empleado = freezed,Object? idEmpresa = null,Object? empresa = freezed,Object? cargo = null,Object? emailContacto = null,Object? telefonoContacto = null,Object? activo = null,Object? fechaCreacion = null,Object? fechaActualizacion = null,}) {
  return _then(_Responsable(
idResponsable: freezed == idResponsable ? _self.idResponsable : idResponsable // ignore: cast_nullable_to_non_nullable
as int?,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,empleado: freezed == empleado ? _self.empleado : empleado // ignore: cast_nullable_to_non_nullable
as Empleado?,idEmpresa: null == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int,empresa: freezed == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa?,cargo: null == cargo ? _self.cargo : cargo // ignore: cast_nullable_to_non_nullable
as String,emailContacto: null == emailContacto ? _self.emailContacto : emailContacto // ignore: cast_nullable_to_non_nullable
as String,telefonoContacto: null == telefonoContacto ? _self.telefonoContacto : telefonoContacto // ignore: cast_nullable_to_non_nullable
as String,activo: null == activo ? _self.activo : activo // ignore: cast_nullable_to_non_nullable
as bool,fechaCreacion: null == fechaCreacion ? _self.fechaCreacion : fechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime,fechaActualizacion: null == fechaActualizacion ? _self.fechaActualizacion : fechaActualizacion // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of Responsable
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpleadoCopyWith<$Res>? get empleado {
    if (_self.empleado == null) {
    return null;
  }

  return $EmpleadoCopyWith<$Res>(_self.empleado!, (value) {
    return _then(_self.copyWith(empleado: value));
  });
}/// Create a copy of Responsable
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
}
}

// dart format on

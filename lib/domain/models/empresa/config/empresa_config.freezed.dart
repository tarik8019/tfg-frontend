// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'empresa_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmpresaConfig {

 String? get nombre; String? get cif; String? get codigoEmpresa; String? get direccion; String? get ciudad; String? get pais; String? get fechaCreacion; int? get cantidadUsuarios; int? get cantidadEmpleados;
/// Create a copy of EmpresaConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmpresaConfigCopyWith<EmpresaConfig> get copyWith => _$EmpresaConfigCopyWithImpl<EmpresaConfig>(this as EmpresaConfig, _$identity);

  /// Serializes this EmpresaConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmpresaConfig&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.cif, cif) || other.cif == cif)&&(identical(other.codigoEmpresa, codigoEmpresa) || other.codigoEmpresa == codigoEmpresa)&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.ciudad, ciudad) || other.ciudad == ciudad)&&(identical(other.pais, pais) || other.pais == pais)&&(identical(other.fechaCreacion, fechaCreacion) || other.fechaCreacion == fechaCreacion)&&(identical(other.cantidadUsuarios, cantidadUsuarios) || other.cantidadUsuarios == cantidadUsuarios)&&(identical(other.cantidadEmpleados, cantidadEmpleados) || other.cantidadEmpleados == cantidadEmpleados));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nombre,cif,codigoEmpresa,direccion,ciudad,pais,fechaCreacion,cantidadUsuarios,cantidadEmpleados);

@override
String toString() {
  return 'EmpresaConfig(nombre: $nombre, cif: $cif, codigoEmpresa: $codigoEmpresa, direccion: $direccion, ciudad: $ciudad, pais: $pais, fechaCreacion: $fechaCreacion, cantidadUsuarios: $cantidadUsuarios, cantidadEmpleados: $cantidadEmpleados)';
}


}

/// @nodoc
abstract mixin class $EmpresaConfigCopyWith<$Res>  {
  factory $EmpresaConfigCopyWith(EmpresaConfig value, $Res Function(EmpresaConfig) _then) = _$EmpresaConfigCopyWithImpl;
@useResult
$Res call({
 String? nombre, String? cif, String? codigoEmpresa, String? direccion, String? ciudad, String? pais, String? fechaCreacion, int? cantidadUsuarios, int? cantidadEmpleados
});




}
/// @nodoc
class _$EmpresaConfigCopyWithImpl<$Res>
    implements $EmpresaConfigCopyWith<$Res> {
  _$EmpresaConfigCopyWithImpl(this._self, this._then);

  final EmpresaConfig _self;
  final $Res Function(EmpresaConfig) _then;

/// Create a copy of EmpresaConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nombre = freezed,Object? cif = freezed,Object? codigoEmpresa = freezed,Object? direccion = freezed,Object? ciudad = freezed,Object? pais = freezed,Object? fechaCreacion = freezed,Object? cantidadUsuarios = freezed,Object? cantidadEmpleados = freezed,}) {
  return _then(_self.copyWith(
nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,cif: freezed == cif ? _self.cif : cif // ignore: cast_nullable_to_non_nullable
as String?,codigoEmpresa: freezed == codigoEmpresa ? _self.codigoEmpresa : codigoEmpresa // ignore: cast_nullable_to_non_nullable
as String?,direccion: freezed == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String?,ciudad: freezed == ciudad ? _self.ciudad : ciudad // ignore: cast_nullable_to_non_nullable
as String?,pais: freezed == pais ? _self.pais : pais // ignore: cast_nullable_to_non_nullable
as String?,fechaCreacion: freezed == fechaCreacion ? _self.fechaCreacion : fechaCreacion // ignore: cast_nullable_to_non_nullable
as String?,cantidadUsuarios: freezed == cantidadUsuarios ? _self.cantidadUsuarios : cantidadUsuarios // ignore: cast_nullable_to_non_nullable
as int?,cantidadEmpleados: freezed == cantidadEmpleados ? _self.cantidadEmpleados : cantidadEmpleados // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [EmpresaConfig].
extension EmpresaConfigPatterns on EmpresaConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmpresaConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmpresaConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmpresaConfig value)  $default,){
final _that = this;
switch (_that) {
case _EmpresaConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmpresaConfig value)?  $default,){
final _that = this;
switch (_that) {
case _EmpresaConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? nombre,  String? cif,  String? codigoEmpresa,  String? direccion,  String? ciudad,  String? pais,  String? fechaCreacion,  int? cantidadUsuarios,  int? cantidadEmpleados)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmpresaConfig() when $default != null:
return $default(_that.nombre,_that.cif,_that.codigoEmpresa,_that.direccion,_that.ciudad,_that.pais,_that.fechaCreacion,_that.cantidadUsuarios,_that.cantidadEmpleados);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? nombre,  String? cif,  String? codigoEmpresa,  String? direccion,  String? ciudad,  String? pais,  String? fechaCreacion,  int? cantidadUsuarios,  int? cantidadEmpleados)  $default,) {final _that = this;
switch (_that) {
case _EmpresaConfig():
return $default(_that.nombre,_that.cif,_that.codigoEmpresa,_that.direccion,_that.ciudad,_that.pais,_that.fechaCreacion,_that.cantidadUsuarios,_that.cantidadEmpleados);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? nombre,  String? cif,  String? codigoEmpresa,  String? direccion,  String? ciudad,  String? pais,  String? fechaCreacion,  int? cantidadUsuarios,  int? cantidadEmpleados)?  $default,) {final _that = this;
switch (_that) {
case _EmpresaConfig() when $default != null:
return $default(_that.nombre,_that.cif,_that.codigoEmpresa,_that.direccion,_that.ciudad,_that.pais,_that.fechaCreacion,_that.cantidadUsuarios,_that.cantidadEmpleados);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmpresaConfig implements EmpresaConfig {
  const _EmpresaConfig({this.nombre, this.cif, this.codigoEmpresa, this.direccion, this.ciudad, this.pais, this.fechaCreacion, this.cantidadUsuarios, this.cantidadEmpleados});
  factory _EmpresaConfig.fromJson(Map<String, dynamic> json) => _$EmpresaConfigFromJson(json);

@override final  String? nombre;
@override final  String? cif;
@override final  String? codigoEmpresa;
@override final  String? direccion;
@override final  String? ciudad;
@override final  String? pais;
@override final  String? fechaCreacion;
@override final  int? cantidadUsuarios;
@override final  int? cantidadEmpleados;

/// Create a copy of EmpresaConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmpresaConfigCopyWith<_EmpresaConfig> get copyWith => __$EmpresaConfigCopyWithImpl<_EmpresaConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmpresaConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmpresaConfig&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.cif, cif) || other.cif == cif)&&(identical(other.codigoEmpresa, codigoEmpresa) || other.codigoEmpresa == codigoEmpresa)&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.ciudad, ciudad) || other.ciudad == ciudad)&&(identical(other.pais, pais) || other.pais == pais)&&(identical(other.fechaCreacion, fechaCreacion) || other.fechaCreacion == fechaCreacion)&&(identical(other.cantidadUsuarios, cantidadUsuarios) || other.cantidadUsuarios == cantidadUsuarios)&&(identical(other.cantidadEmpleados, cantidadEmpleados) || other.cantidadEmpleados == cantidadEmpleados));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nombre,cif,codigoEmpresa,direccion,ciudad,pais,fechaCreacion,cantidadUsuarios,cantidadEmpleados);

@override
String toString() {
  return 'EmpresaConfig(nombre: $nombre, cif: $cif, codigoEmpresa: $codigoEmpresa, direccion: $direccion, ciudad: $ciudad, pais: $pais, fechaCreacion: $fechaCreacion, cantidadUsuarios: $cantidadUsuarios, cantidadEmpleados: $cantidadEmpleados)';
}


}

/// @nodoc
abstract mixin class _$EmpresaConfigCopyWith<$Res> implements $EmpresaConfigCopyWith<$Res> {
  factory _$EmpresaConfigCopyWith(_EmpresaConfig value, $Res Function(_EmpresaConfig) _then) = __$EmpresaConfigCopyWithImpl;
@override @useResult
$Res call({
 String? nombre, String? cif, String? codigoEmpresa, String? direccion, String? ciudad, String? pais, String? fechaCreacion, int? cantidadUsuarios, int? cantidadEmpleados
});




}
/// @nodoc
class __$EmpresaConfigCopyWithImpl<$Res>
    implements _$EmpresaConfigCopyWith<$Res> {
  __$EmpresaConfigCopyWithImpl(this._self, this._then);

  final _EmpresaConfig _self;
  final $Res Function(_EmpresaConfig) _then;

/// Create a copy of EmpresaConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nombre = freezed,Object? cif = freezed,Object? codigoEmpresa = freezed,Object? direccion = freezed,Object? ciudad = freezed,Object? pais = freezed,Object? fechaCreacion = freezed,Object? cantidadUsuarios = freezed,Object? cantidadEmpleados = freezed,}) {
  return _then(_EmpresaConfig(
nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,cif: freezed == cif ? _self.cif : cif // ignore: cast_nullable_to_non_nullable
as String?,codigoEmpresa: freezed == codigoEmpresa ? _self.codigoEmpresa : codigoEmpresa // ignore: cast_nullable_to_non_nullable
as String?,direccion: freezed == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String?,ciudad: freezed == ciudad ? _self.ciudad : ciudad // ignore: cast_nullable_to_non_nullable
as String?,pais: freezed == pais ? _self.pais : pais // ignore: cast_nullable_to_non_nullable
as String?,fechaCreacion: freezed == fechaCreacion ? _self.fechaCreacion : fechaCreacion // ignore: cast_nullable_to_non_nullable
as String?,cantidadUsuarios: freezed == cantidadUsuarios ? _self.cantidadUsuarios : cantidadUsuarios // ignore: cast_nullable_to_non_nullable
as int?,cantidadEmpleados: freezed == cantidadEmpleados ? _self.cantidadEmpleados : cantidadEmpleados // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

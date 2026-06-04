// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'empresa_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmpresaSummary {

 int? get idEmpresa; String get nombre; String? get ciudad; String? get fechaCreacion; int? get cantidadUsuarios; int? get cantidadEmpleados;
/// Create a copy of EmpresaSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmpresaSummaryCopyWith<EmpresaSummary> get copyWith => _$EmpresaSummaryCopyWithImpl<EmpresaSummary>(this as EmpresaSummary, _$identity);

  /// Serializes this EmpresaSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmpresaSummary&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.ciudad, ciudad) || other.ciudad == ciudad)&&(identical(other.fechaCreacion, fechaCreacion) || other.fechaCreacion == fechaCreacion)&&(identical(other.cantidadUsuarios, cantidadUsuarios) || other.cantidadUsuarios == cantidadUsuarios)&&(identical(other.cantidadEmpleados, cantidadEmpleados) || other.cantidadEmpleados == cantidadEmpleados));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpresa,nombre,ciudad,fechaCreacion,cantidadUsuarios,cantidadEmpleados);

@override
String toString() {
  return 'EmpresaSummary(idEmpresa: $idEmpresa, nombre: $nombre, ciudad: $ciudad, fechaCreacion: $fechaCreacion, cantidadUsuarios: $cantidadUsuarios, cantidadEmpleados: $cantidadEmpleados)';
}


}

/// @nodoc
abstract mixin class $EmpresaSummaryCopyWith<$Res>  {
  factory $EmpresaSummaryCopyWith(EmpresaSummary value, $Res Function(EmpresaSummary) _then) = _$EmpresaSummaryCopyWithImpl;
@useResult
$Res call({
 int? idEmpresa, String nombre, String? ciudad, String? fechaCreacion, int? cantidadUsuarios, int? cantidadEmpleados
});




}
/// @nodoc
class _$EmpresaSummaryCopyWithImpl<$Res>
    implements $EmpresaSummaryCopyWith<$Res> {
  _$EmpresaSummaryCopyWithImpl(this._self, this._then);

  final EmpresaSummary _self;
  final $Res Function(EmpresaSummary) _then;

/// Create a copy of EmpresaSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idEmpresa = freezed,Object? nombre = null,Object? ciudad = freezed,Object? fechaCreacion = freezed,Object? cantidadUsuarios = freezed,Object? cantidadEmpleados = freezed,}) {
  return _then(_self.copyWith(
idEmpresa: freezed == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int?,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,ciudad: freezed == ciudad ? _self.ciudad : ciudad // ignore: cast_nullable_to_non_nullable
as String?,fechaCreacion: freezed == fechaCreacion ? _self.fechaCreacion : fechaCreacion // ignore: cast_nullable_to_non_nullable
as String?,cantidadUsuarios: freezed == cantidadUsuarios ? _self.cantidadUsuarios : cantidadUsuarios // ignore: cast_nullable_to_non_nullable
as int?,cantidadEmpleados: freezed == cantidadEmpleados ? _self.cantidadEmpleados : cantidadEmpleados // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [EmpresaSummary].
extension EmpresaSummaryPatterns on EmpresaSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmpresaSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmpresaSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmpresaSummary value)  $default,){
final _that = this;
switch (_that) {
case _EmpresaSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmpresaSummary value)?  $default,){
final _that = this;
switch (_that) {
case _EmpresaSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idEmpresa,  String nombre,  String? ciudad,  String? fechaCreacion,  int? cantidadUsuarios,  int? cantidadEmpleados)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmpresaSummary() when $default != null:
return $default(_that.idEmpresa,_that.nombre,_that.ciudad,_that.fechaCreacion,_that.cantidadUsuarios,_that.cantidadEmpleados);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idEmpresa,  String nombre,  String? ciudad,  String? fechaCreacion,  int? cantidadUsuarios,  int? cantidadEmpleados)  $default,) {final _that = this;
switch (_that) {
case _EmpresaSummary():
return $default(_that.idEmpresa,_that.nombre,_that.ciudad,_that.fechaCreacion,_that.cantidadUsuarios,_that.cantidadEmpleados);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idEmpresa,  String nombre,  String? ciudad,  String? fechaCreacion,  int? cantidadUsuarios,  int? cantidadEmpleados)?  $default,) {final _that = this;
switch (_that) {
case _EmpresaSummary() when $default != null:
return $default(_that.idEmpresa,_that.nombre,_that.ciudad,_that.fechaCreacion,_that.cantidadUsuarios,_that.cantidadEmpleados);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmpresaSummary implements EmpresaSummary {
  const _EmpresaSummary({this.idEmpresa, required this.nombre, this.ciudad, this.fechaCreacion, this.cantidadUsuarios, this.cantidadEmpleados});
  factory _EmpresaSummary.fromJson(Map<String, dynamic> json) => _$EmpresaSummaryFromJson(json);

@override final  int? idEmpresa;
@override final  String nombre;
@override final  String? ciudad;
@override final  String? fechaCreacion;
@override final  int? cantidadUsuarios;
@override final  int? cantidadEmpleados;

/// Create a copy of EmpresaSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmpresaSummaryCopyWith<_EmpresaSummary> get copyWith => __$EmpresaSummaryCopyWithImpl<_EmpresaSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmpresaSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmpresaSummary&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.ciudad, ciudad) || other.ciudad == ciudad)&&(identical(other.fechaCreacion, fechaCreacion) || other.fechaCreacion == fechaCreacion)&&(identical(other.cantidadUsuarios, cantidadUsuarios) || other.cantidadUsuarios == cantidadUsuarios)&&(identical(other.cantidadEmpleados, cantidadEmpleados) || other.cantidadEmpleados == cantidadEmpleados));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpresa,nombre,ciudad,fechaCreacion,cantidadUsuarios,cantidadEmpleados);

@override
String toString() {
  return 'EmpresaSummary(idEmpresa: $idEmpresa, nombre: $nombre, ciudad: $ciudad, fechaCreacion: $fechaCreacion, cantidadUsuarios: $cantidadUsuarios, cantidadEmpleados: $cantidadEmpleados)';
}


}

/// @nodoc
abstract mixin class _$EmpresaSummaryCopyWith<$Res> implements $EmpresaSummaryCopyWith<$Res> {
  factory _$EmpresaSummaryCopyWith(_EmpresaSummary value, $Res Function(_EmpresaSummary) _then) = __$EmpresaSummaryCopyWithImpl;
@override @useResult
$Res call({
 int? idEmpresa, String nombre, String? ciudad, String? fechaCreacion, int? cantidadUsuarios, int? cantidadEmpleados
});




}
/// @nodoc
class __$EmpresaSummaryCopyWithImpl<$Res>
    implements _$EmpresaSummaryCopyWith<$Res> {
  __$EmpresaSummaryCopyWithImpl(this._self, this._then);

  final _EmpresaSummary _self;
  final $Res Function(_EmpresaSummary) _then;

/// Create a copy of EmpresaSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idEmpresa = freezed,Object? nombre = null,Object? ciudad = freezed,Object? fechaCreacion = freezed,Object? cantidadUsuarios = freezed,Object? cantidadEmpleados = freezed,}) {
  return _then(_EmpresaSummary(
idEmpresa: freezed == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int?,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,ciudad: freezed == ciudad ? _self.ciudad : ciudad // ignore: cast_nullable_to_non_nullable
as String?,fechaCreacion: freezed == fechaCreacion ? _self.fechaCreacion : fechaCreacion // ignore: cast_nullable_to_non_nullable
as String?,cantidadUsuarios: freezed == cantidadUsuarios ? _self.cantidadUsuarios : cantidadUsuarios // ignore: cast_nullable_to_non_nullable
as int?,cantidadEmpleados: freezed == cantidadEmpleados ? _self.cantidadEmpleados : cantidadEmpleados // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

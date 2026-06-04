// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'empleado_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmpleadoSummary {

 int? get idEmpleado; String get nombre; String get apellidos;
/// Create a copy of EmpleadoSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmpleadoSummaryCopyWith<EmpleadoSummary> get copyWith => _$EmpleadoSummaryCopyWithImpl<EmpleadoSummary>(this as EmpleadoSummary, _$identity);

  /// Serializes this EmpleadoSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmpleadoSummary&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellidos, apellidos) || other.apellidos == apellidos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleado,nombre,apellidos);

@override
String toString() {
  return 'EmpleadoSummary(idEmpleado: $idEmpleado, nombre: $nombre, apellidos: $apellidos)';
}


}

/// @nodoc
abstract mixin class $EmpleadoSummaryCopyWith<$Res>  {
  factory $EmpleadoSummaryCopyWith(EmpleadoSummary value, $Res Function(EmpleadoSummary) _then) = _$EmpleadoSummaryCopyWithImpl;
@useResult
$Res call({
 int? idEmpleado, String nombre, String apellidos
});




}
/// @nodoc
class _$EmpleadoSummaryCopyWithImpl<$Res>
    implements $EmpleadoSummaryCopyWith<$Res> {
  _$EmpleadoSummaryCopyWithImpl(this._self, this._then);

  final EmpleadoSummary _self;
  final $Res Function(EmpleadoSummary) _then;

/// Create a copy of EmpleadoSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idEmpleado = freezed,Object? nombre = null,Object? apellidos = null,}) {
  return _then(_self.copyWith(
idEmpleado: freezed == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int?,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,apellidos: null == apellidos ? _self.apellidos : apellidos // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EmpleadoSummary].
extension EmpleadoSummaryPatterns on EmpleadoSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmpleadoSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmpleadoSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmpleadoSummary value)  $default,){
final _that = this;
switch (_that) {
case _EmpleadoSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmpleadoSummary value)?  $default,){
final _that = this;
switch (_that) {
case _EmpleadoSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idEmpleado,  String nombre,  String apellidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmpleadoSummary() when $default != null:
return $default(_that.idEmpleado,_that.nombre,_that.apellidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idEmpleado,  String nombre,  String apellidos)  $default,) {final _that = this;
switch (_that) {
case _EmpleadoSummary():
return $default(_that.idEmpleado,_that.nombre,_that.apellidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idEmpleado,  String nombre,  String apellidos)?  $default,) {final _that = this;
switch (_that) {
case _EmpleadoSummary() when $default != null:
return $default(_that.idEmpleado,_that.nombre,_that.apellidos);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmpleadoSummary implements EmpleadoSummary {
  const _EmpleadoSummary({this.idEmpleado, required this.nombre, required this.apellidos});
  factory _EmpleadoSummary.fromJson(Map<String, dynamic> json) => _$EmpleadoSummaryFromJson(json);

@override final  int? idEmpleado;
@override final  String nombre;
@override final  String apellidos;

/// Create a copy of EmpleadoSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmpleadoSummaryCopyWith<_EmpleadoSummary> get copyWith => __$EmpleadoSummaryCopyWithImpl<_EmpleadoSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmpleadoSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmpleadoSummary&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellidos, apellidos) || other.apellidos == apellidos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleado,nombre,apellidos);

@override
String toString() {
  return 'EmpleadoSummary(idEmpleado: $idEmpleado, nombre: $nombre, apellidos: $apellidos)';
}


}

/// @nodoc
abstract mixin class _$EmpleadoSummaryCopyWith<$Res> implements $EmpleadoSummaryCopyWith<$Res> {
  factory _$EmpleadoSummaryCopyWith(_EmpleadoSummary value, $Res Function(_EmpleadoSummary) _then) = __$EmpleadoSummaryCopyWithImpl;
@override @useResult
$Res call({
 int? idEmpleado, String nombre, String apellidos
});




}
/// @nodoc
class __$EmpleadoSummaryCopyWithImpl<$Res>
    implements _$EmpleadoSummaryCopyWith<$Res> {
  __$EmpleadoSummaryCopyWithImpl(this._self, this._then);

  final _EmpleadoSummary _self;
  final $Res Function(_EmpleadoSummary) _then;

/// Create a copy of EmpleadoSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idEmpleado = freezed,Object? nombre = null,Object? apellidos = null,}) {
  return _then(_EmpleadoSummary(
idEmpleado: freezed == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int?,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,apellidos: null == apellidos ? _self.apellidos : apellidos // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

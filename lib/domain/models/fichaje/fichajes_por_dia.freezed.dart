// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fichajes_por_dia.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FichajesPorDia {

 DateTime get fecha; List<FichajesEmpleado> get empleados;
/// Create a copy of FichajesPorDia
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FichajesPorDiaCopyWith<FichajesPorDia> get copyWith => _$FichajesPorDiaCopyWithImpl<FichajesPorDia>(this as FichajesPorDia, _$identity);

  /// Serializes this FichajesPorDia to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FichajesPorDia&&(identical(other.fecha, fecha) || other.fecha == fecha)&&const DeepCollectionEquality().equals(other.empleados, empleados));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fecha,const DeepCollectionEquality().hash(empleados));

@override
String toString() {
  return 'FichajesPorDia(fecha: $fecha, empleados: $empleados)';
}


}

/// @nodoc
abstract mixin class $FichajesPorDiaCopyWith<$Res>  {
  factory $FichajesPorDiaCopyWith(FichajesPorDia value, $Res Function(FichajesPorDia) _then) = _$FichajesPorDiaCopyWithImpl;
@useResult
$Res call({
 DateTime fecha, List<FichajesEmpleado> empleados
});




}
/// @nodoc
class _$FichajesPorDiaCopyWithImpl<$Res>
    implements $FichajesPorDiaCopyWith<$Res> {
  _$FichajesPorDiaCopyWithImpl(this._self, this._then);

  final FichajesPorDia _self;
  final $Res Function(FichajesPorDia) _then;

/// Create a copy of FichajesPorDia
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fecha = null,Object? empleados = null,}) {
  return _then(_self.copyWith(
fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,empleados: null == empleados ? _self.empleados : empleados // ignore: cast_nullable_to_non_nullable
as List<FichajesEmpleado>,
  ));
}

}


/// Adds pattern-matching-related methods to [FichajesPorDia].
extension FichajesPorDiaPatterns on FichajesPorDia {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FichajesPorDia value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FichajesPorDia() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FichajesPorDia value)  $default,){
final _that = this;
switch (_that) {
case _FichajesPorDia():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FichajesPorDia value)?  $default,){
final _that = this;
switch (_that) {
case _FichajesPorDia() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime fecha,  List<FichajesEmpleado> empleados)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FichajesPorDia() when $default != null:
return $default(_that.fecha,_that.empleados);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime fecha,  List<FichajesEmpleado> empleados)  $default,) {final _that = this;
switch (_that) {
case _FichajesPorDia():
return $default(_that.fecha,_that.empleados);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime fecha,  List<FichajesEmpleado> empleados)?  $default,) {final _that = this;
switch (_that) {
case _FichajesPorDia() when $default != null:
return $default(_that.fecha,_that.empleados);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FichajesPorDia implements FichajesPorDia {
  const _FichajesPorDia({required this.fecha, required final  List<FichajesEmpleado> empleados}): _empleados = empleados;
  factory _FichajesPorDia.fromJson(Map<String, dynamic> json) => _$FichajesPorDiaFromJson(json);

@override final  DateTime fecha;
 final  List<FichajesEmpleado> _empleados;
@override List<FichajesEmpleado> get empleados {
  if (_empleados is EqualUnmodifiableListView) return _empleados;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_empleados);
}


/// Create a copy of FichajesPorDia
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FichajesPorDiaCopyWith<_FichajesPorDia> get copyWith => __$FichajesPorDiaCopyWithImpl<_FichajesPorDia>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FichajesPorDiaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FichajesPorDia&&(identical(other.fecha, fecha) || other.fecha == fecha)&&const DeepCollectionEquality().equals(other._empleados, _empleados));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fecha,const DeepCollectionEquality().hash(_empleados));

@override
String toString() {
  return 'FichajesPorDia(fecha: $fecha, empleados: $empleados)';
}


}

/// @nodoc
abstract mixin class _$FichajesPorDiaCopyWith<$Res> implements $FichajesPorDiaCopyWith<$Res> {
  factory _$FichajesPorDiaCopyWith(_FichajesPorDia value, $Res Function(_FichajesPorDia) _then) = __$FichajesPorDiaCopyWithImpl;
@override @useResult
$Res call({
 DateTime fecha, List<FichajesEmpleado> empleados
});




}
/// @nodoc
class __$FichajesPorDiaCopyWithImpl<$Res>
    implements _$FichajesPorDiaCopyWith<$Res> {
  __$FichajesPorDiaCopyWithImpl(this._self, this._then);

  final _FichajesPorDia _self;
  final $Res Function(_FichajesPorDia) _then;

/// Create a copy of FichajesPorDia
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fecha = null,Object? empleados = null,}) {
  return _then(_FichajesPorDia(
fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,empleados: null == empleados ? _self._empleados : empleados // ignore: cast_nullable_to_non_nullable
as List<FichajesEmpleado>,
  ));
}


}

// dart format on

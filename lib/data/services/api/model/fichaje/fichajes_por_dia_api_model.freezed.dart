// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fichajes_por_dia_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FichajesPorDiaApiModel {

 String get fecha; List<FichajesEmpleadoApiModel> get empleados;
/// Create a copy of FichajesPorDiaApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FichajesPorDiaApiModelCopyWith<FichajesPorDiaApiModel> get copyWith => _$FichajesPorDiaApiModelCopyWithImpl<FichajesPorDiaApiModel>(this as FichajesPorDiaApiModel, _$identity);

  /// Serializes this FichajesPorDiaApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FichajesPorDiaApiModel&&(identical(other.fecha, fecha) || other.fecha == fecha)&&const DeepCollectionEquality().equals(other.empleados, empleados));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fecha,const DeepCollectionEquality().hash(empleados));

@override
String toString() {
  return 'FichajesPorDiaApiModel(fecha: $fecha, empleados: $empleados)';
}


}

/// @nodoc
abstract mixin class $FichajesPorDiaApiModelCopyWith<$Res>  {
  factory $FichajesPorDiaApiModelCopyWith(FichajesPorDiaApiModel value, $Res Function(FichajesPorDiaApiModel) _then) = _$FichajesPorDiaApiModelCopyWithImpl;
@useResult
$Res call({
 String fecha, List<FichajesEmpleadoApiModel> empleados
});




}
/// @nodoc
class _$FichajesPorDiaApiModelCopyWithImpl<$Res>
    implements $FichajesPorDiaApiModelCopyWith<$Res> {
  _$FichajesPorDiaApiModelCopyWithImpl(this._self, this._then);

  final FichajesPorDiaApiModel _self;
  final $Res Function(FichajesPorDiaApiModel) _then;

/// Create a copy of FichajesPorDiaApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fecha = null,Object? empleados = null,}) {
  return _then(_self.copyWith(
fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as String,empleados: null == empleados ? _self.empleados : empleados // ignore: cast_nullable_to_non_nullable
as List<FichajesEmpleadoApiModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [FichajesPorDiaApiModel].
extension FichajesPorDiaApiModelPatterns on FichajesPorDiaApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FichajesPorDiaApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FichajesPorDiaApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FichajesPorDiaApiModel value)  $default,){
final _that = this;
switch (_that) {
case _FichajesPorDiaApiModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FichajesPorDiaApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _FichajesPorDiaApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fecha,  List<FichajesEmpleadoApiModel> empleados)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FichajesPorDiaApiModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fecha,  List<FichajesEmpleadoApiModel> empleados)  $default,) {final _that = this;
switch (_that) {
case _FichajesPorDiaApiModel():
return $default(_that.fecha,_that.empleados);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fecha,  List<FichajesEmpleadoApiModel> empleados)?  $default,) {final _that = this;
switch (_that) {
case _FichajesPorDiaApiModel() when $default != null:
return $default(_that.fecha,_that.empleados);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FichajesPorDiaApiModel implements FichajesPorDiaApiModel {
  const _FichajesPorDiaApiModel({required this.fecha, required final  List<FichajesEmpleadoApiModel> empleados}): _empleados = empleados;
  factory _FichajesPorDiaApiModel.fromJson(Map<String, dynamic> json) => _$FichajesPorDiaApiModelFromJson(json);

@override final  String fecha;
 final  List<FichajesEmpleadoApiModel> _empleados;
@override List<FichajesEmpleadoApiModel> get empleados {
  if (_empleados is EqualUnmodifiableListView) return _empleados;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_empleados);
}


/// Create a copy of FichajesPorDiaApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FichajesPorDiaApiModelCopyWith<_FichajesPorDiaApiModel> get copyWith => __$FichajesPorDiaApiModelCopyWithImpl<_FichajesPorDiaApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FichajesPorDiaApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FichajesPorDiaApiModel&&(identical(other.fecha, fecha) || other.fecha == fecha)&&const DeepCollectionEquality().equals(other._empleados, _empleados));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fecha,const DeepCollectionEquality().hash(_empleados));

@override
String toString() {
  return 'FichajesPorDiaApiModel(fecha: $fecha, empleados: $empleados)';
}


}

/// @nodoc
abstract mixin class _$FichajesPorDiaApiModelCopyWith<$Res> implements $FichajesPorDiaApiModelCopyWith<$Res> {
  factory _$FichajesPorDiaApiModelCopyWith(_FichajesPorDiaApiModel value, $Res Function(_FichajesPorDiaApiModel) _then) = __$FichajesPorDiaApiModelCopyWithImpl;
@override @useResult
$Res call({
 String fecha, List<FichajesEmpleadoApiModel> empleados
});




}
/// @nodoc
class __$FichajesPorDiaApiModelCopyWithImpl<$Res>
    implements _$FichajesPorDiaApiModelCopyWith<$Res> {
  __$FichajesPorDiaApiModelCopyWithImpl(this._self, this._then);

  final _FichajesPorDiaApiModel _self;
  final $Res Function(_FichajesPorDiaApiModel) _then;

/// Create a copy of FichajesPorDiaApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fecha = null,Object? empleados = null,}) {
  return _then(_FichajesPorDiaApiModel(
fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as String,empleados: null == empleados ? _self._empleados : empleados // ignore: cast_nullable_to_non_nullable
as List<FichajesEmpleadoApiModel>,
  ));
}


}

// dart format on

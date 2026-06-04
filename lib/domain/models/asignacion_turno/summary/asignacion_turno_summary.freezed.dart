// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asignacion_turno_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AsignacionTurnoSummary {

 int get idAsignacion; String get estado;
/// Create a copy of AsignacionTurnoSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AsignacionTurnoSummaryCopyWith<AsignacionTurnoSummary> get copyWith => _$AsignacionTurnoSummaryCopyWithImpl<AsignacionTurnoSummary>(this as AsignacionTurnoSummary, _$identity);

  /// Serializes this AsignacionTurnoSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AsignacionTurnoSummary&&(identical(other.idAsignacion, idAsignacion) || other.idAsignacion == idAsignacion)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idAsignacion,estado);

@override
String toString() {
  return 'AsignacionTurnoSummary(idAsignacion: $idAsignacion, estado: $estado)';
}


}

/// @nodoc
abstract mixin class $AsignacionTurnoSummaryCopyWith<$Res>  {
  factory $AsignacionTurnoSummaryCopyWith(AsignacionTurnoSummary value, $Res Function(AsignacionTurnoSummary) _then) = _$AsignacionTurnoSummaryCopyWithImpl;
@useResult
$Res call({
 int idAsignacion, String estado
});




}
/// @nodoc
class _$AsignacionTurnoSummaryCopyWithImpl<$Res>
    implements $AsignacionTurnoSummaryCopyWith<$Res> {
  _$AsignacionTurnoSummaryCopyWithImpl(this._self, this._then);

  final AsignacionTurnoSummary _self;
  final $Res Function(AsignacionTurnoSummary) _then;

/// Create a copy of AsignacionTurnoSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idAsignacion = null,Object? estado = null,}) {
  return _then(_self.copyWith(
idAsignacion: null == idAsignacion ? _self.idAsignacion : idAsignacion // ignore: cast_nullable_to_non_nullable
as int,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AsignacionTurnoSummary].
extension AsignacionTurnoSummaryPatterns on AsignacionTurnoSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AsignacionTurnoSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AsignacionTurnoSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AsignacionTurnoSummary value)  $default,){
final _that = this;
switch (_that) {
case _AsignacionTurnoSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AsignacionTurnoSummary value)?  $default,){
final _that = this;
switch (_that) {
case _AsignacionTurnoSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int idAsignacion,  String estado)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AsignacionTurnoSummary() when $default != null:
return $default(_that.idAsignacion,_that.estado);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int idAsignacion,  String estado)  $default,) {final _that = this;
switch (_that) {
case _AsignacionTurnoSummary():
return $default(_that.idAsignacion,_that.estado);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int idAsignacion,  String estado)?  $default,) {final _that = this;
switch (_that) {
case _AsignacionTurnoSummary() when $default != null:
return $default(_that.idAsignacion,_that.estado);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AsignacionTurnoSummary implements AsignacionTurnoSummary {
  const _AsignacionTurnoSummary({required this.idAsignacion, required this.estado});
  factory _AsignacionTurnoSummary.fromJson(Map<String, dynamic> json) => _$AsignacionTurnoSummaryFromJson(json);

@override final  int idAsignacion;
@override final  String estado;

/// Create a copy of AsignacionTurnoSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AsignacionTurnoSummaryCopyWith<_AsignacionTurnoSummary> get copyWith => __$AsignacionTurnoSummaryCopyWithImpl<_AsignacionTurnoSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AsignacionTurnoSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AsignacionTurnoSummary&&(identical(other.idAsignacion, idAsignacion) || other.idAsignacion == idAsignacion)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idAsignacion,estado);

@override
String toString() {
  return 'AsignacionTurnoSummary(idAsignacion: $idAsignacion, estado: $estado)';
}


}

/// @nodoc
abstract mixin class _$AsignacionTurnoSummaryCopyWith<$Res> implements $AsignacionTurnoSummaryCopyWith<$Res> {
  factory _$AsignacionTurnoSummaryCopyWith(_AsignacionTurnoSummary value, $Res Function(_AsignacionTurnoSummary) _then) = __$AsignacionTurnoSummaryCopyWithImpl;
@override @useResult
$Res call({
 int idAsignacion, String estado
});




}
/// @nodoc
class __$AsignacionTurnoSummaryCopyWithImpl<$Res>
    implements _$AsignacionTurnoSummaryCopyWith<$Res> {
  __$AsignacionTurnoSummaryCopyWithImpl(this._self, this._then);

  final _AsignacionTurnoSummary _self;
  final $Res Function(_AsignacionTurnoSummary) _then;

/// Create a copy of AsignacionTurnoSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idAsignacion = null,Object? estado = null,}) {
  return _then(_AsignacionTurnoSummary(
idAsignacion: null == idAsignacion ? _self.idAsignacion : idAsignacion // ignore: cast_nullable_to_non_nullable
as int,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'correccion_fichaje_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CorreccionFichajeSummary {

 int get idCorreccion; String get motivo; String get estado;
/// Create a copy of CorreccionFichajeSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CorreccionFichajeSummaryCopyWith<CorreccionFichajeSummary> get copyWith => _$CorreccionFichajeSummaryCopyWithImpl<CorreccionFichajeSummary>(this as CorreccionFichajeSummary, _$identity);

  /// Serializes this CorreccionFichajeSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CorreccionFichajeSummary&&(identical(other.idCorreccion, idCorreccion) || other.idCorreccion == idCorreccion)&&(identical(other.motivo, motivo) || other.motivo == motivo)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idCorreccion,motivo,estado);

@override
String toString() {
  return 'CorreccionFichajeSummary(idCorreccion: $idCorreccion, motivo: $motivo, estado: $estado)';
}


}

/// @nodoc
abstract mixin class $CorreccionFichajeSummaryCopyWith<$Res>  {
  factory $CorreccionFichajeSummaryCopyWith(CorreccionFichajeSummary value, $Res Function(CorreccionFichajeSummary) _then) = _$CorreccionFichajeSummaryCopyWithImpl;
@useResult
$Res call({
 int idCorreccion, String motivo, String estado
});




}
/// @nodoc
class _$CorreccionFichajeSummaryCopyWithImpl<$Res>
    implements $CorreccionFichajeSummaryCopyWith<$Res> {
  _$CorreccionFichajeSummaryCopyWithImpl(this._self, this._then);

  final CorreccionFichajeSummary _self;
  final $Res Function(CorreccionFichajeSummary) _then;

/// Create a copy of CorreccionFichajeSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idCorreccion = null,Object? motivo = null,Object? estado = null,}) {
  return _then(_self.copyWith(
idCorreccion: null == idCorreccion ? _self.idCorreccion : idCorreccion // ignore: cast_nullable_to_non_nullable
as int,motivo: null == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CorreccionFichajeSummary].
extension CorreccionFichajeSummaryPatterns on CorreccionFichajeSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CorreccionFichajeSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CorreccionFichajeSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CorreccionFichajeSummary value)  $default,){
final _that = this;
switch (_that) {
case _CorreccionFichajeSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CorreccionFichajeSummary value)?  $default,){
final _that = this;
switch (_that) {
case _CorreccionFichajeSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int idCorreccion,  String motivo,  String estado)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CorreccionFichajeSummary() when $default != null:
return $default(_that.idCorreccion,_that.motivo,_that.estado);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int idCorreccion,  String motivo,  String estado)  $default,) {final _that = this;
switch (_that) {
case _CorreccionFichajeSummary():
return $default(_that.idCorreccion,_that.motivo,_that.estado);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int idCorreccion,  String motivo,  String estado)?  $default,) {final _that = this;
switch (_that) {
case _CorreccionFichajeSummary() when $default != null:
return $default(_that.idCorreccion,_that.motivo,_that.estado);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CorreccionFichajeSummary implements CorreccionFichajeSummary {
  const _CorreccionFichajeSummary({required this.idCorreccion, required this.motivo, required this.estado});
  factory _CorreccionFichajeSummary.fromJson(Map<String, dynamic> json) => _$CorreccionFichajeSummaryFromJson(json);

@override final  int idCorreccion;
@override final  String motivo;
@override final  String estado;

/// Create a copy of CorreccionFichajeSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CorreccionFichajeSummaryCopyWith<_CorreccionFichajeSummary> get copyWith => __$CorreccionFichajeSummaryCopyWithImpl<_CorreccionFichajeSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CorreccionFichajeSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CorreccionFichajeSummary&&(identical(other.idCorreccion, idCorreccion) || other.idCorreccion == idCorreccion)&&(identical(other.motivo, motivo) || other.motivo == motivo)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idCorreccion,motivo,estado);

@override
String toString() {
  return 'CorreccionFichajeSummary(idCorreccion: $idCorreccion, motivo: $motivo, estado: $estado)';
}


}

/// @nodoc
abstract mixin class _$CorreccionFichajeSummaryCopyWith<$Res> implements $CorreccionFichajeSummaryCopyWith<$Res> {
  factory _$CorreccionFichajeSummaryCopyWith(_CorreccionFichajeSummary value, $Res Function(_CorreccionFichajeSummary) _then) = __$CorreccionFichajeSummaryCopyWithImpl;
@override @useResult
$Res call({
 int idCorreccion, String motivo, String estado
});




}
/// @nodoc
class __$CorreccionFichajeSummaryCopyWithImpl<$Res>
    implements _$CorreccionFichajeSummaryCopyWith<$Res> {
  __$CorreccionFichajeSummaryCopyWithImpl(this._self, this._then);

  final _CorreccionFichajeSummary _self;
  final $Res Function(_CorreccionFichajeSummary) _then;

/// Create a copy of CorreccionFichajeSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idCorreccion = null,Object? motivo = null,Object? estado = null,}) {
  return _then(_CorreccionFichajeSummary(
idCorreccion: null == idCorreccion ? _self.idCorreccion : idCorreccion // ignore: cast_nullable_to_non_nullable
as int,motivo: null == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

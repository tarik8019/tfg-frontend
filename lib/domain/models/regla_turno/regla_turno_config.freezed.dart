// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regla_turno_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReglaTurnoConfig {

 String? get nombre; int? get horasMinimas; int? get horasMaximas; bool? get esObligatoria;
/// Create a copy of ReglaTurnoConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReglaTurnoConfigCopyWith<ReglaTurnoConfig> get copyWith => _$ReglaTurnoConfigCopyWithImpl<ReglaTurnoConfig>(this as ReglaTurnoConfig, _$identity);

  /// Serializes this ReglaTurnoConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReglaTurnoConfig&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.horasMinimas, horasMinimas) || other.horasMinimas == horasMinimas)&&(identical(other.horasMaximas, horasMaximas) || other.horasMaximas == horasMaximas)&&(identical(other.esObligatoria, esObligatoria) || other.esObligatoria == esObligatoria));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nombre,horasMinimas,horasMaximas,esObligatoria);

@override
String toString() {
  return 'ReglaTurnoConfig(nombre: $nombre, horasMinimas: $horasMinimas, horasMaximas: $horasMaximas, esObligatoria: $esObligatoria)';
}


}

/// @nodoc
abstract mixin class $ReglaTurnoConfigCopyWith<$Res>  {
  factory $ReglaTurnoConfigCopyWith(ReglaTurnoConfig value, $Res Function(ReglaTurnoConfig) _then) = _$ReglaTurnoConfigCopyWithImpl;
@useResult
$Res call({
 String? nombre, int? horasMinimas, int? horasMaximas, bool? esObligatoria
});




}
/// @nodoc
class _$ReglaTurnoConfigCopyWithImpl<$Res>
    implements $ReglaTurnoConfigCopyWith<$Res> {
  _$ReglaTurnoConfigCopyWithImpl(this._self, this._then);

  final ReglaTurnoConfig _self;
  final $Res Function(ReglaTurnoConfig) _then;

/// Create a copy of ReglaTurnoConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nombre = freezed,Object? horasMinimas = freezed,Object? horasMaximas = freezed,Object? esObligatoria = freezed,}) {
  return _then(_self.copyWith(
nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,horasMinimas: freezed == horasMinimas ? _self.horasMinimas : horasMinimas // ignore: cast_nullable_to_non_nullable
as int?,horasMaximas: freezed == horasMaximas ? _self.horasMaximas : horasMaximas // ignore: cast_nullable_to_non_nullable
as int?,esObligatoria: freezed == esObligatoria ? _self.esObligatoria : esObligatoria // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReglaTurnoConfig].
extension ReglaTurnoConfigPatterns on ReglaTurnoConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReglaTurnoConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReglaTurnoConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReglaTurnoConfig value)  $default,){
final _that = this;
switch (_that) {
case _ReglaTurnoConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReglaTurnoConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ReglaTurnoConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? nombre,  int? horasMinimas,  int? horasMaximas,  bool? esObligatoria)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReglaTurnoConfig() when $default != null:
return $default(_that.nombre,_that.horasMinimas,_that.horasMaximas,_that.esObligatoria);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? nombre,  int? horasMinimas,  int? horasMaximas,  bool? esObligatoria)  $default,) {final _that = this;
switch (_that) {
case _ReglaTurnoConfig():
return $default(_that.nombre,_that.horasMinimas,_that.horasMaximas,_that.esObligatoria);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? nombre,  int? horasMinimas,  int? horasMaximas,  bool? esObligatoria)?  $default,) {final _that = this;
switch (_that) {
case _ReglaTurnoConfig() when $default != null:
return $default(_that.nombre,_that.horasMinimas,_that.horasMaximas,_that.esObligatoria);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReglaTurnoConfig implements ReglaTurnoConfig {
  const _ReglaTurnoConfig({this.nombre, this.horasMinimas, this.horasMaximas, this.esObligatoria});
  factory _ReglaTurnoConfig.fromJson(Map<String, dynamic> json) => _$ReglaTurnoConfigFromJson(json);

@override final  String? nombre;
@override final  int? horasMinimas;
@override final  int? horasMaximas;
@override final  bool? esObligatoria;

/// Create a copy of ReglaTurnoConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReglaTurnoConfigCopyWith<_ReglaTurnoConfig> get copyWith => __$ReglaTurnoConfigCopyWithImpl<_ReglaTurnoConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReglaTurnoConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReglaTurnoConfig&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.horasMinimas, horasMinimas) || other.horasMinimas == horasMinimas)&&(identical(other.horasMaximas, horasMaximas) || other.horasMaximas == horasMaximas)&&(identical(other.esObligatoria, esObligatoria) || other.esObligatoria == esObligatoria));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nombre,horasMinimas,horasMaximas,esObligatoria);

@override
String toString() {
  return 'ReglaTurnoConfig(nombre: $nombre, horasMinimas: $horasMinimas, horasMaximas: $horasMaximas, esObligatoria: $esObligatoria)';
}


}

/// @nodoc
abstract mixin class _$ReglaTurnoConfigCopyWith<$Res> implements $ReglaTurnoConfigCopyWith<$Res> {
  factory _$ReglaTurnoConfigCopyWith(_ReglaTurnoConfig value, $Res Function(_ReglaTurnoConfig) _then) = __$ReglaTurnoConfigCopyWithImpl;
@override @useResult
$Res call({
 String? nombre, int? horasMinimas, int? horasMaximas, bool? esObligatoria
});




}
/// @nodoc
class __$ReglaTurnoConfigCopyWithImpl<$Res>
    implements _$ReglaTurnoConfigCopyWith<$Res> {
  __$ReglaTurnoConfigCopyWithImpl(this._self, this._then);

  final _ReglaTurnoConfig _self;
  final $Res Function(_ReglaTurnoConfig) _then;

/// Create a copy of ReglaTurnoConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nombre = freezed,Object? horasMinimas = freezed,Object? horasMaximas = freezed,Object? esObligatoria = freezed,}) {
  return _then(_ReglaTurnoConfig(
nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,horasMinimas: freezed == horasMinimas ? _self.horasMinimas : horasMinimas // ignore: cast_nullable_to_non_nullable
as int?,horasMaximas: freezed == horasMaximas ? _self.horasMaximas : horasMaximas // ignore: cast_nullable_to_non_nullable
as int?,esObligatoria: freezed == esObligatoria ? _self.esObligatoria : esObligatoria // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on

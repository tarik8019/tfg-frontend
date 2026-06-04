// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sede_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SedeConfig {

 String? get nombre; String? get direccion; String? get ciudad; String? get telefono;
/// Create a copy of SedeConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SedeConfigCopyWith<SedeConfig> get copyWith => _$SedeConfigCopyWithImpl<SedeConfig>(this as SedeConfig, _$identity);

  /// Serializes this SedeConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SedeConfig&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.ciudad, ciudad) || other.ciudad == ciudad)&&(identical(other.telefono, telefono) || other.telefono == telefono));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nombre,direccion,ciudad,telefono);

@override
String toString() {
  return 'SedeConfig(nombre: $nombre, direccion: $direccion, ciudad: $ciudad, telefono: $telefono)';
}


}

/// @nodoc
abstract mixin class $SedeConfigCopyWith<$Res>  {
  factory $SedeConfigCopyWith(SedeConfig value, $Res Function(SedeConfig) _then) = _$SedeConfigCopyWithImpl;
@useResult
$Res call({
 String? nombre, String? direccion, String? ciudad, String? telefono
});




}
/// @nodoc
class _$SedeConfigCopyWithImpl<$Res>
    implements $SedeConfigCopyWith<$Res> {
  _$SedeConfigCopyWithImpl(this._self, this._then);

  final SedeConfig _self;
  final $Res Function(SedeConfig) _then;

/// Create a copy of SedeConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nombre = freezed,Object? direccion = freezed,Object? ciudad = freezed,Object? telefono = freezed,}) {
  return _then(_self.copyWith(
nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,direccion: freezed == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String?,ciudad: freezed == ciudad ? _self.ciudad : ciudad // ignore: cast_nullable_to_non_nullable
as String?,telefono: freezed == telefono ? _self.telefono : telefono // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SedeConfig].
extension SedeConfigPatterns on SedeConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SedeConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SedeConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SedeConfig value)  $default,){
final _that = this;
switch (_that) {
case _SedeConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SedeConfig value)?  $default,){
final _that = this;
switch (_that) {
case _SedeConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? nombre,  String? direccion,  String? ciudad,  String? telefono)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SedeConfig() when $default != null:
return $default(_that.nombre,_that.direccion,_that.ciudad,_that.telefono);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? nombre,  String? direccion,  String? ciudad,  String? telefono)  $default,) {final _that = this;
switch (_that) {
case _SedeConfig():
return $default(_that.nombre,_that.direccion,_that.ciudad,_that.telefono);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? nombre,  String? direccion,  String? ciudad,  String? telefono)?  $default,) {final _that = this;
switch (_that) {
case _SedeConfig() when $default != null:
return $default(_that.nombre,_that.direccion,_that.ciudad,_that.telefono);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SedeConfig implements SedeConfig {
  const _SedeConfig({this.nombre, this.direccion, this.ciudad, this.telefono});
  factory _SedeConfig.fromJson(Map<String, dynamic> json) => _$SedeConfigFromJson(json);

@override final  String? nombre;
@override final  String? direccion;
@override final  String? ciudad;
@override final  String? telefono;

/// Create a copy of SedeConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SedeConfigCopyWith<_SedeConfig> get copyWith => __$SedeConfigCopyWithImpl<_SedeConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SedeConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SedeConfig&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.ciudad, ciudad) || other.ciudad == ciudad)&&(identical(other.telefono, telefono) || other.telefono == telefono));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nombre,direccion,ciudad,telefono);

@override
String toString() {
  return 'SedeConfig(nombre: $nombre, direccion: $direccion, ciudad: $ciudad, telefono: $telefono)';
}


}

/// @nodoc
abstract mixin class _$SedeConfigCopyWith<$Res> implements $SedeConfigCopyWith<$Res> {
  factory _$SedeConfigCopyWith(_SedeConfig value, $Res Function(_SedeConfig) _then) = __$SedeConfigCopyWithImpl;
@override @useResult
$Res call({
 String? nombre, String? direccion, String? ciudad, String? telefono
});




}
/// @nodoc
class __$SedeConfigCopyWithImpl<$Res>
    implements _$SedeConfigCopyWith<$Res> {
  __$SedeConfigCopyWithImpl(this._self, this._then);

  final _SedeConfig _self;
  final $Res Function(_SedeConfig) _then;

/// Create a copy of SedeConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nombre = freezed,Object? direccion = freezed,Object? ciudad = freezed,Object? telefono = freezed,}) {
  return _then(_SedeConfig(
nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,direccion: freezed == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String?,ciudad: freezed == ciudad ? _self.ciudad : ciudad // ignore: cast_nullable_to_non_nullable
as String?,telefono: freezed == telefono ? _self.telefono : telefono // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

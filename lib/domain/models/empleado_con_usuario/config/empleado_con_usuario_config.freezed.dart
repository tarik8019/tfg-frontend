// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'empleado_con_usuario_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmpleadoConUsuarioConfig {

 int? get idEmpleadoConfig; int? get idUserConfig;
/// Create a copy of EmpleadoConUsuarioConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmpleadoConUsuarioConfigCopyWith<EmpleadoConUsuarioConfig> get copyWith => _$EmpleadoConUsuarioConfigCopyWithImpl<EmpleadoConUsuarioConfig>(this as EmpleadoConUsuarioConfig, _$identity);

  /// Serializes this EmpleadoConUsuarioConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmpleadoConUsuarioConfig&&(identical(other.idEmpleadoConfig, idEmpleadoConfig) || other.idEmpleadoConfig == idEmpleadoConfig)&&(identical(other.idUserConfig, idUserConfig) || other.idUserConfig == idUserConfig));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleadoConfig,idUserConfig);

@override
String toString() {
  return 'EmpleadoConUsuarioConfig(idEmpleadoConfig: $idEmpleadoConfig, idUserConfig: $idUserConfig)';
}


}

/// @nodoc
abstract mixin class $EmpleadoConUsuarioConfigCopyWith<$Res>  {
  factory $EmpleadoConUsuarioConfigCopyWith(EmpleadoConUsuarioConfig value, $Res Function(EmpleadoConUsuarioConfig) _then) = _$EmpleadoConUsuarioConfigCopyWithImpl;
@useResult
$Res call({
 int? idEmpleadoConfig, int? idUserConfig
});




}
/// @nodoc
class _$EmpleadoConUsuarioConfigCopyWithImpl<$Res>
    implements $EmpleadoConUsuarioConfigCopyWith<$Res> {
  _$EmpleadoConUsuarioConfigCopyWithImpl(this._self, this._then);

  final EmpleadoConUsuarioConfig _self;
  final $Res Function(EmpleadoConUsuarioConfig) _then;

/// Create a copy of EmpleadoConUsuarioConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idEmpleadoConfig = freezed,Object? idUserConfig = freezed,}) {
  return _then(_self.copyWith(
idEmpleadoConfig: freezed == idEmpleadoConfig ? _self.idEmpleadoConfig : idEmpleadoConfig // ignore: cast_nullable_to_non_nullable
as int?,idUserConfig: freezed == idUserConfig ? _self.idUserConfig : idUserConfig // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [EmpleadoConUsuarioConfig].
extension EmpleadoConUsuarioConfigPatterns on EmpleadoConUsuarioConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmpleadoConUsuarioConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmpleadoConUsuarioConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmpleadoConUsuarioConfig value)  $default,){
final _that = this;
switch (_that) {
case _EmpleadoConUsuarioConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmpleadoConUsuarioConfig value)?  $default,){
final _that = this;
switch (_that) {
case _EmpleadoConUsuarioConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idEmpleadoConfig,  int? idUserConfig)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmpleadoConUsuarioConfig() when $default != null:
return $default(_that.idEmpleadoConfig,_that.idUserConfig);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idEmpleadoConfig,  int? idUserConfig)  $default,) {final _that = this;
switch (_that) {
case _EmpleadoConUsuarioConfig():
return $default(_that.idEmpleadoConfig,_that.idUserConfig);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idEmpleadoConfig,  int? idUserConfig)?  $default,) {final _that = this;
switch (_that) {
case _EmpleadoConUsuarioConfig() when $default != null:
return $default(_that.idEmpleadoConfig,_that.idUserConfig);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmpleadoConUsuarioConfig implements EmpleadoConUsuarioConfig {
  const _EmpleadoConUsuarioConfig({this.idEmpleadoConfig, this.idUserConfig});
  factory _EmpleadoConUsuarioConfig.fromJson(Map<String, dynamic> json) => _$EmpleadoConUsuarioConfigFromJson(json);

@override final  int? idEmpleadoConfig;
@override final  int? idUserConfig;

/// Create a copy of EmpleadoConUsuarioConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmpleadoConUsuarioConfigCopyWith<_EmpleadoConUsuarioConfig> get copyWith => __$EmpleadoConUsuarioConfigCopyWithImpl<_EmpleadoConUsuarioConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmpleadoConUsuarioConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmpleadoConUsuarioConfig&&(identical(other.idEmpleadoConfig, idEmpleadoConfig) || other.idEmpleadoConfig == idEmpleadoConfig)&&(identical(other.idUserConfig, idUserConfig) || other.idUserConfig == idUserConfig));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleadoConfig,idUserConfig);

@override
String toString() {
  return 'EmpleadoConUsuarioConfig(idEmpleadoConfig: $idEmpleadoConfig, idUserConfig: $idUserConfig)';
}


}

/// @nodoc
abstract mixin class _$EmpleadoConUsuarioConfigCopyWith<$Res> implements $EmpleadoConUsuarioConfigCopyWith<$Res> {
  factory _$EmpleadoConUsuarioConfigCopyWith(_EmpleadoConUsuarioConfig value, $Res Function(_EmpleadoConUsuarioConfig) _then) = __$EmpleadoConUsuarioConfigCopyWithImpl;
@override @useResult
$Res call({
 int? idEmpleadoConfig, int? idUserConfig
});




}
/// @nodoc
class __$EmpleadoConUsuarioConfigCopyWithImpl<$Res>
    implements _$EmpleadoConUsuarioConfigCopyWith<$Res> {
  __$EmpleadoConUsuarioConfigCopyWithImpl(this._self, this._then);

  final _EmpleadoConUsuarioConfig _self;
  final $Res Function(_EmpleadoConUsuarioConfig) _then;

/// Create a copy of EmpleadoConUsuarioConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idEmpleadoConfig = freezed,Object? idUserConfig = freezed,}) {
  return _then(_EmpleadoConUsuarioConfig(
idEmpleadoConfig: freezed == idEmpleadoConfig ? _self.idEmpleadoConfig : idEmpleadoConfig // ignore: cast_nullable_to_non_nullable
as int?,idUserConfig: freezed == idUserConfig ? _self.idUserConfig : idUserConfig // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

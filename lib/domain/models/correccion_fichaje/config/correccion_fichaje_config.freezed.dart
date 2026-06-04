// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'correccion_fichaje_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CorreccionFichajeConfig {

 int? get idEmpleado; int? get idFichaje; String? get motivo; String? get estado;
/// Create a copy of CorreccionFichajeConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CorreccionFichajeConfigCopyWith<CorreccionFichajeConfig> get copyWith => _$CorreccionFichajeConfigCopyWithImpl<CorreccionFichajeConfig>(this as CorreccionFichajeConfig, _$identity);

  /// Serializes this CorreccionFichajeConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CorreccionFichajeConfig&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.idFichaje, idFichaje) || other.idFichaje == idFichaje)&&(identical(other.motivo, motivo) || other.motivo == motivo)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleado,idFichaje,motivo,estado);

@override
String toString() {
  return 'CorreccionFichajeConfig(idEmpleado: $idEmpleado, idFichaje: $idFichaje, motivo: $motivo, estado: $estado)';
}


}

/// @nodoc
abstract mixin class $CorreccionFichajeConfigCopyWith<$Res>  {
  factory $CorreccionFichajeConfigCopyWith(CorreccionFichajeConfig value, $Res Function(CorreccionFichajeConfig) _then) = _$CorreccionFichajeConfigCopyWithImpl;
@useResult
$Res call({
 int? idEmpleado, int? idFichaje, String? motivo, String? estado
});




}
/// @nodoc
class _$CorreccionFichajeConfigCopyWithImpl<$Res>
    implements $CorreccionFichajeConfigCopyWith<$Res> {
  _$CorreccionFichajeConfigCopyWithImpl(this._self, this._then);

  final CorreccionFichajeConfig _self;
  final $Res Function(CorreccionFichajeConfig) _then;

/// Create a copy of CorreccionFichajeConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idEmpleado = freezed,Object? idFichaje = freezed,Object? motivo = freezed,Object? estado = freezed,}) {
  return _then(_self.copyWith(
idEmpleado: freezed == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int?,idFichaje: freezed == idFichaje ? _self.idFichaje : idFichaje // ignore: cast_nullable_to_non_nullable
as int?,motivo: freezed == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String?,estado: freezed == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CorreccionFichajeConfig].
extension CorreccionFichajeConfigPatterns on CorreccionFichajeConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CorreccionFichajeConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CorreccionFichajeConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CorreccionFichajeConfig value)  $default,){
final _that = this;
switch (_that) {
case _CorreccionFichajeConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CorreccionFichajeConfig value)?  $default,){
final _that = this;
switch (_that) {
case _CorreccionFichajeConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idEmpleado,  int? idFichaje,  String? motivo,  String? estado)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CorreccionFichajeConfig() when $default != null:
return $default(_that.idEmpleado,_that.idFichaje,_that.motivo,_that.estado);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idEmpleado,  int? idFichaje,  String? motivo,  String? estado)  $default,) {final _that = this;
switch (_that) {
case _CorreccionFichajeConfig():
return $default(_that.idEmpleado,_that.idFichaje,_that.motivo,_that.estado);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idEmpleado,  int? idFichaje,  String? motivo,  String? estado)?  $default,) {final _that = this;
switch (_that) {
case _CorreccionFichajeConfig() when $default != null:
return $default(_that.idEmpleado,_that.idFichaje,_that.motivo,_that.estado);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CorreccionFichajeConfig implements CorreccionFichajeConfig {
  const _CorreccionFichajeConfig({this.idEmpleado, this.idFichaje, this.motivo, this.estado});
  factory _CorreccionFichajeConfig.fromJson(Map<String, dynamic> json) => _$CorreccionFichajeConfigFromJson(json);

@override final  int? idEmpleado;
@override final  int? idFichaje;
@override final  String? motivo;
@override final  String? estado;

/// Create a copy of CorreccionFichajeConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CorreccionFichajeConfigCopyWith<_CorreccionFichajeConfig> get copyWith => __$CorreccionFichajeConfigCopyWithImpl<_CorreccionFichajeConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CorreccionFichajeConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CorreccionFichajeConfig&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.idFichaje, idFichaje) || other.idFichaje == idFichaje)&&(identical(other.motivo, motivo) || other.motivo == motivo)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleado,idFichaje,motivo,estado);

@override
String toString() {
  return 'CorreccionFichajeConfig(idEmpleado: $idEmpleado, idFichaje: $idFichaje, motivo: $motivo, estado: $estado)';
}


}

/// @nodoc
abstract mixin class _$CorreccionFichajeConfigCopyWith<$Res> implements $CorreccionFichajeConfigCopyWith<$Res> {
  factory _$CorreccionFichajeConfigCopyWith(_CorreccionFichajeConfig value, $Res Function(_CorreccionFichajeConfig) _then) = __$CorreccionFichajeConfigCopyWithImpl;
@override @useResult
$Res call({
 int? idEmpleado, int? idFichaje, String? motivo, String? estado
});




}
/// @nodoc
class __$CorreccionFichajeConfigCopyWithImpl<$Res>
    implements _$CorreccionFichajeConfigCopyWith<$Res> {
  __$CorreccionFichajeConfigCopyWithImpl(this._self, this._then);

  final _CorreccionFichajeConfig _self;
  final $Res Function(_CorreccionFichajeConfig) _then;

/// Create a copy of CorreccionFichajeConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idEmpleado = freezed,Object? idFichaje = freezed,Object? motivo = freezed,Object? estado = freezed,}) {
  return _then(_CorreccionFichajeConfig(
idEmpleado: freezed == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int?,idFichaje: freezed == idFichaje ? _self.idFichaje : idFichaje // ignore: cast_nullable_to_non_nullable
as int?,motivo: freezed == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String?,estado: freezed == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

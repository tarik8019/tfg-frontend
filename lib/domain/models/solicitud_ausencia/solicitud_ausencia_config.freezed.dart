// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'solicitud_ausencia_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SolicitudAusenciaConfig {

 int? get idEmpleado; DateTime? get fechaInicio; DateTime? get fechaFin; String? get motivo; String get estado;
/// Create a copy of SolicitudAusenciaConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SolicitudAusenciaConfigCopyWith<SolicitudAusenciaConfig> get copyWith => _$SolicitudAusenciaConfigCopyWithImpl<SolicitudAusenciaConfig>(this as SolicitudAusenciaConfig, _$identity);

  /// Serializes this SolicitudAusenciaConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SolicitudAusenciaConfig&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.fechaInicio, fechaInicio) || other.fechaInicio == fechaInicio)&&(identical(other.fechaFin, fechaFin) || other.fechaFin == fechaFin)&&(identical(other.motivo, motivo) || other.motivo == motivo)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleado,fechaInicio,fechaFin,motivo,estado);

@override
String toString() {
  return 'SolicitudAusenciaConfig(idEmpleado: $idEmpleado, fechaInicio: $fechaInicio, fechaFin: $fechaFin, motivo: $motivo, estado: $estado)';
}


}

/// @nodoc
abstract mixin class $SolicitudAusenciaConfigCopyWith<$Res>  {
  factory $SolicitudAusenciaConfigCopyWith(SolicitudAusenciaConfig value, $Res Function(SolicitudAusenciaConfig) _then) = _$SolicitudAusenciaConfigCopyWithImpl;
@useResult
$Res call({
 int? idEmpleado, DateTime? fechaInicio, DateTime? fechaFin, String? motivo, String estado
});




}
/// @nodoc
class _$SolicitudAusenciaConfigCopyWithImpl<$Res>
    implements $SolicitudAusenciaConfigCopyWith<$Res> {
  _$SolicitudAusenciaConfigCopyWithImpl(this._self, this._then);

  final SolicitudAusenciaConfig _self;
  final $Res Function(SolicitudAusenciaConfig) _then;

/// Create a copy of SolicitudAusenciaConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idEmpleado = freezed,Object? fechaInicio = freezed,Object? fechaFin = freezed,Object? motivo = freezed,Object? estado = null,}) {
  return _then(_self.copyWith(
idEmpleado: freezed == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int?,fechaInicio: freezed == fechaInicio ? _self.fechaInicio : fechaInicio // ignore: cast_nullable_to_non_nullable
as DateTime?,fechaFin: freezed == fechaFin ? _self.fechaFin : fechaFin // ignore: cast_nullable_to_non_nullable
as DateTime?,motivo: freezed == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String?,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SolicitudAusenciaConfig].
extension SolicitudAusenciaConfigPatterns on SolicitudAusenciaConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SolicitudAusenciaConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SolicitudAusenciaConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SolicitudAusenciaConfig value)  $default,){
final _that = this;
switch (_that) {
case _SolicitudAusenciaConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SolicitudAusenciaConfig value)?  $default,){
final _that = this;
switch (_that) {
case _SolicitudAusenciaConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idEmpleado,  DateTime? fechaInicio,  DateTime? fechaFin,  String? motivo,  String estado)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SolicitudAusenciaConfig() when $default != null:
return $default(_that.idEmpleado,_that.fechaInicio,_that.fechaFin,_that.motivo,_that.estado);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idEmpleado,  DateTime? fechaInicio,  DateTime? fechaFin,  String? motivo,  String estado)  $default,) {final _that = this;
switch (_that) {
case _SolicitudAusenciaConfig():
return $default(_that.idEmpleado,_that.fechaInicio,_that.fechaFin,_that.motivo,_that.estado);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idEmpleado,  DateTime? fechaInicio,  DateTime? fechaFin,  String? motivo,  String estado)?  $default,) {final _that = this;
switch (_that) {
case _SolicitudAusenciaConfig() when $default != null:
return $default(_that.idEmpleado,_that.fechaInicio,_that.fechaFin,_that.motivo,_that.estado);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SolicitudAusenciaConfig implements SolicitudAusenciaConfig {
  const _SolicitudAusenciaConfig({this.idEmpleado, this.fechaInicio, this.fechaFin, this.motivo, this.estado = "pendiente"});
  factory _SolicitudAusenciaConfig.fromJson(Map<String, dynamic> json) => _$SolicitudAusenciaConfigFromJson(json);

@override final  int? idEmpleado;
@override final  DateTime? fechaInicio;
@override final  DateTime? fechaFin;
@override final  String? motivo;
@override@JsonKey() final  String estado;

/// Create a copy of SolicitudAusenciaConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SolicitudAusenciaConfigCopyWith<_SolicitudAusenciaConfig> get copyWith => __$SolicitudAusenciaConfigCopyWithImpl<_SolicitudAusenciaConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SolicitudAusenciaConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SolicitudAusenciaConfig&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.fechaInicio, fechaInicio) || other.fechaInicio == fechaInicio)&&(identical(other.fechaFin, fechaFin) || other.fechaFin == fechaFin)&&(identical(other.motivo, motivo) || other.motivo == motivo)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleado,fechaInicio,fechaFin,motivo,estado);

@override
String toString() {
  return 'SolicitudAusenciaConfig(idEmpleado: $idEmpleado, fechaInicio: $fechaInicio, fechaFin: $fechaFin, motivo: $motivo, estado: $estado)';
}


}

/// @nodoc
abstract mixin class _$SolicitudAusenciaConfigCopyWith<$Res> implements $SolicitudAusenciaConfigCopyWith<$Res> {
  factory _$SolicitudAusenciaConfigCopyWith(_SolicitudAusenciaConfig value, $Res Function(_SolicitudAusenciaConfig) _then) = __$SolicitudAusenciaConfigCopyWithImpl;
@override @useResult
$Res call({
 int? idEmpleado, DateTime? fechaInicio, DateTime? fechaFin, String? motivo, String estado
});




}
/// @nodoc
class __$SolicitudAusenciaConfigCopyWithImpl<$Res>
    implements _$SolicitudAusenciaConfigCopyWith<$Res> {
  __$SolicitudAusenciaConfigCopyWithImpl(this._self, this._then);

  final _SolicitudAusenciaConfig _self;
  final $Res Function(_SolicitudAusenciaConfig) _then;

/// Create a copy of SolicitudAusenciaConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idEmpleado = freezed,Object? fechaInicio = freezed,Object? fechaFin = freezed,Object? motivo = freezed,Object? estado = null,}) {
  return _then(_SolicitudAusenciaConfig(
idEmpleado: freezed == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int?,fechaInicio: freezed == fechaInicio ? _self.fechaInicio : fechaInicio // ignore: cast_nullable_to_non_nullable
as DateTime?,fechaFin: freezed == fechaFin ? _self.fechaFin : fechaFin // ignore: cast_nullable_to_non_nullable
as DateTime?,motivo: freezed == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String?,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

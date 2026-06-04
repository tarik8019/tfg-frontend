// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reporte_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReporteConfig {

 int? get idUsuario; String? get tipo; DateTime? get fechaInicio; DateTime? get fechaFin;
/// Create a copy of ReporteConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReporteConfigCopyWith<ReporteConfig> get copyWith => _$ReporteConfigCopyWithImpl<ReporteConfig>(this as ReporteConfig, _$identity);

  /// Serializes this ReporteConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReporteConfig&&(identical(other.idUsuario, idUsuario) || other.idUsuario == idUsuario)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.fechaInicio, fechaInicio) || other.fechaInicio == fechaInicio)&&(identical(other.fechaFin, fechaFin) || other.fechaFin == fechaFin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idUsuario,tipo,fechaInicio,fechaFin);

@override
String toString() {
  return 'ReporteConfig(idUsuario: $idUsuario, tipo: $tipo, fechaInicio: $fechaInicio, fechaFin: $fechaFin)';
}


}

/// @nodoc
abstract mixin class $ReporteConfigCopyWith<$Res>  {
  factory $ReporteConfigCopyWith(ReporteConfig value, $Res Function(ReporteConfig) _then) = _$ReporteConfigCopyWithImpl;
@useResult
$Res call({
 int? idUsuario, String? tipo, DateTime? fechaInicio, DateTime? fechaFin
});




}
/// @nodoc
class _$ReporteConfigCopyWithImpl<$Res>
    implements $ReporteConfigCopyWith<$Res> {
  _$ReporteConfigCopyWithImpl(this._self, this._then);

  final ReporteConfig _self;
  final $Res Function(ReporteConfig) _then;

/// Create a copy of ReporteConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idUsuario = freezed,Object? tipo = freezed,Object? fechaInicio = freezed,Object? fechaFin = freezed,}) {
  return _then(_self.copyWith(
idUsuario: freezed == idUsuario ? _self.idUsuario : idUsuario // ignore: cast_nullable_to_non_nullable
as int?,tipo: freezed == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String?,fechaInicio: freezed == fechaInicio ? _self.fechaInicio : fechaInicio // ignore: cast_nullable_to_non_nullable
as DateTime?,fechaFin: freezed == fechaFin ? _self.fechaFin : fechaFin // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReporteConfig].
extension ReporteConfigPatterns on ReporteConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReporteConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReporteConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReporteConfig value)  $default,){
final _that = this;
switch (_that) {
case _ReporteConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReporteConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ReporteConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idUsuario,  String? tipo,  DateTime? fechaInicio,  DateTime? fechaFin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReporteConfig() when $default != null:
return $default(_that.idUsuario,_that.tipo,_that.fechaInicio,_that.fechaFin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idUsuario,  String? tipo,  DateTime? fechaInicio,  DateTime? fechaFin)  $default,) {final _that = this;
switch (_that) {
case _ReporteConfig():
return $default(_that.idUsuario,_that.tipo,_that.fechaInicio,_that.fechaFin);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idUsuario,  String? tipo,  DateTime? fechaInicio,  DateTime? fechaFin)?  $default,) {final _that = this;
switch (_that) {
case _ReporteConfig() when $default != null:
return $default(_that.idUsuario,_that.tipo,_that.fechaInicio,_that.fechaFin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReporteConfig implements ReporteConfig {
  const _ReporteConfig({this.idUsuario, this.tipo, this.fechaInicio, this.fechaFin});
  factory _ReporteConfig.fromJson(Map<String, dynamic> json) => _$ReporteConfigFromJson(json);

@override final  int? idUsuario;
@override final  String? tipo;
@override final  DateTime? fechaInicio;
@override final  DateTime? fechaFin;

/// Create a copy of ReporteConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReporteConfigCopyWith<_ReporteConfig> get copyWith => __$ReporteConfigCopyWithImpl<_ReporteConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReporteConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReporteConfig&&(identical(other.idUsuario, idUsuario) || other.idUsuario == idUsuario)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.fechaInicio, fechaInicio) || other.fechaInicio == fechaInicio)&&(identical(other.fechaFin, fechaFin) || other.fechaFin == fechaFin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idUsuario,tipo,fechaInicio,fechaFin);

@override
String toString() {
  return 'ReporteConfig(idUsuario: $idUsuario, tipo: $tipo, fechaInicio: $fechaInicio, fechaFin: $fechaFin)';
}


}

/// @nodoc
abstract mixin class _$ReporteConfigCopyWith<$Res> implements $ReporteConfigCopyWith<$Res> {
  factory _$ReporteConfigCopyWith(_ReporteConfig value, $Res Function(_ReporteConfig) _then) = __$ReporteConfigCopyWithImpl;
@override @useResult
$Res call({
 int? idUsuario, String? tipo, DateTime? fechaInicio, DateTime? fechaFin
});




}
/// @nodoc
class __$ReporteConfigCopyWithImpl<$Res>
    implements _$ReporteConfigCopyWith<$Res> {
  __$ReporteConfigCopyWithImpl(this._self, this._then);

  final _ReporteConfig _self;
  final $Res Function(_ReporteConfig) _then;

/// Create a copy of ReporteConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idUsuario = freezed,Object? tipo = freezed,Object? fechaInicio = freezed,Object? fechaFin = freezed,}) {
  return _then(_ReporteConfig(
idUsuario: freezed == idUsuario ? _self.idUsuario : idUsuario // ignore: cast_nullable_to_non_nullable
as int?,tipo: freezed == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String?,fechaInicio: freezed == fechaInicio ? _self.fechaInicio : fechaInicio // ignore: cast_nullable_to_non_nullable
as DateTime?,fechaFin: freezed == fechaFin ? _self.fechaFin : fechaFin // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on

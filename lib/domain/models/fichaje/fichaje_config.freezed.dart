// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fichaje_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FichajeConfig {

 int? get idEmpleado; String? get tipo; DateTime? get timestamp; double? get latitud; double? get longitud; bool? get validadoFacial; String? get fuente;
/// Create a copy of FichajeConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FichajeConfigCopyWith<FichajeConfig> get copyWith => _$FichajeConfigCopyWithImpl<FichajeConfig>(this as FichajeConfig, _$identity);

  /// Serializes this FichajeConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FichajeConfig&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.validadoFacial, validadoFacial) || other.validadoFacial == validadoFacial)&&(identical(other.fuente, fuente) || other.fuente == fuente));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleado,tipo,timestamp,latitud,longitud,validadoFacial,fuente);

@override
String toString() {
  return 'FichajeConfig(idEmpleado: $idEmpleado, tipo: $tipo, timestamp: $timestamp, latitud: $latitud, longitud: $longitud, validadoFacial: $validadoFacial, fuente: $fuente)';
}


}

/// @nodoc
abstract mixin class $FichajeConfigCopyWith<$Res>  {
  factory $FichajeConfigCopyWith(FichajeConfig value, $Res Function(FichajeConfig) _then) = _$FichajeConfigCopyWithImpl;
@useResult
$Res call({
 int? idEmpleado, String? tipo, DateTime? timestamp, double? latitud, double? longitud, bool? validadoFacial, String? fuente
});




}
/// @nodoc
class _$FichajeConfigCopyWithImpl<$Res>
    implements $FichajeConfigCopyWith<$Res> {
  _$FichajeConfigCopyWithImpl(this._self, this._then);

  final FichajeConfig _self;
  final $Res Function(FichajeConfig) _then;

/// Create a copy of FichajeConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idEmpleado = freezed,Object? tipo = freezed,Object? timestamp = freezed,Object? latitud = freezed,Object? longitud = freezed,Object? validadoFacial = freezed,Object? fuente = freezed,}) {
  return _then(_self.copyWith(
idEmpleado: freezed == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int?,tipo: freezed == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,latitud: freezed == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double?,longitud: freezed == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double?,validadoFacial: freezed == validadoFacial ? _self.validadoFacial : validadoFacial // ignore: cast_nullable_to_non_nullable
as bool?,fuente: freezed == fuente ? _self.fuente : fuente // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FichajeConfig].
extension FichajeConfigPatterns on FichajeConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FichajeConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FichajeConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FichajeConfig value)  $default,){
final _that = this;
switch (_that) {
case _FichajeConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FichajeConfig value)?  $default,){
final _that = this;
switch (_that) {
case _FichajeConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idEmpleado,  String? tipo,  DateTime? timestamp,  double? latitud,  double? longitud,  bool? validadoFacial,  String? fuente)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FichajeConfig() when $default != null:
return $default(_that.idEmpleado,_that.tipo,_that.timestamp,_that.latitud,_that.longitud,_that.validadoFacial,_that.fuente);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idEmpleado,  String? tipo,  DateTime? timestamp,  double? latitud,  double? longitud,  bool? validadoFacial,  String? fuente)  $default,) {final _that = this;
switch (_that) {
case _FichajeConfig():
return $default(_that.idEmpleado,_that.tipo,_that.timestamp,_that.latitud,_that.longitud,_that.validadoFacial,_that.fuente);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idEmpleado,  String? tipo,  DateTime? timestamp,  double? latitud,  double? longitud,  bool? validadoFacial,  String? fuente)?  $default,) {final _that = this;
switch (_that) {
case _FichajeConfig() when $default != null:
return $default(_that.idEmpleado,_that.tipo,_that.timestamp,_that.latitud,_that.longitud,_that.validadoFacial,_that.fuente);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FichajeConfig implements FichajeConfig {
  const _FichajeConfig({this.idEmpleado, this.tipo, this.timestamp, this.latitud, this.longitud, this.validadoFacial, this.fuente});
  factory _FichajeConfig.fromJson(Map<String, dynamic> json) => _$FichajeConfigFromJson(json);

@override final  int? idEmpleado;
@override final  String? tipo;
@override final  DateTime? timestamp;
@override final  double? latitud;
@override final  double? longitud;
@override final  bool? validadoFacial;
@override final  String? fuente;

/// Create a copy of FichajeConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FichajeConfigCopyWith<_FichajeConfig> get copyWith => __$FichajeConfigCopyWithImpl<_FichajeConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FichajeConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FichajeConfig&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.validadoFacial, validadoFacial) || other.validadoFacial == validadoFacial)&&(identical(other.fuente, fuente) || other.fuente == fuente));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleado,tipo,timestamp,latitud,longitud,validadoFacial,fuente);

@override
String toString() {
  return 'FichajeConfig(idEmpleado: $idEmpleado, tipo: $tipo, timestamp: $timestamp, latitud: $latitud, longitud: $longitud, validadoFacial: $validadoFacial, fuente: $fuente)';
}


}

/// @nodoc
abstract mixin class _$FichajeConfigCopyWith<$Res> implements $FichajeConfigCopyWith<$Res> {
  factory _$FichajeConfigCopyWith(_FichajeConfig value, $Res Function(_FichajeConfig) _then) = __$FichajeConfigCopyWithImpl;
@override @useResult
$Res call({
 int? idEmpleado, String? tipo, DateTime? timestamp, double? latitud, double? longitud, bool? validadoFacial, String? fuente
});




}
/// @nodoc
class __$FichajeConfigCopyWithImpl<$Res>
    implements _$FichajeConfigCopyWith<$Res> {
  __$FichajeConfigCopyWithImpl(this._self, this._then);

  final _FichajeConfig _self;
  final $Res Function(_FichajeConfig) _then;

/// Create a copy of FichajeConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idEmpleado = freezed,Object? tipo = freezed,Object? timestamp = freezed,Object? latitud = freezed,Object? longitud = freezed,Object? validadoFacial = freezed,Object? fuente = freezed,}) {
  return _then(_FichajeConfig(
idEmpleado: freezed == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int?,tipo: freezed == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,latitud: freezed == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double?,longitud: freezed == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double?,validadoFacial: freezed == validadoFacial ? _self.validadoFacial : validadoFacial // ignore: cast_nullable_to_non_nullable
as bool?,fuente: freezed == fuente ? _self.fuente : fuente // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

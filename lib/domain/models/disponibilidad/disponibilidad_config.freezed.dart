// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disponibilidad_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DisponibilidadConfig {

 int? get idEmpleado; String? get diaSemana; String? get horaInicio; String? get horaFin;
/// Create a copy of DisponibilidadConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisponibilidadConfigCopyWith<DisponibilidadConfig> get copyWith => _$DisponibilidadConfigCopyWithImpl<DisponibilidadConfig>(this as DisponibilidadConfig, _$identity);

  /// Serializes this DisponibilidadConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisponibilidadConfig&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.diaSemana, diaSemana) || other.diaSemana == diaSemana)&&(identical(other.horaInicio, horaInicio) || other.horaInicio == horaInicio)&&(identical(other.horaFin, horaFin) || other.horaFin == horaFin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleado,diaSemana,horaInicio,horaFin);

@override
String toString() {
  return 'DisponibilidadConfig(idEmpleado: $idEmpleado, diaSemana: $diaSemana, horaInicio: $horaInicio, horaFin: $horaFin)';
}


}

/// @nodoc
abstract mixin class $DisponibilidadConfigCopyWith<$Res>  {
  factory $DisponibilidadConfigCopyWith(DisponibilidadConfig value, $Res Function(DisponibilidadConfig) _then) = _$DisponibilidadConfigCopyWithImpl;
@useResult
$Res call({
 int? idEmpleado, String? diaSemana, String? horaInicio, String? horaFin
});




}
/// @nodoc
class _$DisponibilidadConfigCopyWithImpl<$Res>
    implements $DisponibilidadConfigCopyWith<$Res> {
  _$DisponibilidadConfigCopyWithImpl(this._self, this._then);

  final DisponibilidadConfig _self;
  final $Res Function(DisponibilidadConfig) _then;

/// Create a copy of DisponibilidadConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idEmpleado = freezed,Object? diaSemana = freezed,Object? horaInicio = freezed,Object? horaFin = freezed,}) {
  return _then(_self.copyWith(
idEmpleado: freezed == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int?,diaSemana: freezed == diaSemana ? _self.diaSemana : diaSemana // ignore: cast_nullable_to_non_nullable
as String?,horaInicio: freezed == horaInicio ? _self.horaInicio : horaInicio // ignore: cast_nullable_to_non_nullable
as String?,horaFin: freezed == horaFin ? _self.horaFin : horaFin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DisponibilidadConfig].
extension DisponibilidadConfigPatterns on DisponibilidadConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisponibilidadConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisponibilidadConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisponibilidadConfig value)  $default,){
final _that = this;
switch (_that) {
case _DisponibilidadConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisponibilidadConfig value)?  $default,){
final _that = this;
switch (_that) {
case _DisponibilidadConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idEmpleado,  String? diaSemana,  String? horaInicio,  String? horaFin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisponibilidadConfig() when $default != null:
return $default(_that.idEmpleado,_that.diaSemana,_that.horaInicio,_that.horaFin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idEmpleado,  String? diaSemana,  String? horaInicio,  String? horaFin)  $default,) {final _that = this;
switch (_that) {
case _DisponibilidadConfig():
return $default(_that.idEmpleado,_that.diaSemana,_that.horaInicio,_that.horaFin);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idEmpleado,  String? diaSemana,  String? horaInicio,  String? horaFin)?  $default,) {final _that = this;
switch (_that) {
case _DisponibilidadConfig() when $default != null:
return $default(_that.idEmpleado,_that.diaSemana,_that.horaInicio,_that.horaFin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisponibilidadConfig implements DisponibilidadConfig {
  const _DisponibilidadConfig({this.idEmpleado, this.diaSemana, this.horaInicio, this.horaFin});
  factory _DisponibilidadConfig.fromJson(Map<String, dynamic> json) => _$DisponibilidadConfigFromJson(json);

@override final  int? idEmpleado;
@override final  String? diaSemana;
@override final  String? horaInicio;
@override final  String? horaFin;

/// Create a copy of DisponibilidadConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisponibilidadConfigCopyWith<_DisponibilidadConfig> get copyWith => __$DisponibilidadConfigCopyWithImpl<_DisponibilidadConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisponibilidadConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisponibilidadConfig&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.diaSemana, diaSemana) || other.diaSemana == diaSemana)&&(identical(other.horaInicio, horaInicio) || other.horaInicio == horaInicio)&&(identical(other.horaFin, horaFin) || other.horaFin == horaFin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleado,diaSemana,horaInicio,horaFin);

@override
String toString() {
  return 'DisponibilidadConfig(idEmpleado: $idEmpleado, diaSemana: $diaSemana, horaInicio: $horaInicio, horaFin: $horaFin)';
}


}

/// @nodoc
abstract mixin class _$DisponibilidadConfigCopyWith<$Res> implements $DisponibilidadConfigCopyWith<$Res> {
  factory _$DisponibilidadConfigCopyWith(_DisponibilidadConfig value, $Res Function(_DisponibilidadConfig) _then) = __$DisponibilidadConfigCopyWithImpl;
@override @useResult
$Res call({
 int? idEmpleado, String? diaSemana, String? horaInicio, String? horaFin
});




}
/// @nodoc
class __$DisponibilidadConfigCopyWithImpl<$Res>
    implements _$DisponibilidadConfigCopyWith<$Res> {
  __$DisponibilidadConfigCopyWithImpl(this._self, this._then);

  final _DisponibilidadConfig _self;
  final $Res Function(_DisponibilidadConfig) _then;

/// Create a copy of DisponibilidadConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idEmpleado = freezed,Object? diaSemana = freezed,Object? horaInicio = freezed,Object? horaFin = freezed,}) {
  return _then(_DisponibilidadConfig(
idEmpleado: freezed == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int?,diaSemana: freezed == diaSemana ? _self.diaSemana : diaSemana // ignore: cast_nullable_to_non_nullable
as String?,horaInicio: freezed == horaInicio ? _self.horaInicio : horaInicio // ignore: cast_nullable_to_non_nullable
as String?,horaFin: freezed == horaFin ? _self.horaFin : horaFin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

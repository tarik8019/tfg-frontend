// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'turno_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TurnoConfig {

 String? get nombre; DateTime? get horaInicio; DateTime? get horaFin; bool? get esNocturno; DateTime? get fecha; int? get idSede;
/// Create a copy of TurnoConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TurnoConfigCopyWith<TurnoConfig> get copyWith => _$TurnoConfigCopyWithImpl<TurnoConfig>(this as TurnoConfig, _$identity);

  /// Serializes this TurnoConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TurnoConfig&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.horaInicio, horaInicio) || other.horaInicio == horaInicio)&&(identical(other.horaFin, horaFin) || other.horaFin == horaFin)&&(identical(other.esNocturno, esNocturno) || other.esNocturno == esNocturno)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.idSede, idSede) || other.idSede == idSede));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nombre,horaInicio,horaFin,esNocturno,fecha,idSede);

@override
String toString() {
  return 'TurnoConfig(nombre: $nombre, horaInicio: $horaInicio, horaFin: $horaFin, esNocturno: $esNocturno, fecha: $fecha, idSede: $idSede)';
}


}

/// @nodoc
abstract mixin class $TurnoConfigCopyWith<$Res>  {
  factory $TurnoConfigCopyWith(TurnoConfig value, $Res Function(TurnoConfig) _then) = _$TurnoConfigCopyWithImpl;
@useResult
$Res call({
 String? nombre, DateTime? horaInicio, DateTime? horaFin, bool? esNocturno, DateTime? fecha, int? idSede
});




}
/// @nodoc
class _$TurnoConfigCopyWithImpl<$Res>
    implements $TurnoConfigCopyWith<$Res> {
  _$TurnoConfigCopyWithImpl(this._self, this._then);

  final TurnoConfig _self;
  final $Res Function(TurnoConfig) _then;

/// Create a copy of TurnoConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nombre = freezed,Object? horaInicio = freezed,Object? horaFin = freezed,Object? esNocturno = freezed,Object? fecha = freezed,Object? idSede = freezed,}) {
  return _then(_self.copyWith(
nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,horaInicio: freezed == horaInicio ? _self.horaInicio : horaInicio // ignore: cast_nullable_to_non_nullable
as DateTime?,horaFin: freezed == horaFin ? _self.horaFin : horaFin // ignore: cast_nullable_to_non_nullable
as DateTime?,esNocturno: freezed == esNocturno ? _self.esNocturno : esNocturno // ignore: cast_nullable_to_non_nullable
as bool?,fecha: freezed == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime?,idSede: freezed == idSede ? _self.idSede : idSede // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [TurnoConfig].
extension TurnoConfigPatterns on TurnoConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TurnoConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TurnoConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TurnoConfig value)  $default,){
final _that = this;
switch (_that) {
case _TurnoConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TurnoConfig value)?  $default,){
final _that = this;
switch (_that) {
case _TurnoConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? nombre,  DateTime? horaInicio,  DateTime? horaFin,  bool? esNocturno,  DateTime? fecha,  int? idSede)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TurnoConfig() when $default != null:
return $default(_that.nombre,_that.horaInicio,_that.horaFin,_that.esNocturno,_that.fecha,_that.idSede);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? nombre,  DateTime? horaInicio,  DateTime? horaFin,  bool? esNocturno,  DateTime? fecha,  int? idSede)  $default,) {final _that = this;
switch (_that) {
case _TurnoConfig():
return $default(_that.nombre,_that.horaInicio,_that.horaFin,_that.esNocturno,_that.fecha,_that.idSede);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? nombre,  DateTime? horaInicio,  DateTime? horaFin,  bool? esNocturno,  DateTime? fecha,  int? idSede)?  $default,) {final _that = this;
switch (_that) {
case _TurnoConfig() when $default != null:
return $default(_that.nombre,_that.horaInicio,_that.horaFin,_that.esNocturno,_that.fecha,_that.idSede);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TurnoConfig implements TurnoConfig {
  const _TurnoConfig({this.nombre, this.horaInicio, this.horaFin, this.esNocturno, this.fecha, this.idSede});
  factory _TurnoConfig.fromJson(Map<String, dynamic> json) => _$TurnoConfigFromJson(json);

@override final  String? nombre;
@override final  DateTime? horaInicio;
@override final  DateTime? horaFin;
@override final  bool? esNocturno;
@override final  DateTime? fecha;
@override final  int? idSede;

/// Create a copy of TurnoConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TurnoConfigCopyWith<_TurnoConfig> get copyWith => __$TurnoConfigCopyWithImpl<_TurnoConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TurnoConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TurnoConfig&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.horaInicio, horaInicio) || other.horaInicio == horaInicio)&&(identical(other.horaFin, horaFin) || other.horaFin == horaFin)&&(identical(other.esNocturno, esNocturno) || other.esNocturno == esNocturno)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.idSede, idSede) || other.idSede == idSede));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nombre,horaInicio,horaFin,esNocturno,fecha,idSede);

@override
String toString() {
  return 'TurnoConfig(nombre: $nombre, horaInicio: $horaInicio, horaFin: $horaFin, esNocturno: $esNocturno, fecha: $fecha, idSede: $idSede)';
}


}

/// @nodoc
abstract mixin class _$TurnoConfigCopyWith<$Res> implements $TurnoConfigCopyWith<$Res> {
  factory _$TurnoConfigCopyWith(_TurnoConfig value, $Res Function(_TurnoConfig) _then) = __$TurnoConfigCopyWithImpl;
@override @useResult
$Res call({
 String? nombre, DateTime? horaInicio, DateTime? horaFin, bool? esNocturno, DateTime? fecha, int? idSede
});




}
/// @nodoc
class __$TurnoConfigCopyWithImpl<$Res>
    implements _$TurnoConfigCopyWith<$Res> {
  __$TurnoConfigCopyWithImpl(this._self, this._then);

  final _TurnoConfig _self;
  final $Res Function(_TurnoConfig) _then;

/// Create a copy of TurnoConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nombre = freezed,Object? horaInicio = freezed,Object? horaFin = freezed,Object? esNocturno = freezed,Object? fecha = freezed,Object? idSede = freezed,}) {
  return _then(_TurnoConfig(
nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,horaInicio: freezed == horaInicio ? _self.horaInicio : horaInicio // ignore: cast_nullable_to_non_nullable
as DateTime?,horaFin: freezed == horaFin ? _self.horaFin : horaFin // ignore: cast_nullable_to_non_nullable
as DateTime?,esNocturno: freezed == esNocturno ? _self.esNocturno : esNocturno // ignore: cast_nullable_to_non_nullable
as bool?,fecha: freezed == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime?,idSede: freezed == idSede ? _self.idSede : idSede // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

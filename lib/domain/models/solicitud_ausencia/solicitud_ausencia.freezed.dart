// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'solicitud_ausencia.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SolicitudAusencia {

 int? get idSolicitud; Empleado get empleado; String get tipo; DateTime get fechaInicio; DateTime get fechaFin; String get estado;
/// Create a copy of SolicitudAusencia
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SolicitudAusenciaCopyWith<SolicitudAusencia> get copyWith => _$SolicitudAusenciaCopyWithImpl<SolicitudAusencia>(this as SolicitudAusencia, _$identity);

  /// Serializes this SolicitudAusencia to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SolicitudAusencia&&(identical(other.idSolicitud, idSolicitud) || other.idSolicitud == idSolicitud)&&(identical(other.empleado, empleado) || other.empleado == empleado)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.fechaInicio, fechaInicio) || other.fechaInicio == fechaInicio)&&(identical(other.fechaFin, fechaFin) || other.fechaFin == fechaFin)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idSolicitud,empleado,tipo,fechaInicio,fechaFin,estado);

@override
String toString() {
  return 'SolicitudAusencia(idSolicitud: $idSolicitud, empleado: $empleado, tipo: $tipo, fechaInicio: $fechaInicio, fechaFin: $fechaFin, estado: $estado)';
}


}

/// @nodoc
abstract mixin class $SolicitudAusenciaCopyWith<$Res>  {
  factory $SolicitudAusenciaCopyWith(SolicitudAusencia value, $Res Function(SolicitudAusencia) _then) = _$SolicitudAusenciaCopyWithImpl;
@useResult
$Res call({
 int? idSolicitud, Empleado empleado, String tipo, DateTime fechaInicio, DateTime fechaFin, String estado
});


$EmpleadoCopyWith<$Res> get empleado;

}
/// @nodoc
class _$SolicitudAusenciaCopyWithImpl<$Res>
    implements $SolicitudAusenciaCopyWith<$Res> {
  _$SolicitudAusenciaCopyWithImpl(this._self, this._then);

  final SolicitudAusencia _self;
  final $Res Function(SolicitudAusencia) _then;

/// Create a copy of SolicitudAusencia
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idSolicitud = freezed,Object? empleado = null,Object? tipo = null,Object? fechaInicio = null,Object? fechaFin = null,Object? estado = null,}) {
  return _then(_self.copyWith(
idSolicitud: freezed == idSolicitud ? _self.idSolicitud : idSolicitud // ignore: cast_nullable_to_non_nullable
as int?,empleado: null == empleado ? _self.empleado : empleado // ignore: cast_nullable_to_non_nullable
as Empleado,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,fechaInicio: null == fechaInicio ? _self.fechaInicio : fechaInicio // ignore: cast_nullable_to_non_nullable
as DateTime,fechaFin: null == fechaFin ? _self.fechaFin : fechaFin // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of SolicitudAusencia
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpleadoCopyWith<$Res> get empleado {
  
  return $EmpleadoCopyWith<$Res>(_self.empleado, (value) {
    return _then(_self.copyWith(empleado: value));
  });
}
}


/// Adds pattern-matching-related methods to [SolicitudAusencia].
extension SolicitudAusenciaPatterns on SolicitudAusencia {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SolicitudAusencia value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SolicitudAusencia() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SolicitudAusencia value)  $default,){
final _that = this;
switch (_that) {
case _SolicitudAusencia():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SolicitudAusencia value)?  $default,){
final _that = this;
switch (_that) {
case _SolicitudAusencia() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idSolicitud,  Empleado empleado,  String tipo,  DateTime fechaInicio,  DateTime fechaFin,  String estado)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SolicitudAusencia() when $default != null:
return $default(_that.idSolicitud,_that.empleado,_that.tipo,_that.fechaInicio,_that.fechaFin,_that.estado);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idSolicitud,  Empleado empleado,  String tipo,  DateTime fechaInicio,  DateTime fechaFin,  String estado)  $default,) {final _that = this;
switch (_that) {
case _SolicitudAusencia():
return $default(_that.idSolicitud,_that.empleado,_that.tipo,_that.fechaInicio,_that.fechaFin,_that.estado);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idSolicitud,  Empleado empleado,  String tipo,  DateTime fechaInicio,  DateTime fechaFin,  String estado)?  $default,) {final _that = this;
switch (_that) {
case _SolicitudAusencia() when $default != null:
return $default(_that.idSolicitud,_that.empleado,_that.tipo,_that.fechaInicio,_that.fechaFin,_that.estado);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SolicitudAusencia implements SolicitudAusencia {
  const _SolicitudAusencia({this.idSolicitud, required this.empleado, required this.tipo, required this.fechaInicio, required this.fechaFin, this.estado = "pendiente"});
  factory _SolicitudAusencia.fromJson(Map<String, dynamic> json) => _$SolicitudAusenciaFromJson(json);

@override final  int? idSolicitud;
@override final  Empleado empleado;
@override final  String tipo;
@override final  DateTime fechaInicio;
@override final  DateTime fechaFin;
@override@JsonKey() final  String estado;

/// Create a copy of SolicitudAusencia
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SolicitudAusenciaCopyWith<_SolicitudAusencia> get copyWith => __$SolicitudAusenciaCopyWithImpl<_SolicitudAusencia>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SolicitudAusenciaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SolicitudAusencia&&(identical(other.idSolicitud, idSolicitud) || other.idSolicitud == idSolicitud)&&(identical(other.empleado, empleado) || other.empleado == empleado)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.fechaInicio, fechaInicio) || other.fechaInicio == fechaInicio)&&(identical(other.fechaFin, fechaFin) || other.fechaFin == fechaFin)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idSolicitud,empleado,tipo,fechaInicio,fechaFin,estado);

@override
String toString() {
  return 'SolicitudAusencia(idSolicitud: $idSolicitud, empleado: $empleado, tipo: $tipo, fechaInicio: $fechaInicio, fechaFin: $fechaFin, estado: $estado)';
}


}

/// @nodoc
abstract mixin class _$SolicitudAusenciaCopyWith<$Res> implements $SolicitudAusenciaCopyWith<$Res> {
  factory _$SolicitudAusenciaCopyWith(_SolicitudAusencia value, $Res Function(_SolicitudAusencia) _then) = __$SolicitudAusenciaCopyWithImpl;
@override @useResult
$Res call({
 int? idSolicitud, Empleado empleado, String tipo, DateTime fechaInicio, DateTime fechaFin, String estado
});


@override $EmpleadoCopyWith<$Res> get empleado;

}
/// @nodoc
class __$SolicitudAusenciaCopyWithImpl<$Res>
    implements _$SolicitudAusenciaCopyWith<$Res> {
  __$SolicitudAusenciaCopyWithImpl(this._self, this._then);

  final _SolicitudAusencia _self;
  final $Res Function(_SolicitudAusencia) _then;

/// Create a copy of SolicitudAusencia
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idSolicitud = freezed,Object? empleado = null,Object? tipo = null,Object? fechaInicio = null,Object? fechaFin = null,Object? estado = null,}) {
  return _then(_SolicitudAusencia(
idSolicitud: freezed == idSolicitud ? _self.idSolicitud : idSolicitud // ignore: cast_nullable_to_non_nullable
as int?,empleado: null == empleado ? _self.empleado : empleado // ignore: cast_nullable_to_non_nullable
as Empleado,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,fechaInicio: null == fechaInicio ? _self.fechaInicio : fechaInicio // ignore: cast_nullable_to_non_nullable
as DateTime,fechaFin: null == fechaFin ? _self.fechaFin : fechaFin // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of SolicitudAusencia
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpleadoCopyWith<$Res> get empleado {
  
  return $EmpleadoCopyWith<$Res>(_self.empleado, (value) {
    return _then(_self.copyWith(empleado: value));
  });
}
}

// dart format on

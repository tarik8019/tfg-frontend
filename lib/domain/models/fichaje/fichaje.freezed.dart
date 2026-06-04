// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fichaje.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Fichaje {

 int? get idFichaje; int get idEmpleado; Empleado? get empleado; String get tipoFichaje; DateTime? get timestamp; double? get latitud; double? get longitud; bool get validadoFacial; String get fuenteFichaje;
/// Create a copy of Fichaje
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FichajeCopyWith<Fichaje> get copyWith => _$FichajeCopyWithImpl<Fichaje>(this as Fichaje, _$identity);

  /// Serializes this Fichaje to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Fichaje&&(identical(other.idFichaje, idFichaje) || other.idFichaje == idFichaje)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.empleado, empleado) || other.empleado == empleado)&&(identical(other.tipoFichaje, tipoFichaje) || other.tipoFichaje == tipoFichaje)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.validadoFacial, validadoFacial) || other.validadoFacial == validadoFacial)&&(identical(other.fuenteFichaje, fuenteFichaje) || other.fuenteFichaje == fuenteFichaje));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idFichaje,idEmpleado,empleado,tipoFichaje,timestamp,latitud,longitud,validadoFacial,fuenteFichaje);

@override
String toString() {
  return 'Fichaje(idFichaje: $idFichaje, idEmpleado: $idEmpleado, empleado: $empleado, tipoFichaje: $tipoFichaje, timestamp: $timestamp, latitud: $latitud, longitud: $longitud, validadoFacial: $validadoFacial, fuenteFichaje: $fuenteFichaje)';
}


}

/// @nodoc
abstract mixin class $FichajeCopyWith<$Res>  {
  factory $FichajeCopyWith(Fichaje value, $Res Function(Fichaje) _then) = _$FichajeCopyWithImpl;
@useResult
$Res call({
 int? idFichaje, int idEmpleado, Empleado? empleado, String tipoFichaje, DateTime? timestamp, double? latitud, double? longitud, bool validadoFacial, String fuenteFichaje
});


$EmpleadoCopyWith<$Res>? get empleado;

}
/// @nodoc
class _$FichajeCopyWithImpl<$Res>
    implements $FichajeCopyWith<$Res> {
  _$FichajeCopyWithImpl(this._self, this._then);

  final Fichaje _self;
  final $Res Function(Fichaje) _then;

/// Create a copy of Fichaje
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idFichaje = freezed,Object? idEmpleado = null,Object? empleado = freezed,Object? tipoFichaje = null,Object? timestamp = freezed,Object? latitud = freezed,Object? longitud = freezed,Object? validadoFacial = null,Object? fuenteFichaje = null,}) {
  return _then(_self.copyWith(
idFichaje: freezed == idFichaje ? _self.idFichaje : idFichaje // ignore: cast_nullable_to_non_nullable
as int?,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,empleado: freezed == empleado ? _self.empleado : empleado // ignore: cast_nullable_to_non_nullable
as Empleado?,tipoFichaje: null == tipoFichaje ? _self.tipoFichaje : tipoFichaje // ignore: cast_nullable_to_non_nullable
as String,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,latitud: freezed == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double?,longitud: freezed == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double?,validadoFacial: null == validadoFacial ? _self.validadoFacial : validadoFacial // ignore: cast_nullable_to_non_nullable
as bool,fuenteFichaje: null == fuenteFichaje ? _self.fuenteFichaje : fuenteFichaje // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of Fichaje
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpleadoCopyWith<$Res>? get empleado {
    if (_self.empleado == null) {
    return null;
  }

  return $EmpleadoCopyWith<$Res>(_self.empleado!, (value) {
    return _then(_self.copyWith(empleado: value));
  });
}
}


/// Adds pattern-matching-related methods to [Fichaje].
extension FichajePatterns on Fichaje {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Fichaje value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fichaje() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Fichaje value)  $default,){
final _that = this;
switch (_that) {
case _Fichaje():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Fichaje value)?  $default,){
final _that = this;
switch (_that) {
case _Fichaje() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idFichaje,  int idEmpleado,  Empleado? empleado,  String tipoFichaje,  DateTime? timestamp,  double? latitud,  double? longitud,  bool validadoFacial,  String fuenteFichaje)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fichaje() when $default != null:
return $default(_that.idFichaje,_that.idEmpleado,_that.empleado,_that.tipoFichaje,_that.timestamp,_that.latitud,_that.longitud,_that.validadoFacial,_that.fuenteFichaje);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idFichaje,  int idEmpleado,  Empleado? empleado,  String tipoFichaje,  DateTime? timestamp,  double? latitud,  double? longitud,  bool validadoFacial,  String fuenteFichaje)  $default,) {final _that = this;
switch (_that) {
case _Fichaje():
return $default(_that.idFichaje,_that.idEmpleado,_that.empleado,_that.tipoFichaje,_that.timestamp,_that.latitud,_that.longitud,_that.validadoFacial,_that.fuenteFichaje);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idFichaje,  int idEmpleado,  Empleado? empleado,  String tipoFichaje,  DateTime? timestamp,  double? latitud,  double? longitud,  bool validadoFacial,  String fuenteFichaje)?  $default,) {final _that = this;
switch (_that) {
case _Fichaje() when $default != null:
return $default(_that.idFichaje,_that.idEmpleado,_that.empleado,_that.tipoFichaje,_that.timestamp,_that.latitud,_that.longitud,_that.validadoFacial,_that.fuenteFichaje);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Fichaje implements Fichaje {
  const _Fichaje({this.idFichaje, required this.idEmpleado, this.empleado, required this.tipoFichaje, this.timestamp, this.latitud, this.longitud, required this.validadoFacial, required this.fuenteFichaje});
  factory _Fichaje.fromJson(Map<String, dynamic> json) => _$FichajeFromJson(json);

@override final  int? idFichaje;
@override final  int idEmpleado;
@override final  Empleado? empleado;
@override final  String tipoFichaje;
@override final  DateTime? timestamp;
@override final  double? latitud;
@override final  double? longitud;
@override final  bool validadoFacial;
@override final  String fuenteFichaje;

/// Create a copy of Fichaje
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FichajeCopyWith<_Fichaje> get copyWith => __$FichajeCopyWithImpl<_Fichaje>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FichajeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fichaje&&(identical(other.idFichaje, idFichaje) || other.idFichaje == idFichaje)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.empleado, empleado) || other.empleado == empleado)&&(identical(other.tipoFichaje, tipoFichaje) || other.tipoFichaje == tipoFichaje)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.validadoFacial, validadoFacial) || other.validadoFacial == validadoFacial)&&(identical(other.fuenteFichaje, fuenteFichaje) || other.fuenteFichaje == fuenteFichaje));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idFichaje,idEmpleado,empleado,tipoFichaje,timestamp,latitud,longitud,validadoFacial,fuenteFichaje);

@override
String toString() {
  return 'Fichaje(idFichaje: $idFichaje, idEmpleado: $idEmpleado, empleado: $empleado, tipoFichaje: $tipoFichaje, timestamp: $timestamp, latitud: $latitud, longitud: $longitud, validadoFacial: $validadoFacial, fuenteFichaje: $fuenteFichaje)';
}


}

/// @nodoc
abstract mixin class _$FichajeCopyWith<$Res> implements $FichajeCopyWith<$Res> {
  factory _$FichajeCopyWith(_Fichaje value, $Res Function(_Fichaje) _then) = __$FichajeCopyWithImpl;
@override @useResult
$Res call({
 int? idFichaje, int idEmpleado, Empleado? empleado, String tipoFichaje, DateTime? timestamp, double? latitud, double? longitud, bool validadoFacial, String fuenteFichaje
});


@override $EmpleadoCopyWith<$Res>? get empleado;

}
/// @nodoc
class __$FichajeCopyWithImpl<$Res>
    implements _$FichajeCopyWith<$Res> {
  __$FichajeCopyWithImpl(this._self, this._then);

  final _Fichaje _self;
  final $Res Function(_Fichaje) _then;

/// Create a copy of Fichaje
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idFichaje = freezed,Object? idEmpleado = null,Object? empleado = freezed,Object? tipoFichaje = null,Object? timestamp = freezed,Object? latitud = freezed,Object? longitud = freezed,Object? validadoFacial = null,Object? fuenteFichaje = null,}) {
  return _then(_Fichaje(
idFichaje: freezed == idFichaje ? _self.idFichaje : idFichaje // ignore: cast_nullable_to_non_nullable
as int?,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,empleado: freezed == empleado ? _self.empleado : empleado // ignore: cast_nullable_to_non_nullable
as Empleado?,tipoFichaje: null == tipoFichaje ? _self.tipoFichaje : tipoFichaje // ignore: cast_nullable_to_non_nullable
as String,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,latitud: freezed == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double?,longitud: freezed == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double?,validadoFacial: null == validadoFacial ? _self.validadoFacial : validadoFacial // ignore: cast_nullable_to_non_nullable
as bool,fuenteFichaje: null == fuenteFichaje ? _self.fuenteFichaje : fuenteFichaje // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of Fichaje
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpleadoCopyWith<$Res>? get empleado {
    if (_self.empleado == null) {
    return null;
  }

  return $EmpleadoCopyWith<$Res>(_self.empleado!, (value) {
    return _then(_self.copyWith(empleado: value));
  });
}
}

// dart format on

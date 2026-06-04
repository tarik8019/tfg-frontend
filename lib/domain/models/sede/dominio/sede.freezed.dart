// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sede.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Sede {

 int? get idSede; String get nombre; String? get direccion; double? get latitud; double? get longitud; int? get radioGeofencing;
/// Create a copy of Sede
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SedeCopyWith<Sede> get copyWith => _$SedeCopyWithImpl<Sede>(this as Sede, _$identity);

  /// Serializes this Sede to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sede&&(identical(other.idSede, idSede) || other.idSede == idSede)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.radioGeofencing, radioGeofencing) || other.radioGeofencing == radioGeofencing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idSede,nombre,direccion,latitud,longitud,radioGeofencing);

@override
String toString() {
  return 'Sede(idSede: $idSede, nombre: $nombre, direccion: $direccion, latitud: $latitud, longitud: $longitud, radioGeofencing: $radioGeofencing)';
}


}

/// @nodoc
abstract mixin class $SedeCopyWith<$Res>  {
  factory $SedeCopyWith(Sede value, $Res Function(Sede) _then) = _$SedeCopyWithImpl;
@useResult
$Res call({
 int? idSede, String nombre, String? direccion, double? latitud, double? longitud, int? radioGeofencing
});




}
/// @nodoc
class _$SedeCopyWithImpl<$Res>
    implements $SedeCopyWith<$Res> {
  _$SedeCopyWithImpl(this._self, this._then);

  final Sede _self;
  final $Res Function(Sede) _then;

/// Create a copy of Sede
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idSede = freezed,Object? nombre = null,Object? direccion = freezed,Object? latitud = freezed,Object? longitud = freezed,Object? radioGeofencing = freezed,}) {
  return _then(_self.copyWith(
idSede: freezed == idSede ? _self.idSede : idSede // ignore: cast_nullable_to_non_nullable
as int?,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,direccion: freezed == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String?,latitud: freezed == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double?,longitud: freezed == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double?,radioGeofencing: freezed == radioGeofencing ? _self.radioGeofencing : radioGeofencing // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Sede].
extension SedePatterns on Sede {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sede value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sede() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sede value)  $default,){
final _that = this;
switch (_that) {
case _Sede():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sede value)?  $default,){
final _that = this;
switch (_that) {
case _Sede() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idSede,  String nombre,  String? direccion,  double? latitud,  double? longitud,  int? radioGeofencing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Sede() when $default != null:
return $default(_that.idSede,_that.nombre,_that.direccion,_that.latitud,_that.longitud,_that.radioGeofencing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idSede,  String nombre,  String? direccion,  double? latitud,  double? longitud,  int? radioGeofencing)  $default,) {final _that = this;
switch (_that) {
case _Sede():
return $default(_that.idSede,_that.nombre,_that.direccion,_that.latitud,_that.longitud,_that.radioGeofencing);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idSede,  String nombre,  String? direccion,  double? latitud,  double? longitud,  int? radioGeofencing)?  $default,) {final _that = this;
switch (_that) {
case _Sede() when $default != null:
return $default(_that.idSede,_that.nombre,_that.direccion,_that.latitud,_that.longitud,_that.radioGeofencing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Sede implements Sede {
  const _Sede({this.idSede, required this.nombre, this.direccion, this.latitud, this.longitud, this.radioGeofencing});
  factory _Sede.fromJson(Map<String, dynamic> json) => _$SedeFromJson(json);

@override final  int? idSede;
@override final  String nombre;
@override final  String? direccion;
@override final  double? latitud;
@override final  double? longitud;
@override final  int? radioGeofencing;

/// Create a copy of Sede
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SedeCopyWith<_Sede> get copyWith => __$SedeCopyWithImpl<_Sede>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SedeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sede&&(identical(other.idSede, idSede) || other.idSede == idSede)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.radioGeofencing, radioGeofencing) || other.radioGeofencing == radioGeofencing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idSede,nombre,direccion,latitud,longitud,radioGeofencing);

@override
String toString() {
  return 'Sede(idSede: $idSede, nombre: $nombre, direccion: $direccion, latitud: $latitud, longitud: $longitud, radioGeofencing: $radioGeofencing)';
}


}

/// @nodoc
abstract mixin class _$SedeCopyWith<$Res> implements $SedeCopyWith<$Res> {
  factory _$SedeCopyWith(_Sede value, $Res Function(_Sede) _then) = __$SedeCopyWithImpl;
@override @useResult
$Res call({
 int? idSede, String nombre, String? direccion, double? latitud, double? longitud, int? radioGeofencing
});




}
/// @nodoc
class __$SedeCopyWithImpl<$Res>
    implements _$SedeCopyWith<$Res> {
  __$SedeCopyWithImpl(this._self, this._then);

  final _Sede _self;
  final $Res Function(_Sede) _then;

/// Create a copy of Sede
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idSede = freezed,Object? nombre = null,Object? direccion = freezed,Object? latitud = freezed,Object? longitud = freezed,Object? radioGeofencing = freezed,}) {
  return _then(_Sede(
idSede: freezed == idSede ? _self.idSede : idSede // ignore: cast_nullable_to_non_nullable
as int?,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,direccion: freezed == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String?,latitud: freezed == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double?,longitud: freezed == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double?,radioGeofencing: freezed == radioGeofencing ? _self.radioGeofencing : radioGeofencing // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

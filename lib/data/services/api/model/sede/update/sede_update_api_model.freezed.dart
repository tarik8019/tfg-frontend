// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sede_update_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SedeUpdateApiModel {

 int get idSede; String get nombre; String? get direccion; double? get latitud; double? get longitud; int? get radioGeofencing;
/// Create a copy of SedeUpdateApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SedeUpdateApiModelCopyWith<SedeUpdateApiModel> get copyWith => _$SedeUpdateApiModelCopyWithImpl<SedeUpdateApiModel>(this as SedeUpdateApiModel, _$identity);

  /// Serializes this SedeUpdateApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SedeUpdateApiModel&&(identical(other.idSede, idSede) || other.idSede == idSede)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.radioGeofencing, radioGeofencing) || other.radioGeofencing == radioGeofencing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idSede,nombre,direccion,latitud,longitud,radioGeofencing);

@override
String toString() {
  return 'SedeUpdateApiModel(idSede: $idSede, nombre: $nombre, direccion: $direccion, latitud: $latitud, longitud: $longitud, radioGeofencing: $radioGeofencing)';
}


}

/// @nodoc
abstract mixin class $SedeUpdateApiModelCopyWith<$Res>  {
  factory $SedeUpdateApiModelCopyWith(SedeUpdateApiModel value, $Res Function(SedeUpdateApiModel) _then) = _$SedeUpdateApiModelCopyWithImpl;
@useResult
$Res call({
 int idSede, String nombre, String? direccion, double? latitud, double? longitud, int? radioGeofencing
});




}
/// @nodoc
class _$SedeUpdateApiModelCopyWithImpl<$Res>
    implements $SedeUpdateApiModelCopyWith<$Res> {
  _$SedeUpdateApiModelCopyWithImpl(this._self, this._then);

  final SedeUpdateApiModel _self;
  final $Res Function(SedeUpdateApiModel) _then;

/// Create a copy of SedeUpdateApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idSede = null,Object? nombre = null,Object? direccion = freezed,Object? latitud = freezed,Object? longitud = freezed,Object? radioGeofencing = freezed,}) {
  return _then(_self.copyWith(
idSede: null == idSede ? _self.idSede : idSede // ignore: cast_nullable_to_non_nullable
as int,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,direccion: freezed == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String?,latitud: freezed == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double?,longitud: freezed == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double?,radioGeofencing: freezed == radioGeofencing ? _self.radioGeofencing : radioGeofencing // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SedeUpdateApiModel].
extension SedeUpdateApiModelPatterns on SedeUpdateApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SedeUpdateApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SedeUpdateApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SedeUpdateApiModel value)  $default,){
final _that = this;
switch (_that) {
case _SedeUpdateApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SedeUpdateApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _SedeUpdateApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int idSede,  String nombre,  String? direccion,  double? latitud,  double? longitud,  int? radioGeofencing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SedeUpdateApiModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int idSede,  String nombre,  String? direccion,  double? latitud,  double? longitud,  int? radioGeofencing)  $default,) {final _that = this;
switch (_that) {
case _SedeUpdateApiModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int idSede,  String nombre,  String? direccion,  double? latitud,  double? longitud,  int? radioGeofencing)?  $default,) {final _that = this;
switch (_that) {
case _SedeUpdateApiModel() when $default != null:
return $default(_that.idSede,_that.nombre,_that.direccion,_that.latitud,_that.longitud,_that.radioGeofencing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SedeUpdateApiModel implements SedeUpdateApiModel {
  const _SedeUpdateApiModel({required this.idSede, required this.nombre, this.direccion, this.latitud, this.longitud, this.radioGeofencing});
  factory _SedeUpdateApiModel.fromJson(Map<String, dynamic> json) => _$SedeUpdateApiModelFromJson(json);

@override final  int idSede;
@override final  String nombre;
@override final  String? direccion;
@override final  double? latitud;
@override final  double? longitud;
@override final  int? radioGeofencing;

/// Create a copy of SedeUpdateApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SedeUpdateApiModelCopyWith<_SedeUpdateApiModel> get copyWith => __$SedeUpdateApiModelCopyWithImpl<_SedeUpdateApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SedeUpdateApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SedeUpdateApiModel&&(identical(other.idSede, idSede) || other.idSede == idSede)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.radioGeofencing, radioGeofencing) || other.radioGeofencing == radioGeofencing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idSede,nombre,direccion,latitud,longitud,radioGeofencing);

@override
String toString() {
  return 'SedeUpdateApiModel(idSede: $idSede, nombre: $nombre, direccion: $direccion, latitud: $latitud, longitud: $longitud, radioGeofencing: $radioGeofencing)';
}


}

/// @nodoc
abstract mixin class _$SedeUpdateApiModelCopyWith<$Res> implements $SedeUpdateApiModelCopyWith<$Res> {
  factory _$SedeUpdateApiModelCopyWith(_SedeUpdateApiModel value, $Res Function(_SedeUpdateApiModel) _then) = __$SedeUpdateApiModelCopyWithImpl;
@override @useResult
$Res call({
 int idSede, String nombre, String? direccion, double? latitud, double? longitud, int? radioGeofencing
});




}
/// @nodoc
class __$SedeUpdateApiModelCopyWithImpl<$Res>
    implements _$SedeUpdateApiModelCopyWith<$Res> {
  __$SedeUpdateApiModelCopyWithImpl(this._self, this._then);

  final _SedeUpdateApiModel _self;
  final $Res Function(_SedeUpdateApiModel) _then;

/// Create a copy of SedeUpdateApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idSede = null,Object? nombre = null,Object? direccion = freezed,Object? latitud = freezed,Object? longitud = freezed,Object? radioGeofencing = freezed,}) {
  return _then(_SedeUpdateApiModel(
idSede: null == idSede ? _self.idSede : idSede // ignore: cast_nullable_to_non_nullable
as int,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,direccion: freezed == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String?,latitud: freezed == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double?,longitud: freezed == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double?,radioGeofencing: freezed == radioGeofencing ? _self.radioGeofencing : radioGeofencing // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

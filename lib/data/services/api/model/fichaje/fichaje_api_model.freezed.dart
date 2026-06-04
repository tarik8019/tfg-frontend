// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fichaje_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FichajeApiModel {

 int? get idFichaje; int? get idEmpleado; String? get nombre; String? get apellidos; String? get tipoFichaje; DateTime? get timestamp; double? get latitud; double? get longitud; bool? get validadoFacial; String? get fuenteFichaje;
/// Create a copy of FichajeApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FichajeApiModelCopyWith<FichajeApiModel> get copyWith => _$FichajeApiModelCopyWithImpl<FichajeApiModel>(this as FichajeApiModel, _$identity);

  /// Serializes this FichajeApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FichajeApiModel&&(identical(other.idFichaje, idFichaje) || other.idFichaje == idFichaje)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellidos, apellidos) || other.apellidos == apellidos)&&(identical(other.tipoFichaje, tipoFichaje) || other.tipoFichaje == tipoFichaje)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.validadoFacial, validadoFacial) || other.validadoFacial == validadoFacial)&&(identical(other.fuenteFichaje, fuenteFichaje) || other.fuenteFichaje == fuenteFichaje));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idFichaje,idEmpleado,nombre,apellidos,tipoFichaje,timestamp,latitud,longitud,validadoFacial,fuenteFichaje);

@override
String toString() {
  return 'FichajeApiModel(idFichaje: $idFichaje, idEmpleado: $idEmpleado, nombre: $nombre, apellidos: $apellidos, tipoFichaje: $tipoFichaje, timestamp: $timestamp, latitud: $latitud, longitud: $longitud, validadoFacial: $validadoFacial, fuenteFichaje: $fuenteFichaje)';
}


}

/// @nodoc
abstract mixin class $FichajeApiModelCopyWith<$Res>  {
  factory $FichajeApiModelCopyWith(FichajeApiModel value, $Res Function(FichajeApiModel) _then) = _$FichajeApiModelCopyWithImpl;
@useResult
$Res call({
 int? idFichaje, int? idEmpleado, String? nombre, String? apellidos, String? tipoFichaje, DateTime? timestamp, double? latitud, double? longitud, bool? validadoFacial, String? fuenteFichaje
});




}
/// @nodoc
class _$FichajeApiModelCopyWithImpl<$Res>
    implements $FichajeApiModelCopyWith<$Res> {
  _$FichajeApiModelCopyWithImpl(this._self, this._then);

  final FichajeApiModel _self;
  final $Res Function(FichajeApiModel) _then;

/// Create a copy of FichajeApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idFichaje = freezed,Object? idEmpleado = freezed,Object? nombre = freezed,Object? apellidos = freezed,Object? tipoFichaje = freezed,Object? timestamp = freezed,Object? latitud = freezed,Object? longitud = freezed,Object? validadoFacial = freezed,Object? fuenteFichaje = freezed,}) {
  return _then(_self.copyWith(
idFichaje: freezed == idFichaje ? _self.idFichaje : idFichaje // ignore: cast_nullable_to_non_nullable
as int?,idEmpleado: freezed == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,apellidos: freezed == apellidos ? _self.apellidos : apellidos // ignore: cast_nullable_to_non_nullable
as String?,tipoFichaje: freezed == tipoFichaje ? _self.tipoFichaje : tipoFichaje // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,latitud: freezed == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double?,longitud: freezed == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double?,validadoFacial: freezed == validadoFacial ? _self.validadoFacial : validadoFacial // ignore: cast_nullable_to_non_nullable
as bool?,fuenteFichaje: freezed == fuenteFichaje ? _self.fuenteFichaje : fuenteFichaje // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FichajeApiModel].
extension FichajeApiModelPatterns on FichajeApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FichajeApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FichajeApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FichajeApiModel value)  $default,){
final _that = this;
switch (_that) {
case _FichajeApiModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FichajeApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _FichajeApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idFichaje,  int? idEmpleado,  String? nombre,  String? apellidos,  String? tipoFichaje,  DateTime? timestamp,  double? latitud,  double? longitud,  bool? validadoFacial,  String? fuenteFichaje)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FichajeApiModel() when $default != null:
return $default(_that.idFichaje,_that.idEmpleado,_that.nombre,_that.apellidos,_that.tipoFichaje,_that.timestamp,_that.latitud,_that.longitud,_that.validadoFacial,_that.fuenteFichaje);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idFichaje,  int? idEmpleado,  String? nombre,  String? apellidos,  String? tipoFichaje,  DateTime? timestamp,  double? latitud,  double? longitud,  bool? validadoFacial,  String? fuenteFichaje)  $default,) {final _that = this;
switch (_that) {
case _FichajeApiModel():
return $default(_that.idFichaje,_that.idEmpleado,_that.nombre,_that.apellidos,_that.tipoFichaje,_that.timestamp,_that.latitud,_that.longitud,_that.validadoFacial,_that.fuenteFichaje);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idFichaje,  int? idEmpleado,  String? nombre,  String? apellidos,  String? tipoFichaje,  DateTime? timestamp,  double? latitud,  double? longitud,  bool? validadoFacial,  String? fuenteFichaje)?  $default,) {final _that = this;
switch (_that) {
case _FichajeApiModel() when $default != null:
return $default(_that.idFichaje,_that.idEmpleado,_that.nombre,_that.apellidos,_that.tipoFichaje,_that.timestamp,_that.latitud,_that.longitud,_that.validadoFacial,_that.fuenteFichaje);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FichajeApiModel implements FichajeApiModel {
  const _FichajeApiModel({this.idFichaje, this.idEmpleado, this.nombre, this.apellidos, this.tipoFichaje, this.timestamp, this.latitud, this.longitud, this.validadoFacial, this.fuenteFichaje});
  factory _FichajeApiModel.fromJson(Map<String, dynamic> json) => _$FichajeApiModelFromJson(json);

@override final  int? idFichaje;
@override final  int? idEmpleado;
@override final  String? nombre;
@override final  String? apellidos;
@override final  String? tipoFichaje;
@override final  DateTime? timestamp;
@override final  double? latitud;
@override final  double? longitud;
@override final  bool? validadoFacial;
@override final  String? fuenteFichaje;

/// Create a copy of FichajeApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FichajeApiModelCopyWith<_FichajeApiModel> get copyWith => __$FichajeApiModelCopyWithImpl<_FichajeApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FichajeApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FichajeApiModel&&(identical(other.idFichaje, idFichaje) || other.idFichaje == idFichaje)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellidos, apellidos) || other.apellidos == apellidos)&&(identical(other.tipoFichaje, tipoFichaje) || other.tipoFichaje == tipoFichaje)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.validadoFacial, validadoFacial) || other.validadoFacial == validadoFacial)&&(identical(other.fuenteFichaje, fuenteFichaje) || other.fuenteFichaje == fuenteFichaje));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idFichaje,idEmpleado,nombre,apellidos,tipoFichaje,timestamp,latitud,longitud,validadoFacial,fuenteFichaje);

@override
String toString() {
  return 'FichajeApiModel(idFichaje: $idFichaje, idEmpleado: $idEmpleado, nombre: $nombre, apellidos: $apellidos, tipoFichaje: $tipoFichaje, timestamp: $timestamp, latitud: $latitud, longitud: $longitud, validadoFacial: $validadoFacial, fuenteFichaje: $fuenteFichaje)';
}


}

/// @nodoc
abstract mixin class _$FichajeApiModelCopyWith<$Res> implements $FichajeApiModelCopyWith<$Res> {
  factory _$FichajeApiModelCopyWith(_FichajeApiModel value, $Res Function(_FichajeApiModel) _then) = __$FichajeApiModelCopyWithImpl;
@override @useResult
$Res call({
 int? idFichaje, int? idEmpleado, String? nombre, String? apellidos, String? tipoFichaje, DateTime? timestamp, double? latitud, double? longitud, bool? validadoFacial, String? fuenteFichaje
});




}
/// @nodoc
class __$FichajeApiModelCopyWithImpl<$Res>
    implements _$FichajeApiModelCopyWith<$Res> {
  __$FichajeApiModelCopyWithImpl(this._self, this._then);

  final _FichajeApiModel _self;
  final $Res Function(_FichajeApiModel) _then;

/// Create a copy of FichajeApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idFichaje = freezed,Object? idEmpleado = freezed,Object? nombre = freezed,Object? apellidos = freezed,Object? tipoFichaje = freezed,Object? timestamp = freezed,Object? latitud = freezed,Object? longitud = freezed,Object? validadoFacial = freezed,Object? fuenteFichaje = freezed,}) {
  return _then(_FichajeApiModel(
idFichaje: freezed == idFichaje ? _self.idFichaje : idFichaje // ignore: cast_nullable_to_non_nullable
as int?,idEmpleado: freezed == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,apellidos: freezed == apellidos ? _self.apellidos : apellidos // ignore: cast_nullable_to_non_nullable
as String?,tipoFichaje: freezed == tipoFichaje ? _self.tipoFichaje : tipoFichaje // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,latitud: freezed == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double?,longitud: freezed == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double?,validadoFacial: freezed == validadoFacial ? _self.validadoFacial : validadoFacial // ignore: cast_nullable_to_non_nullable
as bool?,fuenteFichaje: freezed == fuenteFichaje ? _self.fuenteFichaje : fuenteFichaje // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

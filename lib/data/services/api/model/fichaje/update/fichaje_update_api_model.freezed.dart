// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fichaje_update_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FichajeUpdateApiModel {

 int get idFichaje; int get idEmpleado; String get tipoFichaje; DateTime get timestamp; double? get latitud; double? get longitud; bool get validadoFacial; String get fuenteFichaje;
/// Create a copy of FichajeUpdateApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FichajeUpdateApiModelCopyWith<FichajeUpdateApiModel> get copyWith => _$FichajeUpdateApiModelCopyWithImpl<FichajeUpdateApiModel>(this as FichajeUpdateApiModel, _$identity);

  /// Serializes this FichajeUpdateApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FichajeUpdateApiModel&&(identical(other.idFichaje, idFichaje) || other.idFichaje == idFichaje)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.tipoFichaje, tipoFichaje) || other.tipoFichaje == tipoFichaje)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.validadoFacial, validadoFacial) || other.validadoFacial == validadoFacial)&&(identical(other.fuenteFichaje, fuenteFichaje) || other.fuenteFichaje == fuenteFichaje));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idFichaje,idEmpleado,tipoFichaje,timestamp,latitud,longitud,validadoFacial,fuenteFichaje);

@override
String toString() {
  return 'FichajeUpdateApiModel(idFichaje: $idFichaje, idEmpleado: $idEmpleado, tipoFichaje: $tipoFichaje, timestamp: $timestamp, latitud: $latitud, longitud: $longitud, validadoFacial: $validadoFacial, fuenteFichaje: $fuenteFichaje)';
}


}

/// @nodoc
abstract mixin class $FichajeUpdateApiModelCopyWith<$Res>  {
  factory $FichajeUpdateApiModelCopyWith(FichajeUpdateApiModel value, $Res Function(FichajeUpdateApiModel) _then) = _$FichajeUpdateApiModelCopyWithImpl;
@useResult
$Res call({
 int idFichaje, int idEmpleado, String tipoFichaje, DateTime timestamp, double? latitud, double? longitud, bool validadoFacial, String fuenteFichaje
});




}
/// @nodoc
class _$FichajeUpdateApiModelCopyWithImpl<$Res>
    implements $FichajeUpdateApiModelCopyWith<$Res> {
  _$FichajeUpdateApiModelCopyWithImpl(this._self, this._then);

  final FichajeUpdateApiModel _self;
  final $Res Function(FichajeUpdateApiModel) _then;

/// Create a copy of FichajeUpdateApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idFichaje = null,Object? idEmpleado = null,Object? tipoFichaje = null,Object? timestamp = null,Object? latitud = freezed,Object? longitud = freezed,Object? validadoFacial = null,Object? fuenteFichaje = null,}) {
  return _then(_self.copyWith(
idFichaje: null == idFichaje ? _self.idFichaje : idFichaje // ignore: cast_nullable_to_non_nullable
as int,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,tipoFichaje: null == tipoFichaje ? _self.tipoFichaje : tipoFichaje // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,latitud: freezed == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double?,longitud: freezed == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double?,validadoFacial: null == validadoFacial ? _self.validadoFacial : validadoFacial // ignore: cast_nullable_to_non_nullable
as bool,fuenteFichaje: null == fuenteFichaje ? _self.fuenteFichaje : fuenteFichaje // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FichajeUpdateApiModel].
extension FichajeUpdateApiModelPatterns on FichajeUpdateApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FichajeUpdateApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FichajeUpdateApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FichajeUpdateApiModel value)  $default,){
final _that = this;
switch (_that) {
case _FichajeUpdateApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FichajeUpdateApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _FichajeUpdateApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int idFichaje,  int idEmpleado,  String tipoFichaje,  DateTime timestamp,  double? latitud,  double? longitud,  bool validadoFacial,  String fuenteFichaje)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FichajeUpdateApiModel() when $default != null:
return $default(_that.idFichaje,_that.idEmpleado,_that.tipoFichaje,_that.timestamp,_that.latitud,_that.longitud,_that.validadoFacial,_that.fuenteFichaje);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int idFichaje,  int idEmpleado,  String tipoFichaje,  DateTime timestamp,  double? latitud,  double? longitud,  bool validadoFacial,  String fuenteFichaje)  $default,) {final _that = this;
switch (_that) {
case _FichajeUpdateApiModel():
return $default(_that.idFichaje,_that.idEmpleado,_that.tipoFichaje,_that.timestamp,_that.latitud,_that.longitud,_that.validadoFacial,_that.fuenteFichaje);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int idFichaje,  int idEmpleado,  String tipoFichaje,  DateTime timestamp,  double? latitud,  double? longitud,  bool validadoFacial,  String fuenteFichaje)?  $default,) {final _that = this;
switch (_that) {
case _FichajeUpdateApiModel() when $default != null:
return $default(_that.idFichaje,_that.idEmpleado,_that.tipoFichaje,_that.timestamp,_that.latitud,_that.longitud,_that.validadoFacial,_that.fuenteFichaje);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FichajeUpdateApiModel implements FichajeUpdateApiModel {
  const _FichajeUpdateApiModel({required this.idFichaje, required this.idEmpleado, required this.tipoFichaje, required this.timestamp, this.latitud, this.longitud, required this.validadoFacial, required this.fuenteFichaje});
  factory _FichajeUpdateApiModel.fromJson(Map<String, dynamic> json) => _$FichajeUpdateApiModelFromJson(json);

@override final  int idFichaje;
@override final  int idEmpleado;
@override final  String tipoFichaje;
@override final  DateTime timestamp;
@override final  double? latitud;
@override final  double? longitud;
@override final  bool validadoFacial;
@override final  String fuenteFichaje;

/// Create a copy of FichajeUpdateApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FichajeUpdateApiModelCopyWith<_FichajeUpdateApiModel> get copyWith => __$FichajeUpdateApiModelCopyWithImpl<_FichajeUpdateApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FichajeUpdateApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FichajeUpdateApiModel&&(identical(other.idFichaje, idFichaje) || other.idFichaje == idFichaje)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.tipoFichaje, tipoFichaje) || other.tipoFichaje == tipoFichaje)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.validadoFacial, validadoFacial) || other.validadoFacial == validadoFacial)&&(identical(other.fuenteFichaje, fuenteFichaje) || other.fuenteFichaje == fuenteFichaje));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idFichaje,idEmpleado,tipoFichaje,timestamp,latitud,longitud,validadoFacial,fuenteFichaje);

@override
String toString() {
  return 'FichajeUpdateApiModel(idFichaje: $idFichaje, idEmpleado: $idEmpleado, tipoFichaje: $tipoFichaje, timestamp: $timestamp, latitud: $latitud, longitud: $longitud, validadoFacial: $validadoFacial, fuenteFichaje: $fuenteFichaje)';
}


}

/// @nodoc
abstract mixin class _$FichajeUpdateApiModelCopyWith<$Res> implements $FichajeUpdateApiModelCopyWith<$Res> {
  factory _$FichajeUpdateApiModelCopyWith(_FichajeUpdateApiModel value, $Res Function(_FichajeUpdateApiModel) _then) = __$FichajeUpdateApiModelCopyWithImpl;
@override @useResult
$Res call({
 int idFichaje, int idEmpleado, String tipoFichaje, DateTime timestamp, double? latitud, double? longitud, bool validadoFacial, String fuenteFichaje
});




}
/// @nodoc
class __$FichajeUpdateApiModelCopyWithImpl<$Res>
    implements _$FichajeUpdateApiModelCopyWith<$Res> {
  __$FichajeUpdateApiModelCopyWithImpl(this._self, this._then);

  final _FichajeUpdateApiModel _self;
  final $Res Function(_FichajeUpdateApiModel) _then;

/// Create a copy of FichajeUpdateApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idFichaje = null,Object? idEmpleado = null,Object? tipoFichaje = null,Object? timestamp = null,Object? latitud = freezed,Object? longitud = freezed,Object? validadoFacial = null,Object? fuenteFichaje = null,}) {
  return _then(_FichajeUpdateApiModel(
idFichaje: null == idFichaje ? _self.idFichaje : idFichaje // ignore: cast_nullable_to_non_nullable
as int,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,tipoFichaje: null == tipoFichaje ? _self.tipoFichaje : tipoFichaje // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,latitud: freezed == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double?,longitud: freezed == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double?,validadoFacial: null == validadoFacial ? _self.validadoFacial : validadoFacial // ignore: cast_nullable_to_non_nullable
as bool,fuenteFichaje: null == fuenteFichaje ? _self.fuenteFichaje : fuenteFichaje // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

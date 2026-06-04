// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'turno_update_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TurnoUpdateApiModel {

 int get idTurno; int get idSede; String get nombre; bool get esNocturno; DateTime get fecha; String get horaInicio; String get horaFin;
/// Create a copy of TurnoUpdateApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TurnoUpdateApiModelCopyWith<TurnoUpdateApiModel> get copyWith => _$TurnoUpdateApiModelCopyWithImpl<TurnoUpdateApiModel>(this as TurnoUpdateApiModel, _$identity);

  /// Serializes this TurnoUpdateApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TurnoUpdateApiModel&&(identical(other.idTurno, idTurno) || other.idTurno == idTurno)&&(identical(other.idSede, idSede) || other.idSede == idSede)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.esNocturno, esNocturno) || other.esNocturno == esNocturno)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.horaInicio, horaInicio) || other.horaInicio == horaInicio)&&(identical(other.horaFin, horaFin) || other.horaFin == horaFin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idTurno,idSede,nombre,esNocturno,fecha,horaInicio,horaFin);

@override
String toString() {
  return 'TurnoUpdateApiModel(idTurno: $idTurno, idSede: $idSede, nombre: $nombre, esNocturno: $esNocturno, fecha: $fecha, horaInicio: $horaInicio, horaFin: $horaFin)';
}


}

/// @nodoc
abstract mixin class $TurnoUpdateApiModelCopyWith<$Res>  {
  factory $TurnoUpdateApiModelCopyWith(TurnoUpdateApiModel value, $Res Function(TurnoUpdateApiModel) _then) = _$TurnoUpdateApiModelCopyWithImpl;
@useResult
$Res call({
 int idTurno, int idSede, String nombre, bool esNocturno, DateTime fecha, String horaInicio, String horaFin
});




}
/// @nodoc
class _$TurnoUpdateApiModelCopyWithImpl<$Res>
    implements $TurnoUpdateApiModelCopyWith<$Res> {
  _$TurnoUpdateApiModelCopyWithImpl(this._self, this._then);

  final TurnoUpdateApiModel _self;
  final $Res Function(TurnoUpdateApiModel) _then;

/// Create a copy of TurnoUpdateApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idTurno = null,Object? idSede = null,Object? nombre = null,Object? esNocturno = null,Object? fecha = null,Object? horaInicio = null,Object? horaFin = null,}) {
  return _then(_self.copyWith(
idTurno: null == idTurno ? _self.idTurno : idTurno // ignore: cast_nullable_to_non_nullable
as int,idSede: null == idSede ? _self.idSede : idSede // ignore: cast_nullable_to_non_nullable
as int,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,esNocturno: null == esNocturno ? _self.esNocturno : esNocturno // ignore: cast_nullable_to_non_nullable
as bool,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,horaInicio: null == horaInicio ? _self.horaInicio : horaInicio // ignore: cast_nullable_to_non_nullable
as String,horaFin: null == horaFin ? _self.horaFin : horaFin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TurnoUpdateApiModel].
extension TurnoUpdateApiModelPatterns on TurnoUpdateApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TurnoUpdateApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TurnoUpdateApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TurnoUpdateApiModel value)  $default,){
final _that = this;
switch (_that) {
case _TurnoUpdateApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TurnoUpdateApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _TurnoUpdateApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int idTurno,  int idSede,  String nombre,  bool esNocturno,  DateTime fecha,  String horaInicio,  String horaFin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TurnoUpdateApiModel() when $default != null:
return $default(_that.idTurno,_that.idSede,_that.nombre,_that.esNocturno,_that.fecha,_that.horaInicio,_that.horaFin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int idTurno,  int idSede,  String nombre,  bool esNocturno,  DateTime fecha,  String horaInicio,  String horaFin)  $default,) {final _that = this;
switch (_that) {
case _TurnoUpdateApiModel():
return $default(_that.idTurno,_that.idSede,_that.nombre,_that.esNocturno,_that.fecha,_that.horaInicio,_that.horaFin);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int idTurno,  int idSede,  String nombre,  bool esNocturno,  DateTime fecha,  String horaInicio,  String horaFin)?  $default,) {final _that = this;
switch (_that) {
case _TurnoUpdateApiModel() when $default != null:
return $default(_that.idTurno,_that.idSede,_that.nombre,_that.esNocturno,_that.fecha,_that.horaInicio,_that.horaFin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TurnoUpdateApiModel implements TurnoUpdateApiModel {
  const _TurnoUpdateApiModel({required this.idTurno, required this.idSede, required this.nombre, required this.esNocturno, required this.fecha, required this.horaInicio, required this.horaFin});
  factory _TurnoUpdateApiModel.fromJson(Map<String, dynamic> json) => _$TurnoUpdateApiModelFromJson(json);

@override final  int idTurno;
@override final  int idSede;
@override final  String nombre;
@override final  bool esNocturno;
@override final  DateTime fecha;
@override final  String horaInicio;
@override final  String horaFin;

/// Create a copy of TurnoUpdateApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TurnoUpdateApiModelCopyWith<_TurnoUpdateApiModel> get copyWith => __$TurnoUpdateApiModelCopyWithImpl<_TurnoUpdateApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TurnoUpdateApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TurnoUpdateApiModel&&(identical(other.idTurno, idTurno) || other.idTurno == idTurno)&&(identical(other.idSede, idSede) || other.idSede == idSede)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.esNocturno, esNocturno) || other.esNocturno == esNocturno)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.horaInicio, horaInicio) || other.horaInicio == horaInicio)&&(identical(other.horaFin, horaFin) || other.horaFin == horaFin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idTurno,idSede,nombre,esNocturno,fecha,horaInicio,horaFin);

@override
String toString() {
  return 'TurnoUpdateApiModel(idTurno: $idTurno, idSede: $idSede, nombre: $nombre, esNocturno: $esNocturno, fecha: $fecha, horaInicio: $horaInicio, horaFin: $horaFin)';
}


}

/// @nodoc
abstract mixin class _$TurnoUpdateApiModelCopyWith<$Res> implements $TurnoUpdateApiModelCopyWith<$Res> {
  factory _$TurnoUpdateApiModelCopyWith(_TurnoUpdateApiModel value, $Res Function(_TurnoUpdateApiModel) _then) = __$TurnoUpdateApiModelCopyWithImpl;
@override @useResult
$Res call({
 int idTurno, int idSede, String nombre, bool esNocturno, DateTime fecha, String horaInicio, String horaFin
});




}
/// @nodoc
class __$TurnoUpdateApiModelCopyWithImpl<$Res>
    implements _$TurnoUpdateApiModelCopyWith<$Res> {
  __$TurnoUpdateApiModelCopyWithImpl(this._self, this._then);

  final _TurnoUpdateApiModel _self;
  final $Res Function(_TurnoUpdateApiModel) _then;

/// Create a copy of TurnoUpdateApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idTurno = null,Object? idSede = null,Object? nombre = null,Object? esNocturno = null,Object? fecha = null,Object? horaInicio = null,Object? horaFin = null,}) {
  return _then(_TurnoUpdateApiModel(
idTurno: null == idTurno ? _self.idTurno : idTurno // ignore: cast_nullable_to_non_nullable
as int,idSede: null == idSede ? _self.idSede : idSede // ignore: cast_nullable_to_non_nullable
as int,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,esNocturno: null == esNocturno ? _self.esNocturno : esNocturno // ignore: cast_nullable_to_non_nullable
as bool,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,horaInicio: null == horaInicio ? _self.horaInicio : horaInicio // ignore: cast_nullable_to_non_nullable
as String,horaFin: null == horaFin ? _self.horaFin : horaFin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

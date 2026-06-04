// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'turno_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TurnoApiModel {

 int? get idTurno; int? get idSede; SedeApiModel? get sede; String? get nombre; bool? get esNocturno; DateTime? get fecha; String? get horaInicio; String? get horaFin;
/// Create a copy of TurnoApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TurnoApiModelCopyWith<TurnoApiModel> get copyWith => _$TurnoApiModelCopyWithImpl<TurnoApiModel>(this as TurnoApiModel, _$identity);

  /// Serializes this TurnoApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TurnoApiModel&&(identical(other.idTurno, idTurno) || other.idTurno == idTurno)&&(identical(other.idSede, idSede) || other.idSede == idSede)&&(identical(other.sede, sede) || other.sede == sede)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.esNocturno, esNocturno) || other.esNocturno == esNocturno)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.horaInicio, horaInicio) || other.horaInicio == horaInicio)&&(identical(other.horaFin, horaFin) || other.horaFin == horaFin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idTurno,idSede,sede,nombre,esNocturno,fecha,horaInicio,horaFin);

@override
String toString() {
  return 'TurnoApiModel(idTurno: $idTurno, idSede: $idSede, sede: $sede, nombre: $nombre, esNocturno: $esNocturno, fecha: $fecha, horaInicio: $horaInicio, horaFin: $horaFin)';
}


}

/// @nodoc
abstract mixin class $TurnoApiModelCopyWith<$Res>  {
  factory $TurnoApiModelCopyWith(TurnoApiModel value, $Res Function(TurnoApiModel) _then) = _$TurnoApiModelCopyWithImpl;
@useResult
$Res call({
 int? idTurno, int? idSede, SedeApiModel? sede, String? nombre, bool? esNocturno, DateTime? fecha, String? horaInicio, String? horaFin
});


$SedeApiModelCopyWith<$Res>? get sede;

}
/// @nodoc
class _$TurnoApiModelCopyWithImpl<$Res>
    implements $TurnoApiModelCopyWith<$Res> {
  _$TurnoApiModelCopyWithImpl(this._self, this._then);

  final TurnoApiModel _self;
  final $Res Function(TurnoApiModel) _then;

/// Create a copy of TurnoApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idTurno = freezed,Object? idSede = freezed,Object? sede = freezed,Object? nombre = freezed,Object? esNocturno = freezed,Object? fecha = freezed,Object? horaInicio = freezed,Object? horaFin = freezed,}) {
  return _then(_self.copyWith(
idTurno: freezed == idTurno ? _self.idTurno : idTurno // ignore: cast_nullable_to_non_nullable
as int?,idSede: freezed == idSede ? _self.idSede : idSede // ignore: cast_nullable_to_non_nullable
as int?,sede: freezed == sede ? _self.sede : sede // ignore: cast_nullable_to_non_nullable
as SedeApiModel?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,esNocturno: freezed == esNocturno ? _self.esNocturno : esNocturno // ignore: cast_nullable_to_non_nullable
as bool?,fecha: freezed == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime?,horaInicio: freezed == horaInicio ? _self.horaInicio : horaInicio // ignore: cast_nullable_to_non_nullable
as String?,horaFin: freezed == horaFin ? _self.horaFin : horaFin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of TurnoApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SedeApiModelCopyWith<$Res>? get sede {
    if (_self.sede == null) {
    return null;
  }

  return $SedeApiModelCopyWith<$Res>(_self.sede!, (value) {
    return _then(_self.copyWith(sede: value));
  });
}
}


/// Adds pattern-matching-related methods to [TurnoApiModel].
extension TurnoApiModelPatterns on TurnoApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TurnoApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TurnoApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TurnoApiModel value)  $default,){
final _that = this;
switch (_that) {
case _TurnoApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TurnoApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _TurnoApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idTurno,  int? idSede,  SedeApiModel? sede,  String? nombre,  bool? esNocturno,  DateTime? fecha,  String? horaInicio,  String? horaFin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TurnoApiModel() when $default != null:
return $default(_that.idTurno,_that.idSede,_that.sede,_that.nombre,_that.esNocturno,_that.fecha,_that.horaInicio,_that.horaFin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idTurno,  int? idSede,  SedeApiModel? sede,  String? nombre,  bool? esNocturno,  DateTime? fecha,  String? horaInicio,  String? horaFin)  $default,) {final _that = this;
switch (_that) {
case _TurnoApiModel():
return $default(_that.idTurno,_that.idSede,_that.sede,_that.nombre,_that.esNocturno,_that.fecha,_that.horaInicio,_that.horaFin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idTurno,  int? idSede,  SedeApiModel? sede,  String? nombre,  bool? esNocturno,  DateTime? fecha,  String? horaInicio,  String? horaFin)?  $default,) {final _that = this;
switch (_that) {
case _TurnoApiModel() when $default != null:
return $default(_that.idTurno,_that.idSede,_that.sede,_that.nombre,_that.esNocturno,_that.fecha,_that.horaInicio,_that.horaFin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TurnoApiModel implements TurnoApiModel {
  const _TurnoApiModel({this.idTurno, this.idSede, this.sede, this.nombre, this.esNocturno, this.fecha, this.horaInicio, this.horaFin});
  factory _TurnoApiModel.fromJson(Map<String, dynamic> json) => _$TurnoApiModelFromJson(json);

@override final  int? idTurno;
@override final  int? idSede;
@override final  SedeApiModel? sede;
@override final  String? nombre;
@override final  bool? esNocturno;
@override final  DateTime? fecha;
@override final  String? horaInicio;
@override final  String? horaFin;

/// Create a copy of TurnoApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TurnoApiModelCopyWith<_TurnoApiModel> get copyWith => __$TurnoApiModelCopyWithImpl<_TurnoApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TurnoApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TurnoApiModel&&(identical(other.idTurno, idTurno) || other.idTurno == idTurno)&&(identical(other.idSede, idSede) || other.idSede == idSede)&&(identical(other.sede, sede) || other.sede == sede)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.esNocturno, esNocturno) || other.esNocturno == esNocturno)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.horaInicio, horaInicio) || other.horaInicio == horaInicio)&&(identical(other.horaFin, horaFin) || other.horaFin == horaFin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idTurno,idSede,sede,nombre,esNocturno,fecha,horaInicio,horaFin);

@override
String toString() {
  return 'TurnoApiModel(idTurno: $idTurno, idSede: $idSede, sede: $sede, nombre: $nombre, esNocturno: $esNocturno, fecha: $fecha, horaInicio: $horaInicio, horaFin: $horaFin)';
}


}

/// @nodoc
abstract mixin class _$TurnoApiModelCopyWith<$Res> implements $TurnoApiModelCopyWith<$Res> {
  factory _$TurnoApiModelCopyWith(_TurnoApiModel value, $Res Function(_TurnoApiModel) _then) = __$TurnoApiModelCopyWithImpl;
@override @useResult
$Res call({
 int? idTurno, int? idSede, SedeApiModel? sede, String? nombre, bool? esNocturno, DateTime? fecha, String? horaInicio, String? horaFin
});


@override $SedeApiModelCopyWith<$Res>? get sede;

}
/// @nodoc
class __$TurnoApiModelCopyWithImpl<$Res>
    implements _$TurnoApiModelCopyWith<$Res> {
  __$TurnoApiModelCopyWithImpl(this._self, this._then);

  final _TurnoApiModel _self;
  final $Res Function(_TurnoApiModel) _then;

/// Create a copy of TurnoApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idTurno = freezed,Object? idSede = freezed,Object? sede = freezed,Object? nombre = freezed,Object? esNocturno = freezed,Object? fecha = freezed,Object? horaInicio = freezed,Object? horaFin = freezed,}) {
  return _then(_TurnoApiModel(
idTurno: freezed == idTurno ? _self.idTurno : idTurno // ignore: cast_nullable_to_non_nullable
as int?,idSede: freezed == idSede ? _self.idSede : idSede // ignore: cast_nullable_to_non_nullable
as int?,sede: freezed == sede ? _self.sede : sede // ignore: cast_nullable_to_non_nullable
as SedeApiModel?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,esNocturno: freezed == esNocturno ? _self.esNocturno : esNocturno // ignore: cast_nullable_to_non_nullable
as bool?,fecha: freezed == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime?,horaInicio: freezed == horaInicio ? _self.horaInicio : horaInicio // ignore: cast_nullable_to_non_nullable
as String?,horaFin: freezed == horaFin ? _self.horaFin : horaFin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of TurnoApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SedeApiModelCopyWith<$Res>? get sede {
    if (_self.sede == null) {
    return null;
  }

  return $SedeApiModelCopyWith<$Res>(_self.sede!, (value) {
    return _then(_self.copyWith(sede: value));
  });
}
}

// dart format on

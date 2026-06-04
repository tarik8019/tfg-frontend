// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'turno.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Turno {

 int? get idTurno; String get nombre; int? get idSede; Sede? get sede; DateTime get fecha; String get horaInicio; String get horaFin; bool get esNocturno;
/// Create a copy of Turno
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TurnoCopyWith<Turno> get copyWith => _$TurnoCopyWithImpl<Turno>(this as Turno, _$identity);

  /// Serializes this Turno to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Turno&&(identical(other.idTurno, idTurno) || other.idTurno == idTurno)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.idSede, idSede) || other.idSede == idSede)&&(identical(other.sede, sede) || other.sede == sede)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.horaInicio, horaInicio) || other.horaInicio == horaInicio)&&(identical(other.horaFin, horaFin) || other.horaFin == horaFin)&&(identical(other.esNocturno, esNocturno) || other.esNocturno == esNocturno));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idTurno,nombre,idSede,sede,fecha,horaInicio,horaFin,esNocturno);

@override
String toString() {
  return 'Turno(idTurno: $idTurno, nombre: $nombre, idSede: $idSede, sede: $sede, fecha: $fecha, horaInicio: $horaInicio, horaFin: $horaFin, esNocturno: $esNocturno)';
}


}

/// @nodoc
abstract mixin class $TurnoCopyWith<$Res>  {
  factory $TurnoCopyWith(Turno value, $Res Function(Turno) _then) = _$TurnoCopyWithImpl;
@useResult
$Res call({
 int? idTurno, String nombre, int? idSede, Sede? sede, DateTime fecha, String horaInicio, String horaFin, bool esNocturno
});


$SedeCopyWith<$Res>? get sede;

}
/// @nodoc
class _$TurnoCopyWithImpl<$Res>
    implements $TurnoCopyWith<$Res> {
  _$TurnoCopyWithImpl(this._self, this._then);

  final Turno _self;
  final $Res Function(Turno) _then;

/// Create a copy of Turno
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idTurno = freezed,Object? nombre = null,Object? idSede = freezed,Object? sede = freezed,Object? fecha = null,Object? horaInicio = null,Object? horaFin = null,Object? esNocturno = null,}) {
  return _then(_self.copyWith(
idTurno: freezed == idTurno ? _self.idTurno : idTurno // ignore: cast_nullable_to_non_nullable
as int?,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,idSede: freezed == idSede ? _self.idSede : idSede // ignore: cast_nullable_to_non_nullable
as int?,sede: freezed == sede ? _self.sede : sede // ignore: cast_nullable_to_non_nullable
as Sede?,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,horaInicio: null == horaInicio ? _self.horaInicio : horaInicio // ignore: cast_nullable_to_non_nullable
as String,horaFin: null == horaFin ? _self.horaFin : horaFin // ignore: cast_nullable_to_non_nullable
as String,esNocturno: null == esNocturno ? _self.esNocturno : esNocturno // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Turno
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SedeCopyWith<$Res>? get sede {
    if (_self.sede == null) {
    return null;
  }

  return $SedeCopyWith<$Res>(_self.sede!, (value) {
    return _then(_self.copyWith(sede: value));
  });
}
}


/// Adds pattern-matching-related methods to [Turno].
extension TurnoPatterns on Turno {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Turno value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Turno() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Turno value)  $default,){
final _that = this;
switch (_that) {
case _Turno():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Turno value)?  $default,){
final _that = this;
switch (_that) {
case _Turno() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idTurno,  String nombre,  int? idSede,  Sede? sede,  DateTime fecha,  String horaInicio,  String horaFin,  bool esNocturno)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Turno() when $default != null:
return $default(_that.idTurno,_that.nombre,_that.idSede,_that.sede,_that.fecha,_that.horaInicio,_that.horaFin,_that.esNocturno);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idTurno,  String nombre,  int? idSede,  Sede? sede,  DateTime fecha,  String horaInicio,  String horaFin,  bool esNocturno)  $default,) {final _that = this;
switch (_that) {
case _Turno():
return $default(_that.idTurno,_that.nombre,_that.idSede,_that.sede,_that.fecha,_that.horaInicio,_that.horaFin,_that.esNocturno);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idTurno,  String nombre,  int? idSede,  Sede? sede,  DateTime fecha,  String horaInicio,  String horaFin,  bool esNocturno)?  $default,) {final _that = this;
switch (_that) {
case _Turno() when $default != null:
return $default(_that.idTurno,_that.nombre,_that.idSede,_that.sede,_that.fecha,_that.horaInicio,_that.horaFin,_that.esNocturno);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Turno implements Turno {
  const _Turno({this.idTurno, required this.nombre, this.idSede, this.sede, required this.fecha, required this.horaInicio, required this.horaFin, required this.esNocturno});
  factory _Turno.fromJson(Map<String, dynamic> json) => _$TurnoFromJson(json);

@override final  int? idTurno;
@override final  String nombre;
@override final  int? idSede;
@override final  Sede? sede;
@override final  DateTime fecha;
@override final  String horaInicio;
@override final  String horaFin;
@override final  bool esNocturno;

/// Create a copy of Turno
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TurnoCopyWith<_Turno> get copyWith => __$TurnoCopyWithImpl<_Turno>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TurnoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Turno&&(identical(other.idTurno, idTurno) || other.idTurno == idTurno)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.idSede, idSede) || other.idSede == idSede)&&(identical(other.sede, sede) || other.sede == sede)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.horaInicio, horaInicio) || other.horaInicio == horaInicio)&&(identical(other.horaFin, horaFin) || other.horaFin == horaFin)&&(identical(other.esNocturno, esNocturno) || other.esNocturno == esNocturno));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idTurno,nombre,idSede,sede,fecha,horaInicio,horaFin,esNocturno);

@override
String toString() {
  return 'Turno(idTurno: $idTurno, nombre: $nombre, idSede: $idSede, sede: $sede, fecha: $fecha, horaInicio: $horaInicio, horaFin: $horaFin, esNocturno: $esNocturno)';
}


}

/// @nodoc
abstract mixin class _$TurnoCopyWith<$Res> implements $TurnoCopyWith<$Res> {
  factory _$TurnoCopyWith(_Turno value, $Res Function(_Turno) _then) = __$TurnoCopyWithImpl;
@override @useResult
$Res call({
 int? idTurno, String nombre, int? idSede, Sede? sede, DateTime fecha, String horaInicio, String horaFin, bool esNocturno
});


@override $SedeCopyWith<$Res>? get sede;

}
/// @nodoc
class __$TurnoCopyWithImpl<$Res>
    implements _$TurnoCopyWith<$Res> {
  __$TurnoCopyWithImpl(this._self, this._then);

  final _Turno _self;
  final $Res Function(_Turno) _then;

/// Create a copy of Turno
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idTurno = freezed,Object? nombre = null,Object? idSede = freezed,Object? sede = freezed,Object? fecha = null,Object? horaInicio = null,Object? horaFin = null,Object? esNocturno = null,}) {
  return _then(_Turno(
idTurno: freezed == idTurno ? _self.idTurno : idTurno // ignore: cast_nullable_to_non_nullable
as int?,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,idSede: freezed == idSede ? _self.idSede : idSede // ignore: cast_nullable_to_non_nullable
as int?,sede: freezed == sede ? _self.sede : sede // ignore: cast_nullable_to_non_nullable
as Sede?,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,horaInicio: null == horaInicio ? _self.horaInicio : horaInicio // ignore: cast_nullable_to_non_nullable
as String,horaFin: null == horaFin ? _self.horaFin : horaFin // ignore: cast_nullable_to_non_nullable
as String,esNocturno: null == esNocturno ? _self.esNocturno : esNocturno // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Turno
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SedeCopyWith<$Res>? get sede {
    if (_self.sede == null) {
    return null;
  }

  return $SedeCopyWith<$Res>(_self.sede!, (value) {
    return _then(_self.copyWith(sede: value));
  });
}
}

// dart format on

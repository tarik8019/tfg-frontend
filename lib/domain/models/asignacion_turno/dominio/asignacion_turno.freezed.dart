// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asignacion_turno.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AsignacionTurno {

 int? get idAsignacion; String get estado; int? get idTurno; Turno? get turno; List<int>? get idEmpleados; List<Empleado>? get empleados;
/// Create a copy of AsignacionTurno
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AsignacionTurnoCopyWith<AsignacionTurno> get copyWith => _$AsignacionTurnoCopyWithImpl<AsignacionTurno>(this as AsignacionTurno, _$identity);

  /// Serializes this AsignacionTurno to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AsignacionTurno&&(identical(other.idAsignacion, idAsignacion) || other.idAsignacion == idAsignacion)&&(identical(other.estado, estado) || other.estado == estado)&&(identical(other.idTurno, idTurno) || other.idTurno == idTurno)&&(identical(other.turno, turno) || other.turno == turno)&&const DeepCollectionEquality().equals(other.idEmpleados, idEmpleados)&&const DeepCollectionEquality().equals(other.empleados, empleados));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idAsignacion,estado,idTurno,turno,const DeepCollectionEquality().hash(idEmpleados),const DeepCollectionEquality().hash(empleados));

@override
String toString() {
  return 'AsignacionTurno(idAsignacion: $idAsignacion, estado: $estado, idTurno: $idTurno, turno: $turno, idEmpleados: $idEmpleados, empleados: $empleados)';
}


}

/// @nodoc
abstract mixin class $AsignacionTurnoCopyWith<$Res>  {
  factory $AsignacionTurnoCopyWith(AsignacionTurno value, $Res Function(AsignacionTurno) _then) = _$AsignacionTurnoCopyWithImpl;
@useResult
$Res call({
 int? idAsignacion, String estado, int? idTurno, Turno? turno, List<int>? idEmpleados, List<Empleado>? empleados
});


$TurnoCopyWith<$Res>? get turno;

}
/// @nodoc
class _$AsignacionTurnoCopyWithImpl<$Res>
    implements $AsignacionTurnoCopyWith<$Res> {
  _$AsignacionTurnoCopyWithImpl(this._self, this._then);

  final AsignacionTurno _self;
  final $Res Function(AsignacionTurno) _then;

/// Create a copy of AsignacionTurno
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idAsignacion = freezed,Object? estado = null,Object? idTurno = freezed,Object? turno = freezed,Object? idEmpleados = freezed,Object? empleados = freezed,}) {
  return _then(_self.copyWith(
idAsignacion: freezed == idAsignacion ? _self.idAsignacion : idAsignacion // ignore: cast_nullable_to_non_nullable
as int?,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,idTurno: freezed == idTurno ? _self.idTurno : idTurno // ignore: cast_nullable_to_non_nullable
as int?,turno: freezed == turno ? _self.turno : turno // ignore: cast_nullable_to_non_nullable
as Turno?,idEmpleados: freezed == idEmpleados ? _self.idEmpleados : idEmpleados // ignore: cast_nullable_to_non_nullable
as List<int>?,empleados: freezed == empleados ? _self.empleados : empleados // ignore: cast_nullable_to_non_nullable
as List<Empleado>?,
  ));
}
/// Create a copy of AsignacionTurno
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TurnoCopyWith<$Res>? get turno {
    if (_self.turno == null) {
    return null;
  }

  return $TurnoCopyWith<$Res>(_self.turno!, (value) {
    return _then(_self.copyWith(turno: value));
  });
}
}


/// Adds pattern-matching-related methods to [AsignacionTurno].
extension AsignacionTurnoPatterns on AsignacionTurno {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AsignacionTurno value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AsignacionTurno() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AsignacionTurno value)  $default,){
final _that = this;
switch (_that) {
case _AsignacionTurno():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AsignacionTurno value)?  $default,){
final _that = this;
switch (_that) {
case _AsignacionTurno() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idAsignacion,  String estado,  int? idTurno,  Turno? turno,  List<int>? idEmpleados,  List<Empleado>? empleados)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AsignacionTurno() when $default != null:
return $default(_that.idAsignacion,_that.estado,_that.idTurno,_that.turno,_that.idEmpleados,_that.empleados);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idAsignacion,  String estado,  int? idTurno,  Turno? turno,  List<int>? idEmpleados,  List<Empleado>? empleados)  $default,) {final _that = this;
switch (_that) {
case _AsignacionTurno():
return $default(_that.idAsignacion,_that.estado,_that.idTurno,_that.turno,_that.idEmpleados,_that.empleados);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idAsignacion,  String estado,  int? idTurno,  Turno? turno,  List<int>? idEmpleados,  List<Empleado>? empleados)?  $default,) {final _that = this;
switch (_that) {
case _AsignacionTurno() when $default != null:
return $default(_that.idAsignacion,_that.estado,_that.idTurno,_that.turno,_that.idEmpleados,_that.empleados);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AsignacionTurno implements AsignacionTurno {
  const _AsignacionTurno({this.idAsignacion, required this.estado, this.idTurno, this.turno, final  List<int>? idEmpleados, final  List<Empleado>? empleados}): _idEmpleados = idEmpleados,_empleados = empleados;
  factory _AsignacionTurno.fromJson(Map<String, dynamic> json) => _$AsignacionTurnoFromJson(json);

@override final  int? idAsignacion;
@override final  String estado;
@override final  int? idTurno;
@override final  Turno? turno;
 final  List<int>? _idEmpleados;
@override List<int>? get idEmpleados {
  final value = _idEmpleados;
  if (value == null) return null;
  if (_idEmpleados is EqualUnmodifiableListView) return _idEmpleados;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Empleado>? _empleados;
@override List<Empleado>? get empleados {
  final value = _empleados;
  if (value == null) return null;
  if (_empleados is EqualUnmodifiableListView) return _empleados;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AsignacionTurno
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AsignacionTurnoCopyWith<_AsignacionTurno> get copyWith => __$AsignacionTurnoCopyWithImpl<_AsignacionTurno>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AsignacionTurnoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AsignacionTurno&&(identical(other.idAsignacion, idAsignacion) || other.idAsignacion == idAsignacion)&&(identical(other.estado, estado) || other.estado == estado)&&(identical(other.idTurno, idTurno) || other.idTurno == idTurno)&&(identical(other.turno, turno) || other.turno == turno)&&const DeepCollectionEquality().equals(other._idEmpleados, _idEmpleados)&&const DeepCollectionEquality().equals(other._empleados, _empleados));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idAsignacion,estado,idTurno,turno,const DeepCollectionEquality().hash(_idEmpleados),const DeepCollectionEquality().hash(_empleados));

@override
String toString() {
  return 'AsignacionTurno(idAsignacion: $idAsignacion, estado: $estado, idTurno: $idTurno, turno: $turno, idEmpleados: $idEmpleados, empleados: $empleados)';
}


}

/// @nodoc
abstract mixin class _$AsignacionTurnoCopyWith<$Res> implements $AsignacionTurnoCopyWith<$Res> {
  factory _$AsignacionTurnoCopyWith(_AsignacionTurno value, $Res Function(_AsignacionTurno) _then) = __$AsignacionTurnoCopyWithImpl;
@override @useResult
$Res call({
 int? idAsignacion, String estado, int? idTurno, Turno? turno, List<int>? idEmpleados, List<Empleado>? empleados
});


@override $TurnoCopyWith<$Res>? get turno;

}
/// @nodoc
class __$AsignacionTurnoCopyWithImpl<$Res>
    implements _$AsignacionTurnoCopyWith<$Res> {
  __$AsignacionTurnoCopyWithImpl(this._self, this._then);

  final _AsignacionTurno _self;
  final $Res Function(_AsignacionTurno) _then;

/// Create a copy of AsignacionTurno
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idAsignacion = freezed,Object? estado = null,Object? idTurno = freezed,Object? turno = freezed,Object? idEmpleados = freezed,Object? empleados = freezed,}) {
  return _then(_AsignacionTurno(
idAsignacion: freezed == idAsignacion ? _self.idAsignacion : idAsignacion // ignore: cast_nullable_to_non_nullable
as int?,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,idTurno: freezed == idTurno ? _self.idTurno : idTurno // ignore: cast_nullable_to_non_nullable
as int?,turno: freezed == turno ? _self.turno : turno // ignore: cast_nullable_to_non_nullable
as Turno?,idEmpleados: freezed == idEmpleados ? _self._idEmpleados : idEmpleados // ignore: cast_nullable_to_non_nullable
as List<int>?,empleados: freezed == empleados ? _self._empleados : empleados // ignore: cast_nullable_to_non_nullable
as List<Empleado>?,
  ));
}

/// Create a copy of AsignacionTurno
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TurnoCopyWith<$Res>? get turno {
    if (_self.turno == null) {
    return null;
  }

  return $TurnoCopyWith<$Res>(_self.turno!, (value) {
    return _then(_self.copyWith(turno: value));
  });
}
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disponibilidad.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Disponibilidad {

 int? get idDisponibilidad; Empleado get empleado; String? get diaSemana; String? get horaInicio; String? get horaFin;
/// Create a copy of Disponibilidad
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisponibilidadCopyWith<Disponibilidad> get copyWith => _$DisponibilidadCopyWithImpl<Disponibilidad>(this as Disponibilidad, _$identity);

  /// Serializes this Disponibilidad to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Disponibilidad&&(identical(other.idDisponibilidad, idDisponibilidad) || other.idDisponibilidad == idDisponibilidad)&&(identical(other.empleado, empleado) || other.empleado == empleado)&&(identical(other.diaSemana, diaSemana) || other.diaSemana == diaSemana)&&(identical(other.horaInicio, horaInicio) || other.horaInicio == horaInicio)&&(identical(other.horaFin, horaFin) || other.horaFin == horaFin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDisponibilidad,empleado,diaSemana,horaInicio,horaFin);

@override
String toString() {
  return 'Disponibilidad(idDisponibilidad: $idDisponibilidad, empleado: $empleado, diaSemana: $diaSemana, horaInicio: $horaInicio, horaFin: $horaFin)';
}


}

/// @nodoc
abstract mixin class $DisponibilidadCopyWith<$Res>  {
  factory $DisponibilidadCopyWith(Disponibilidad value, $Res Function(Disponibilidad) _then) = _$DisponibilidadCopyWithImpl;
@useResult
$Res call({
 int? idDisponibilidad, Empleado empleado, String? diaSemana, String? horaInicio, String? horaFin
});


$EmpleadoCopyWith<$Res> get empleado;

}
/// @nodoc
class _$DisponibilidadCopyWithImpl<$Res>
    implements $DisponibilidadCopyWith<$Res> {
  _$DisponibilidadCopyWithImpl(this._self, this._then);

  final Disponibilidad _self;
  final $Res Function(Disponibilidad) _then;

/// Create a copy of Disponibilidad
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idDisponibilidad = freezed,Object? empleado = null,Object? diaSemana = freezed,Object? horaInicio = freezed,Object? horaFin = freezed,}) {
  return _then(_self.copyWith(
idDisponibilidad: freezed == idDisponibilidad ? _self.idDisponibilidad : idDisponibilidad // ignore: cast_nullable_to_non_nullable
as int?,empleado: null == empleado ? _self.empleado : empleado // ignore: cast_nullable_to_non_nullable
as Empleado,diaSemana: freezed == diaSemana ? _self.diaSemana : diaSemana // ignore: cast_nullable_to_non_nullable
as String?,horaInicio: freezed == horaInicio ? _self.horaInicio : horaInicio // ignore: cast_nullable_to_non_nullable
as String?,horaFin: freezed == horaFin ? _self.horaFin : horaFin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Disponibilidad
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpleadoCopyWith<$Res> get empleado {
  
  return $EmpleadoCopyWith<$Res>(_self.empleado, (value) {
    return _then(_self.copyWith(empleado: value));
  });
}
}


/// Adds pattern-matching-related methods to [Disponibilidad].
extension DisponibilidadPatterns on Disponibilidad {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Disponibilidad value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Disponibilidad() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Disponibilidad value)  $default,){
final _that = this;
switch (_that) {
case _Disponibilidad():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Disponibilidad value)?  $default,){
final _that = this;
switch (_that) {
case _Disponibilidad() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idDisponibilidad,  Empleado empleado,  String? diaSemana,  String? horaInicio,  String? horaFin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Disponibilidad() when $default != null:
return $default(_that.idDisponibilidad,_that.empleado,_that.diaSemana,_that.horaInicio,_that.horaFin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idDisponibilidad,  Empleado empleado,  String? diaSemana,  String? horaInicio,  String? horaFin)  $default,) {final _that = this;
switch (_that) {
case _Disponibilidad():
return $default(_that.idDisponibilidad,_that.empleado,_that.diaSemana,_that.horaInicio,_that.horaFin);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idDisponibilidad,  Empleado empleado,  String? diaSemana,  String? horaInicio,  String? horaFin)?  $default,) {final _that = this;
switch (_that) {
case _Disponibilidad() when $default != null:
return $default(_that.idDisponibilidad,_that.empleado,_that.diaSemana,_that.horaInicio,_that.horaFin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Disponibilidad implements Disponibilidad {
  const _Disponibilidad({this.idDisponibilidad, required this.empleado, this.diaSemana, this.horaInicio, this.horaFin});
  factory _Disponibilidad.fromJson(Map<String, dynamic> json) => _$DisponibilidadFromJson(json);

@override final  int? idDisponibilidad;
@override final  Empleado empleado;
@override final  String? diaSemana;
@override final  String? horaInicio;
@override final  String? horaFin;

/// Create a copy of Disponibilidad
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisponibilidadCopyWith<_Disponibilidad> get copyWith => __$DisponibilidadCopyWithImpl<_Disponibilidad>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisponibilidadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Disponibilidad&&(identical(other.idDisponibilidad, idDisponibilidad) || other.idDisponibilidad == idDisponibilidad)&&(identical(other.empleado, empleado) || other.empleado == empleado)&&(identical(other.diaSemana, diaSemana) || other.diaSemana == diaSemana)&&(identical(other.horaInicio, horaInicio) || other.horaInicio == horaInicio)&&(identical(other.horaFin, horaFin) || other.horaFin == horaFin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDisponibilidad,empleado,diaSemana,horaInicio,horaFin);

@override
String toString() {
  return 'Disponibilidad(idDisponibilidad: $idDisponibilidad, empleado: $empleado, diaSemana: $diaSemana, horaInicio: $horaInicio, horaFin: $horaFin)';
}


}

/// @nodoc
abstract mixin class _$DisponibilidadCopyWith<$Res> implements $DisponibilidadCopyWith<$Res> {
  factory _$DisponibilidadCopyWith(_Disponibilidad value, $Res Function(_Disponibilidad) _then) = __$DisponibilidadCopyWithImpl;
@override @useResult
$Res call({
 int? idDisponibilidad, Empleado empleado, String? diaSemana, String? horaInicio, String? horaFin
});


@override $EmpleadoCopyWith<$Res> get empleado;

}
/// @nodoc
class __$DisponibilidadCopyWithImpl<$Res>
    implements _$DisponibilidadCopyWith<$Res> {
  __$DisponibilidadCopyWithImpl(this._self, this._then);

  final _Disponibilidad _self;
  final $Res Function(_Disponibilidad) _then;

/// Create a copy of Disponibilidad
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idDisponibilidad = freezed,Object? empleado = null,Object? diaSemana = freezed,Object? horaInicio = freezed,Object? horaFin = freezed,}) {
  return _then(_Disponibilidad(
idDisponibilidad: freezed == idDisponibilidad ? _self.idDisponibilidad : idDisponibilidad // ignore: cast_nullable_to_non_nullable
as int?,empleado: null == empleado ? _self.empleado : empleado // ignore: cast_nullable_to_non_nullable
as Empleado,diaSemana: freezed == diaSemana ? _self.diaSemana : diaSemana // ignore: cast_nullable_to_non_nullable
as String?,horaInicio: freezed == horaInicio ? _self.horaInicio : horaInicio // ignore: cast_nullable_to_non_nullable
as String?,horaFin: freezed == horaFin ? _self.horaFin : horaFin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Disponibilidad
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

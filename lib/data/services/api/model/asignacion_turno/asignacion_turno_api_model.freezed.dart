// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asignacion_turno_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AsignacionTurnoApiModel {

 int? get idAsignacion; String get estado;// Cada asignación tiene solo un turno
 int get idTurno;// Ese turno se aplica a muchos empleados
 int get idEmpleado; TurnoApiModel? get turno;
/// Create a copy of AsignacionTurnoApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AsignacionTurnoApiModelCopyWith<AsignacionTurnoApiModel> get copyWith => _$AsignacionTurnoApiModelCopyWithImpl<AsignacionTurnoApiModel>(this as AsignacionTurnoApiModel, _$identity);

  /// Serializes this AsignacionTurnoApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AsignacionTurnoApiModel&&(identical(other.idAsignacion, idAsignacion) || other.idAsignacion == idAsignacion)&&(identical(other.estado, estado) || other.estado == estado)&&(identical(other.idTurno, idTurno) || other.idTurno == idTurno)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.turno, turno) || other.turno == turno));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idAsignacion,estado,idTurno,idEmpleado,turno);

@override
String toString() {
  return 'AsignacionTurnoApiModel(idAsignacion: $idAsignacion, estado: $estado, idTurno: $idTurno, idEmpleado: $idEmpleado, turno: $turno)';
}


}

/// @nodoc
abstract mixin class $AsignacionTurnoApiModelCopyWith<$Res>  {
  factory $AsignacionTurnoApiModelCopyWith(AsignacionTurnoApiModel value, $Res Function(AsignacionTurnoApiModel) _then) = _$AsignacionTurnoApiModelCopyWithImpl;
@useResult
$Res call({
 int? idAsignacion, String estado, int idTurno, int idEmpleado, TurnoApiModel? turno
});


$TurnoApiModelCopyWith<$Res>? get turno;

}
/// @nodoc
class _$AsignacionTurnoApiModelCopyWithImpl<$Res>
    implements $AsignacionTurnoApiModelCopyWith<$Res> {
  _$AsignacionTurnoApiModelCopyWithImpl(this._self, this._then);

  final AsignacionTurnoApiModel _self;
  final $Res Function(AsignacionTurnoApiModel) _then;

/// Create a copy of AsignacionTurnoApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idAsignacion = freezed,Object? estado = null,Object? idTurno = null,Object? idEmpleado = null,Object? turno = freezed,}) {
  return _then(_self.copyWith(
idAsignacion: freezed == idAsignacion ? _self.idAsignacion : idAsignacion // ignore: cast_nullable_to_non_nullable
as int?,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,idTurno: null == idTurno ? _self.idTurno : idTurno // ignore: cast_nullable_to_non_nullable
as int,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,turno: freezed == turno ? _self.turno : turno // ignore: cast_nullable_to_non_nullable
as TurnoApiModel?,
  ));
}
/// Create a copy of AsignacionTurnoApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TurnoApiModelCopyWith<$Res>? get turno {
    if (_self.turno == null) {
    return null;
  }

  return $TurnoApiModelCopyWith<$Res>(_self.turno!, (value) {
    return _then(_self.copyWith(turno: value));
  });
}
}


/// Adds pattern-matching-related methods to [AsignacionTurnoApiModel].
extension AsignacionTurnoApiModelPatterns on AsignacionTurnoApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AsignacionTurnoApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AsignacionTurnoApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AsignacionTurnoApiModel value)  $default,){
final _that = this;
switch (_that) {
case _AsignacionTurnoApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AsignacionTurnoApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _AsignacionTurnoApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idAsignacion,  String estado,  int idTurno,  int idEmpleado,  TurnoApiModel? turno)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AsignacionTurnoApiModel() when $default != null:
return $default(_that.idAsignacion,_that.estado,_that.idTurno,_that.idEmpleado,_that.turno);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idAsignacion,  String estado,  int idTurno,  int idEmpleado,  TurnoApiModel? turno)  $default,) {final _that = this;
switch (_that) {
case _AsignacionTurnoApiModel():
return $default(_that.idAsignacion,_that.estado,_that.idTurno,_that.idEmpleado,_that.turno);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idAsignacion,  String estado,  int idTurno,  int idEmpleado,  TurnoApiModel? turno)?  $default,) {final _that = this;
switch (_that) {
case _AsignacionTurnoApiModel() when $default != null:
return $default(_that.idAsignacion,_that.estado,_that.idTurno,_that.idEmpleado,_that.turno);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AsignacionTurnoApiModel implements AsignacionTurnoApiModel {
  const _AsignacionTurnoApiModel({this.idAsignacion, required this.estado, required this.idTurno, required this.idEmpleado, this.turno});
  factory _AsignacionTurnoApiModel.fromJson(Map<String, dynamic> json) => _$AsignacionTurnoApiModelFromJson(json);

@override final  int? idAsignacion;
@override final  String estado;
// Cada asignación tiene solo un turno
@override final  int idTurno;
// Ese turno se aplica a muchos empleados
@override final  int idEmpleado;
@override final  TurnoApiModel? turno;

/// Create a copy of AsignacionTurnoApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AsignacionTurnoApiModelCopyWith<_AsignacionTurnoApiModel> get copyWith => __$AsignacionTurnoApiModelCopyWithImpl<_AsignacionTurnoApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AsignacionTurnoApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AsignacionTurnoApiModel&&(identical(other.idAsignacion, idAsignacion) || other.idAsignacion == idAsignacion)&&(identical(other.estado, estado) || other.estado == estado)&&(identical(other.idTurno, idTurno) || other.idTurno == idTurno)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.turno, turno) || other.turno == turno));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idAsignacion,estado,idTurno,idEmpleado,turno);

@override
String toString() {
  return 'AsignacionTurnoApiModel(idAsignacion: $idAsignacion, estado: $estado, idTurno: $idTurno, idEmpleado: $idEmpleado, turno: $turno)';
}


}

/// @nodoc
abstract mixin class _$AsignacionTurnoApiModelCopyWith<$Res> implements $AsignacionTurnoApiModelCopyWith<$Res> {
  factory _$AsignacionTurnoApiModelCopyWith(_AsignacionTurnoApiModel value, $Res Function(_AsignacionTurnoApiModel) _then) = __$AsignacionTurnoApiModelCopyWithImpl;
@override @useResult
$Res call({
 int? idAsignacion, String estado, int idTurno, int idEmpleado, TurnoApiModel? turno
});


@override $TurnoApiModelCopyWith<$Res>? get turno;

}
/// @nodoc
class __$AsignacionTurnoApiModelCopyWithImpl<$Res>
    implements _$AsignacionTurnoApiModelCopyWith<$Res> {
  __$AsignacionTurnoApiModelCopyWithImpl(this._self, this._then);

  final _AsignacionTurnoApiModel _self;
  final $Res Function(_AsignacionTurnoApiModel) _then;

/// Create a copy of AsignacionTurnoApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idAsignacion = freezed,Object? estado = null,Object? idTurno = null,Object? idEmpleado = null,Object? turno = freezed,}) {
  return _then(_AsignacionTurnoApiModel(
idAsignacion: freezed == idAsignacion ? _self.idAsignacion : idAsignacion // ignore: cast_nullable_to_non_nullable
as int?,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,idTurno: null == idTurno ? _self.idTurno : idTurno // ignore: cast_nullable_to_non_nullable
as int,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,turno: freezed == turno ? _self.turno : turno // ignore: cast_nullable_to_non_nullable
as TurnoApiModel?,
  ));
}

/// Create a copy of AsignacionTurnoApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TurnoApiModelCopyWith<$Res>? get turno {
    if (_self.turno == null) {
    return null;
  }

  return $TurnoApiModelCopyWith<$Res>(_self.turno!, (value) {
    return _then(_self.copyWith(turno: value));
  });
}
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asignacion_turno_update_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AsignacionTurnoUpdateApiModel {

 int get idAsignacion; String get estado; int get idTurno; List<int> get idEmpleados;
/// Create a copy of AsignacionTurnoUpdateApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AsignacionTurnoUpdateApiModelCopyWith<AsignacionTurnoUpdateApiModel> get copyWith => _$AsignacionTurnoUpdateApiModelCopyWithImpl<AsignacionTurnoUpdateApiModel>(this as AsignacionTurnoUpdateApiModel, _$identity);

  /// Serializes this AsignacionTurnoUpdateApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AsignacionTurnoUpdateApiModel&&(identical(other.idAsignacion, idAsignacion) || other.idAsignacion == idAsignacion)&&(identical(other.estado, estado) || other.estado == estado)&&(identical(other.idTurno, idTurno) || other.idTurno == idTurno)&&const DeepCollectionEquality().equals(other.idEmpleados, idEmpleados));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idAsignacion,estado,idTurno,const DeepCollectionEquality().hash(idEmpleados));

@override
String toString() {
  return 'AsignacionTurnoUpdateApiModel(idAsignacion: $idAsignacion, estado: $estado, idTurno: $idTurno, idEmpleados: $idEmpleados)';
}


}

/// @nodoc
abstract mixin class $AsignacionTurnoUpdateApiModelCopyWith<$Res>  {
  factory $AsignacionTurnoUpdateApiModelCopyWith(AsignacionTurnoUpdateApiModel value, $Res Function(AsignacionTurnoUpdateApiModel) _then) = _$AsignacionTurnoUpdateApiModelCopyWithImpl;
@useResult
$Res call({
 int idAsignacion, String estado, int idTurno, List<int> idEmpleados
});




}
/// @nodoc
class _$AsignacionTurnoUpdateApiModelCopyWithImpl<$Res>
    implements $AsignacionTurnoUpdateApiModelCopyWith<$Res> {
  _$AsignacionTurnoUpdateApiModelCopyWithImpl(this._self, this._then);

  final AsignacionTurnoUpdateApiModel _self;
  final $Res Function(AsignacionTurnoUpdateApiModel) _then;

/// Create a copy of AsignacionTurnoUpdateApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idAsignacion = null,Object? estado = null,Object? idTurno = null,Object? idEmpleados = null,}) {
  return _then(_self.copyWith(
idAsignacion: null == idAsignacion ? _self.idAsignacion : idAsignacion // ignore: cast_nullable_to_non_nullable
as int,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,idTurno: null == idTurno ? _self.idTurno : idTurno // ignore: cast_nullable_to_non_nullable
as int,idEmpleados: null == idEmpleados ? _self.idEmpleados : idEmpleados // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [AsignacionTurnoUpdateApiModel].
extension AsignacionTurnoUpdateApiModelPatterns on AsignacionTurnoUpdateApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AsignacionTurnoUpdateApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AsignacionTurnoUpdateApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AsignacionTurnoUpdateApiModel value)  $default,){
final _that = this;
switch (_that) {
case _AsignacionTurnoUpdateApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AsignacionTurnoUpdateApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _AsignacionTurnoUpdateApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int idAsignacion,  String estado,  int idTurno,  List<int> idEmpleados)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AsignacionTurnoUpdateApiModel() when $default != null:
return $default(_that.idAsignacion,_that.estado,_that.idTurno,_that.idEmpleados);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int idAsignacion,  String estado,  int idTurno,  List<int> idEmpleados)  $default,) {final _that = this;
switch (_that) {
case _AsignacionTurnoUpdateApiModel():
return $default(_that.idAsignacion,_that.estado,_that.idTurno,_that.idEmpleados);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int idAsignacion,  String estado,  int idTurno,  List<int> idEmpleados)?  $default,) {final _that = this;
switch (_that) {
case _AsignacionTurnoUpdateApiModel() when $default != null:
return $default(_that.idAsignacion,_that.estado,_that.idTurno,_that.idEmpleados);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AsignacionTurnoUpdateApiModel implements AsignacionTurnoUpdateApiModel {
  const _AsignacionTurnoUpdateApiModel({required this.idAsignacion, required this.estado, required this.idTurno, required final  List<int> idEmpleados}): _idEmpleados = idEmpleados;
  factory _AsignacionTurnoUpdateApiModel.fromJson(Map<String, dynamic> json) => _$AsignacionTurnoUpdateApiModelFromJson(json);

@override final  int idAsignacion;
@override final  String estado;
@override final  int idTurno;
 final  List<int> _idEmpleados;
@override List<int> get idEmpleados {
  if (_idEmpleados is EqualUnmodifiableListView) return _idEmpleados;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_idEmpleados);
}


/// Create a copy of AsignacionTurnoUpdateApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AsignacionTurnoUpdateApiModelCopyWith<_AsignacionTurnoUpdateApiModel> get copyWith => __$AsignacionTurnoUpdateApiModelCopyWithImpl<_AsignacionTurnoUpdateApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AsignacionTurnoUpdateApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AsignacionTurnoUpdateApiModel&&(identical(other.idAsignacion, idAsignacion) || other.idAsignacion == idAsignacion)&&(identical(other.estado, estado) || other.estado == estado)&&(identical(other.idTurno, idTurno) || other.idTurno == idTurno)&&const DeepCollectionEquality().equals(other._idEmpleados, _idEmpleados));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idAsignacion,estado,idTurno,const DeepCollectionEquality().hash(_idEmpleados));

@override
String toString() {
  return 'AsignacionTurnoUpdateApiModel(idAsignacion: $idAsignacion, estado: $estado, idTurno: $idTurno, idEmpleados: $idEmpleados)';
}


}

/// @nodoc
abstract mixin class _$AsignacionTurnoUpdateApiModelCopyWith<$Res> implements $AsignacionTurnoUpdateApiModelCopyWith<$Res> {
  factory _$AsignacionTurnoUpdateApiModelCopyWith(_AsignacionTurnoUpdateApiModel value, $Res Function(_AsignacionTurnoUpdateApiModel) _then) = __$AsignacionTurnoUpdateApiModelCopyWithImpl;
@override @useResult
$Res call({
 int idAsignacion, String estado, int idTurno, List<int> idEmpleados
});




}
/// @nodoc
class __$AsignacionTurnoUpdateApiModelCopyWithImpl<$Res>
    implements _$AsignacionTurnoUpdateApiModelCopyWith<$Res> {
  __$AsignacionTurnoUpdateApiModelCopyWithImpl(this._self, this._then);

  final _AsignacionTurnoUpdateApiModel _self;
  final $Res Function(_AsignacionTurnoUpdateApiModel) _then;

/// Create a copy of AsignacionTurnoUpdateApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idAsignacion = null,Object? estado = null,Object? idTurno = null,Object? idEmpleados = null,}) {
  return _then(_AsignacionTurnoUpdateApiModel(
idAsignacion: null == idAsignacion ? _self.idAsignacion : idAsignacion // ignore: cast_nullable_to_non_nullable
as int,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,idTurno: null == idTurno ? _self.idTurno : idTurno // ignore: cast_nullable_to_non_nullable
as int,idEmpleados: null == idEmpleados ? _self._idEmpleados : idEmpleados // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on

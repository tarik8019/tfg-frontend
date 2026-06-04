// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asignacion_turno_create_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AsignacionTurnoCreateApiModel {

 String get estado; int get idTurno; List<int> get idEmpleados;
/// Create a copy of AsignacionTurnoCreateApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AsignacionTurnoCreateApiModelCopyWith<AsignacionTurnoCreateApiModel> get copyWith => _$AsignacionTurnoCreateApiModelCopyWithImpl<AsignacionTurnoCreateApiModel>(this as AsignacionTurnoCreateApiModel, _$identity);

  /// Serializes this AsignacionTurnoCreateApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AsignacionTurnoCreateApiModel&&(identical(other.estado, estado) || other.estado == estado)&&(identical(other.idTurno, idTurno) || other.idTurno == idTurno)&&const DeepCollectionEquality().equals(other.idEmpleados, idEmpleados));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,estado,idTurno,const DeepCollectionEquality().hash(idEmpleados));

@override
String toString() {
  return 'AsignacionTurnoCreateApiModel(estado: $estado, idTurno: $idTurno, idEmpleados: $idEmpleados)';
}


}

/// @nodoc
abstract mixin class $AsignacionTurnoCreateApiModelCopyWith<$Res>  {
  factory $AsignacionTurnoCreateApiModelCopyWith(AsignacionTurnoCreateApiModel value, $Res Function(AsignacionTurnoCreateApiModel) _then) = _$AsignacionTurnoCreateApiModelCopyWithImpl;
@useResult
$Res call({
 String estado, int idTurno, List<int> idEmpleados
});




}
/// @nodoc
class _$AsignacionTurnoCreateApiModelCopyWithImpl<$Res>
    implements $AsignacionTurnoCreateApiModelCopyWith<$Res> {
  _$AsignacionTurnoCreateApiModelCopyWithImpl(this._self, this._then);

  final AsignacionTurnoCreateApiModel _self;
  final $Res Function(AsignacionTurnoCreateApiModel) _then;

/// Create a copy of AsignacionTurnoCreateApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? estado = null,Object? idTurno = null,Object? idEmpleados = null,}) {
  return _then(_self.copyWith(
estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,idTurno: null == idTurno ? _self.idTurno : idTurno // ignore: cast_nullable_to_non_nullable
as int,idEmpleados: null == idEmpleados ? _self.idEmpleados : idEmpleados // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [AsignacionTurnoCreateApiModel].
extension AsignacionTurnoCreateApiModelPatterns on AsignacionTurnoCreateApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AsignacionTurnoCreateApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AsignacionTurnoCreateApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AsignacionTurnoCreateApiModel value)  $default,){
final _that = this;
switch (_that) {
case _AsignacionTurnoCreateApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AsignacionTurnoCreateApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _AsignacionTurnoCreateApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String estado,  int idTurno,  List<int> idEmpleados)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AsignacionTurnoCreateApiModel() when $default != null:
return $default(_that.estado,_that.idTurno,_that.idEmpleados);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String estado,  int idTurno,  List<int> idEmpleados)  $default,) {final _that = this;
switch (_that) {
case _AsignacionTurnoCreateApiModel():
return $default(_that.estado,_that.idTurno,_that.idEmpleados);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String estado,  int idTurno,  List<int> idEmpleados)?  $default,) {final _that = this;
switch (_that) {
case _AsignacionTurnoCreateApiModel() when $default != null:
return $default(_that.estado,_that.idTurno,_that.idEmpleados);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AsignacionTurnoCreateApiModel implements AsignacionTurnoCreateApiModel {
  const _AsignacionTurnoCreateApiModel({required this.estado, required this.idTurno, required final  List<int> idEmpleados}): _idEmpleados = idEmpleados;
  factory _AsignacionTurnoCreateApiModel.fromJson(Map<String, dynamic> json) => _$AsignacionTurnoCreateApiModelFromJson(json);

@override final  String estado;
@override final  int idTurno;
 final  List<int> _idEmpleados;
@override List<int> get idEmpleados {
  if (_idEmpleados is EqualUnmodifiableListView) return _idEmpleados;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_idEmpleados);
}


/// Create a copy of AsignacionTurnoCreateApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AsignacionTurnoCreateApiModelCopyWith<_AsignacionTurnoCreateApiModel> get copyWith => __$AsignacionTurnoCreateApiModelCopyWithImpl<_AsignacionTurnoCreateApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AsignacionTurnoCreateApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AsignacionTurnoCreateApiModel&&(identical(other.estado, estado) || other.estado == estado)&&(identical(other.idTurno, idTurno) || other.idTurno == idTurno)&&const DeepCollectionEquality().equals(other._idEmpleados, _idEmpleados));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,estado,idTurno,const DeepCollectionEquality().hash(_idEmpleados));

@override
String toString() {
  return 'AsignacionTurnoCreateApiModel(estado: $estado, idTurno: $idTurno, idEmpleados: $idEmpleados)';
}


}

/// @nodoc
abstract mixin class _$AsignacionTurnoCreateApiModelCopyWith<$Res> implements $AsignacionTurnoCreateApiModelCopyWith<$Res> {
  factory _$AsignacionTurnoCreateApiModelCopyWith(_AsignacionTurnoCreateApiModel value, $Res Function(_AsignacionTurnoCreateApiModel) _then) = __$AsignacionTurnoCreateApiModelCopyWithImpl;
@override @useResult
$Res call({
 String estado, int idTurno, List<int> idEmpleados
});




}
/// @nodoc
class __$AsignacionTurnoCreateApiModelCopyWithImpl<$Res>
    implements _$AsignacionTurnoCreateApiModelCopyWith<$Res> {
  __$AsignacionTurnoCreateApiModelCopyWithImpl(this._self, this._then);

  final _AsignacionTurnoCreateApiModel _self;
  final $Res Function(_AsignacionTurnoCreateApiModel) _then;

/// Create a copy of AsignacionTurnoCreateApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? estado = null,Object? idTurno = null,Object? idEmpleados = null,}) {
  return _then(_AsignacionTurnoCreateApiModel(
estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,idTurno: null == idTurno ? _self.idTurno : idTurno // ignore: cast_nullable_to_non_nullable
as int,idEmpleados: null == idEmpleados ? _self._idEmpleados : idEmpleados // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on

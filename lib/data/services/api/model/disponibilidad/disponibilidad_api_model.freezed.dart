// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disponibilidad_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DisponibilidadApiModel {

 int? get idDisponibilidad; int get idEmpleado; String? get diaSemana; String? get horaInicio; String? get horaFin;
/// Create a copy of DisponibilidadApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisponibilidadApiModelCopyWith<DisponibilidadApiModel> get copyWith => _$DisponibilidadApiModelCopyWithImpl<DisponibilidadApiModel>(this as DisponibilidadApiModel, _$identity);

  /// Serializes this DisponibilidadApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisponibilidadApiModel&&(identical(other.idDisponibilidad, idDisponibilidad) || other.idDisponibilidad == idDisponibilidad)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.diaSemana, diaSemana) || other.diaSemana == diaSemana)&&(identical(other.horaInicio, horaInicio) || other.horaInicio == horaInicio)&&(identical(other.horaFin, horaFin) || other.horaFin == horaFin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDisponibilidad,idEmpleado,diaSemana,horaInicio,horaFin);

@override
String toString() {
  return 'DisponibilidadApiModel(idDisponibilidad: $idDisponibilidad, idEmpleado: $idEmpleado, diaSemana: $diaSemana, horaInicio: $horaInicio, horaFin: $horaFin)';
}


}

/// @nodoc
abstract mixin class $DisponibilidadApiModelCopyWith<$Res>  {
  factory $DisponibilidadApiModelCopyWith(DisponibilidadApiModel value, $Res Function(DisponibilidadApiModel) _then) = _$DisponibilidadApiModelCopyWithImpl;
@useResult
$Res call({
 int? idDisponibilidad, int idEmpleado, String? diaSemana, String? horaInicio, String? horaFin
});




}
/// @nodoc
class _$DisponibilidadApiModelCopyWithImpl<$Res>
    implements $DisponibilidadApiModelCopyWith<$Res> {
  _$DisponibilidadApiModelCopyWithImpl(this._self, this._then);

  final DisponibilidadApiModel _self;
  final $Res Function(DisponibilidadApiModel) _then;

/// Create a copy of DisponibilidadApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idDisponibilidad = freezed,Object? idEmpleado = null,Object? diaSemana = freezed,Object? horaInicio = freezed,Object? horaFin = freezed,}) {
  return _then(_self.copyWith(
idDisponibilidad: freezed == idDisponibilidad ? _self.idDisponibilidad : idDisponibilidad // ignore: cast_nullable_to_non_nullable
as int?,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,diaSemana: freezed == diaSemana ? _self.diaSemana : diaSemana // ignore: cast_nullable_to_non_nullable
as String?,horaInicio: freezed == horaInicio ? _self.horaInicio : horaInicio // ignore: cast_nullable_to_non_nullable
as String?,horaFin: freezed == horaFin ? _self.horaFin : horaFin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DisponibilidadApiModel].
extension DisponibilidadApiModelPatterns on DisponibilidadApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisponibilidadApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisponibilidadApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisponibilidadApiModel value)  $default,){
final _that = this;
switch (_that) {
case _DisponibilidadApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisponibilidadApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _DisponibilidadApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idDisponibilidad,  int idEmpleado,  String? diaSemana,  String? horaInicio,  String? horaFin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisponibilidadApiModel() when $default != null:
return $default(_that.idDisponibilidad,_that.idEmpleado,_that.diaSemana,_that.horaInicio,_that.horaFin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idDisponibilidad,  int idEmpleado,  String? diaSemana,  String? horaInicio,  String? horaFin)  $default,) {final _that = this;
switch (_that) {
case _DisponibilidadApiModel():
return $default(_that.idDisponibilidad,_that.idEmpleado,_that.diaSemana,_that.horaInicio,_that.horaFin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idDisponibilidad,  int idEmpleado,  String? diaSemana,  String? horaInicio,  String? horaFin)?  $default,) {final _that = this;
switch (_that) {
case _DisponibilidadApiModel() when $default != null:
return $default(_that.idDisponibilidad,_that.idEmpleado,_that.diaSemana,_that.horaInicio,_that.horaFin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisponibilidadApiModel implements DisponibilidadApiModel {
  const _DisponibilidadApiModel({this.idDisponibilidad, required this.idEmpleado, this.diaSemana, this.horaInicio, this.horaFin});
  factory _DisponibilidadApiModel.fromJson(Map<String, dynamic> json) => _$DisponibilidadApiModelFromJson(json);

@override final  int? idDisponibilidad;
@override final  int idEmpleado;
@override final  String? diaSemana;
@override final  String? horaInicio;
@override final  String? horaFin;

/// Create a copy of DisponibilidadApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisponibilidadApiModelCopyWith<_DisponibilidadApiModel> get copyWith => __$DisponibilidadApiModelCopyWithImpl<_DisponibilidadApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisponibilidadApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisponibilidadApiModel&&(identical(other.idDisponibilidad, idDisponibilidad) || other.idDisponibilidad == idDisponibilidad)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.diaSemana, diaSemana) || other.diaSemana == diaSemana)&&(identical(other.horaInicio, horaInicio) || other.horaInicio == horaInicio)&&(identical(other.horaFin, horaFin) || other.horaFin == horaFin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDisponibilidad,idEmpleado,diaSemana,horaInicio,horaFin);

@override
String toString() {
  return 'DisponibilidadApiModel(idDisponibilidad: $idDisponibilidad, idEmpleado: $idEmpleado, diaSemana: $diaSemana, horaInicio: $horaInicio, horaFin: $horaFin)';
}


}

/// @nodoc
abstract mixin class _$DisponibilidadApiModelCopyWith<$Res> implements $DisponibilidadApiModelCopyWith<$Res> {
  factory _$DisponibilidadApiModelCopyWith(_DisponibilidadApiModel value, $Res Function(_DisponibilidadApiModel) _then) = __$DisponibilidadApiModelCopyWithImpl;
@override @useResult
$Res call({
 int? idDisponibilidad, int idEmpleado, String? diaSemana, String? horaInicio, String? horaFin
});




}
/// @nodoc
class __$DisponibilidadApiModelCopyWithImpl<$Res>
    implements _$DisponibilidadApiModelCopyWith<$Res> {
  __$DisponibilidadApiModelCopyWithImpl(this._self, this._then);

  final _DisponibilidadApiModel _self;
  final $Res Function(_DisponibilidadApiModel) _then;

/// Create a copy of DisponibilidadApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idDisponibilidad = freezed,Object? idEmpleado = null,Object? diaSemana = freezed,Object? horaInicio = freezed,Object? horaFin = freezed,}) {
  return _then(_DisponibilidadApiModel(
idDisponibilidad: freezed == idDisponibilidad ? _self.idDisponibilidad : idDisponibilidad // ignore: cast_nullable_to_non_nullable
as int?,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,diaSemana: freezed == diaSemana ? _self.diaSemana : diaSemana // ignore: cast_nullable_to_non_nullable
as String?,horaInicio: freezed == horaInicio ? _self.horaInicio : horaInicio // ignore: cast_nullable_to_non_nullable
as String?,horaFin: freezed == horaFin ? _self.horaFin : horaFin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

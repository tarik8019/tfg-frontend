// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'responsable_empleado_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponsableEmpleadoApiModel {

 int get idResponsableEmpleado; int get idEmpleado; int get idResponsable; int get idEmpresa; DateTime get fechaInicio; DateTime get fechaFin; String get tipoResponsabilidad; String get observaciones; bool get activo; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of ResponsableEmpleadoApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponsableEmpleadoApiModelCopyWith<ResponsableEmpleadoApiModel> get copyWith => _$ResponsableEmpleadoApiModelCopyWithImpl<ResponsableEmpleadoApiModel>(this as ResponsableEmpleadoApiModel, _$identity);

  /// Serializes this ResponsableEmpleadoApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponsableEmpleadoApiModel&&(identical(other.idResponsableEmpleado, idResponsableEmpleado) || other.idResponsableEmpleado == idResponsableEmpleado)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.idResponsable, idResponsable) || other.idResponsable == idResponsable)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.fechaInicio, fechaInicio) || other.fechaInicio == fechaInicio)&&(identical(other.fechaFin, fechaFin) || other.fechaFin == fechaFin)&&(identical(other.tipoResponsabilidad, tipoResponsabilidad) || other.tipoResponsabilidad == tipoResponsabilidad)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.activo, activo) || other.activo == activo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idResponsableEmpleado,idEmpleado,idResponsable,idEmpresa,fechaInicio,fechaFin,tipoResponsabilidad,observaciones,activo,createdAt,updatedAt);

@override
String toString() {
  return 'ResponsableEmpleadoApiModel(idResponsableEmpleado: $idResponsableEmpleado, idEmpleado: $idEmpleado, idResponsable: $idResponsable, idEmpresa: $idEmpresa, fechaInicio: $fechaInicio, fechaFin: $fechaFin, tipoResponsabilidad: $tipoResponsabilidad, observaciones: $observaciones, activo: $activo, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ResponsableEmpleadoApiModelCopyWith<$Res>  {
  factory $ResponsableEmpleadoApiModelCopyWith(ResponsableEmpleadoApiModel value, $Res Function(ResponsableEmpleadoApiModel) _then) = _$ResponsableEmpleadoApiModelCopyWithImpl;
@useResult
$Res call({
 int idResponsableEmpleado, int idEmpleado, int idResponsable, int idEmpresa, DateTime fechaInicio, DateTime fechaFin, String tipoResponsabilidad, String observaciones, bool activo, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$ResponsableEmpleadoApiModelCopyWithImpl<$Res>
    implements $ResponsableEmpleadoApiModelCopyWith<$Res> {
  _$ResponsableEmpleadoApiModelCopyWithImpl(this._self, this._then);

  final ResponsableEmpleadoApiModel _self;
  final $Res Function(ResponsableEmpleadoApiModel) _then;

/// Create a copy of ResponsableEmpleadoApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idResponsableEmpleado = null,Object? idEmpleado = null,Object? idResponsable = null,Object? idEmpresa = null,Object? fechaInicio = null,Object? fechaFin = null,Object? tipoResponsabilidad = null,Object? observaciones = null,Object? activo = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
idResponsableEmpleado: null == idResponsableEmpleado ? _self.idResponsableEmpleado : idResponsableEmpleado // ignore: cast_nullable_to_non_nullable
as int,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,idResponsable: null == idResponsable ? _self.idResponsable : idResponsable // ignore: cast_nullable_to_non_nullable
as int,idEmpresa: null == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int,fechaInicio: null == fechaInicio ? _self.fechaInicio : fechaInicio // ignore: cast_nullable_to_non_nullable
as DateTime,fechaFin: null == fechaFin ? _self.fechaFin : fechaFin // ignore: cast_nullable_to_non_nullable
as DateTime,tipoResponsabilidad: null == tipoResponsabilidad ? _self.tipoResponsabilidad : tipoResponsabilidad // ignore: cast_nullable_to_non_nullable
as String,observaciones: null == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String,activo: null == activo ? _self.activo : activo // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ResponsableEmpleadoApiModel].
extension ResponsableEmpleadoApiModelPatterns on ResponsableEmpleadoApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResponsableEmpleadoApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponsableEmpleadoApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResponsableEmpleadoApiModel value)  $default,){
final _that = this;
switch (_that) {
case _ResponsableEmpleadoApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResponsableEmpleadoApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _ResponsableEmpleadoApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int idResponsableEmpleado,  int idEmpleado,  int idResponsable,  int idEmpresa,  DateTime fechaInicio,  DateTime fechaFin,  String tipoResponsabilidad,  String observaciones,  bool activo,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponsableEmpleadoApiModel() when $default != null:
return $default(_that.idResponsableEmpleado,_that.idEmpleado,_that.idResponsable,_that.idEmpresa,_that.fechaInicio,_that.fechaFin,_that.tipoResponsabilidad,_that.observaciones,_that.activo,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int idResponsableEmpleado,  int idEmpleado,  int idResponsable,  int idEmpresa,  DateTime fechaInicio,  DateTime fechaFin,  String tipoResponsabilidad,  String observaciones,  bool activo,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ResponsableEmpleadoApiModel():
return $default(_that.idResponsableEmpleado,_that.idEmpleado,_that.idResponsable,_that.idEmpresa,_that.fechaInicio,_that.fechaFin,_that.tipoResponsabilidad,_that.observaciones,_that.activo,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int idResponsableEmpleado,  int idEmpleado,  int idResponsable,  int idEmpresa,  DateTime fechaInicio,  DateTime fechaFin,  String tipoResponsabilidad,  String observaciones,  bool activo,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ResponsableEmpleadoApiModel() when $default != null:
return $default(_that.idResponsableEmpleado,_that.idEmpleado,_that.idResponsable,_that.idEmpresa,_that.fechaInicio,_that.fechaFin,_that.tipoResponsabilidad,_that.observaciones,_that.activo,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResponsableEmpleadoApiModel implements ResponsableEmpleadoApiModel {
  const _ResponsableEmpleadoApiModel({required this.idResponsableEmpleado, required this.idEmpleado, required this.idResponsable, required this.idEmpresa, required this.fechaInicio, required this.fechaFin, required this.tipoResponsabilidad, required this.observaciones, required this.activo, required this.createdAt, required this.updatedAt});
  factory _ResponsableEmpleadoApiModel.fromJson(Map<String, dynamic> json) => _$ResponsableEmpleadoApiModelFromJson(json);

@override final  int idResponsableEmpleado;
@override final  int idEmpleado;
@override final  int idResponsable;
@override final  int idEmpresa;
@override final  DateTime fechaInicio;
@override final  DateTime fechaFin;
@override final  String tipoResponsabilidad;
@override final  String observaciones;
@override final  bool activo;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of ResponsableEmpleadoApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponsableEmpleadoApiModelCopyWith<_ResponsableEmpleadoApiModel> get copyWith => __$ResponsableEmpleadoApiModelCopyWithImpl<_ResponsableEmpleadoApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponsableEmpleadoApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponsableEmpleadoApiModel&&(identical(other.idResponsableEmpleado, idResponsableEmpleado) || other.idResponsableEmpleado == idResponsableEmpleado)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.idResponsable, idResponsable) || other.idResponsable == idResponsable)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.fechaInicio, fechaInicio) || other.fechaInicio == fechaInicio)&&(identical(other.fechaFin, fechaFin) || other.fechaFin == fechaFin)&&(identical(other.tipoResponsabilidad, tipoResponsabilidad) || other.tipoResponsabilidad == tipoResponsabilidad)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.activo, activo) || other.activo == activo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idResponsableEmpleado,idEmpleado,idResponsable,idEmpresa,fechaInicio,fechaFin,tipoResponsabilidad,observaciones,activo,createdAt,updatedAt);

@override
String toString() {
  return 'ResponsableEmpleadoApiModel(idResponsableEmpleado: $idResponsableEmpleado, idEmpleado: $idEmpleado, idResponsable: $idResponsable, idEmpresa: $idEmpresa, fechaInicio: $fechaInicio, fechaFin: $fechaFin, tipoResponsabilidad: $tipoResponsabilidad, observaciones: $observaciones, activo: $activo, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ResponsableEmpleadoApiModelCopyWith<$Res> implements $ResponsableEmpleadoApiModelCopyWith<$Res> {
  factory _$ResponsableEmpleadoApiModelCopyWith(_ResponsableEmpleadoApiModel value, $Res Function(_ResponsableEmpleadoApiModel) _then) = __$ResponsableEmpleadoApiModelCopyWithImpl;
@override @useResult
$Res call({
 int idResponsableEmpleado, int idEmpleado, int idResponsable, int idEmpresa, DateTime fechaInicio, DateTime fechaFin, String tipoResponsabilidad, String observaciones, bool activo, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$ResponsableEmpleadoApiModelCopyWithImpl<$Res>
    implements _$ResponsableEmpleadoApiModelCopyWith<$Res> {
  __$ResponsableEmpleadoApiModelCopyWithImpl(this._self, this._then);

  final _ResponsableEmpleadoApiModel _self;
  final $Res Function(_ResponsableEmpleadoApiModel) _then;

/// Create a copy of ResponsableEmpleadoApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idResponsableEmpleado = null,Object? idEmpleado = null,Object? idResponsable = null,Object? idEmpresa = null,Object? fechaInicio = null,Object? fechaFin = null,Object? tipoResponsabilidad = null,Object? observaciones = null,Object? activo = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_ResponsableEmpleadoApiModel(
idResponsableEmpleado: null == idResponsableEmpleado ? _self.idResponsableEmpleado : idResponsableEmpleado // ignore: cast_nullable_to_non_nullable
as int,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,idResponsable: null == idResponsable ? _self.idResponsable : idResponsable // ignore: cast_nullable_to_non_nullable
as int,idEmpresa: null == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int,fechaInicio: null == fechaInicio ? _self.fechaInicio : fechaInicio // ignore: cast_nullable_to_non_nullable
as DateTime,fechaFin: null == fechaFin ? _self.fechaFin : fechaFin // ignore: cast_nullable_to_non_nullable
as DateTime,tipoResponsabilidad: null == tipoResponsabilidad ? _self.tipoResponsabilidad : tipoResponsabilidad // ignore: cast_nullable_to_non_nullable
as String,observaciones: null == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String,activo: null == activo ? _self.activo : activo // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on

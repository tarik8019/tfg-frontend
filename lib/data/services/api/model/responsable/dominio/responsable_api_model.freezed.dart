// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'responsable_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponsableApiModel {

 int get idResponsable; int get idEmpleado; int get idEmpresa; String get cargo; String get emailContacto; String get telefonoContacto; bool get activo; DateTime get fechaCreacion; DateTime get fechaActualizacion;
/// Create a copy of ResponsableApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponsableApiModelCopyWith<ResponsableApiModel> get copyWith => _$ResponsableApiModelCopyWithImpl<ResponsableApiModel>(this as ResponsableApiModel, _$identity);

  /// Serializes this ResponsableApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponsableApiModel&&(identical(other.idResponsable, idResponsable) || other.idResponsable == idResponsable)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.cargo, cargo) || other.cargo == cargo)&&(identical(other.emailContacto, emailContacto) || other.emailContacto == emailContacto)&&(identical(other.telefonoContacto, telefonoContacto) || other.telefonoContacto == telefonoContacto)&&(identical(other.activo, activo) || other.activo == activo)&&(identical(other.fechaCreacion, fechaCreacion) || other.fechaCreacion == fechaCreacion)&&(identical(other.fechaActualizacion, fechaActualizacion) || other.fechaActualizacion == fechaActualizacion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idResponsable,idEmpleado,idEmpresa,cargo,emailContacto,telefonoContacto,activo,fechaCreacion,fechaActualizacion);

@override
String toString() {
  return 'ResponsableApiModel(idResponsable: $idResponsable, idEmpleado: $idEmpleado, idEmpresa: $idEmpresa, cargo: $cargo, emailContacto: $emailContacto, telefonoContacto: $telefonoContacto, activo: $activo, fechaCreacion: $fechaCreacion, fechaActualizacion: $fechaActualizacion)';
}


}

/// @nodoc
abstract mixin class $ResponsableApiModelCopyWith<$Res>  {
  factory $ResponsableApiModelCopyWith(ResponsableApiModel value, $Res Function(ResponsableApiModel) _then) = _$ResponsableApiModelCopyWithImpl;
@useResult
$Res call({
 int idResponsable, int idEmpleado, int idEmpresa, String cargo, String emailContacto, String telefonoContacto, bool activo, DateTime fechaCreacion, DateTime fechaActualizacion
});




}
/// @nodoc
class _$ResponsableApiModelCopyWithImpl<$Res>
    implements $ResponsableApiModelCopyWith<$Res> {
  _$ResponsableApiModelCopyWithImpl(this._self, this._then);

  final ResponsableApiModel _self;
  final $Res Function(ResponsableApiModel) _then;

/// Create a copy of ResponsableApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idResponsable = null,Object? idEmpleado = null,Object? idEmpresa = null,Object? cargo = null,Object? emailContacto = null,Object? telefonoContacto = null,Object? activo = null,Object? fechaCreacion = null,Object? fechaActualizacion = null,}) {
  return _then(_self.copyWith(
idResponsable: null == idResponsable ? _self.idResponsable : idResponsable // ignore: cast_nullable_to_non_nullable
as int,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,idEmpresa: null == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int,cargo: null == cargo ? _self.cargo : cargo // ignore: cast_nullable_to_non_nullable
as String,emailContacto: null == emailContacto ? _self.emailContacto : emailContacto // ignore: cast_nullable_to_non_nullable
as String,telefonoContacto: null == telefonoContacto ? _self.telefonoContacto : telefonoContacto // ignore: cast_nullable_to_non_nullable
as String,activo: null == activo ? _self.activo : activo // ignore: cast_nullable_to_non_nullable
as bool,fechaCreacion: null == fechaCreacion ? _self.fechaCreacion : fechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime,fechaActualizacion: null == fechaActualizacion ? _self.fechaActualizacion : fechaActualizacion // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ResponsableApiModel].
extension ResponsableApiModelPatterns on ResponsableApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResponsableApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponsableApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResponsableApiModel value)  $default,){
final _that = this;
switch (_that) {
case _ResponsableApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResponsableApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _ResponsableApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int idResponsable,  int idEmpleado,  int idEmpresa,  String cargo,  String emailContacto,  String telefonoContacto,  bool activo,  DateTime fechaCreacion,  DateTime fechaActualizacion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponsableApiModel() when $default != null:
return $default(_that.idResponsable,_that.idEmpleado,_that.idEmpresa,_that.cargo,_that.emailContacto,_that.telefonoContacto,_that.activo,_that.fechaCreacion,_that.fechaActualizacion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int idResponsable,  int idEmpleado,  int idEmpresa,  String cargo,  String emailContacto,  String telefonoContacto,  bool activo,  DateTime fechaCreacion,  DateTime fechaActualizacion)  $default,) {final _that = this;
switch (_that) {
case _ResponsableApiModel():
return $default(_that.idResponsable,_that.idEmpleado,_that.idEmpresa,_that.cargo,_that.emailContacto,_that.telefonoContacto,_that.activo,_that.fechaCreacion,_that.fechaActualizacion);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int idResponsable,  int idEmpleado,  int idEmpresa,  String cargo,  String emailContacto,  String telefonoContacto,  bool activo,  DateTime fechaCreacion,  DateTime fechaActualizacion)?  $default,) {final _that = this;
switch (_that) {
case _ResponsableApiModel() when $default != null:
return $default(_that.idResponsable,_that.idEmpleado,_that.idEmpresa,_that.cargo,_that.emailContacto,_that.telefonoContacto,_that.activo,_that.fechaCreacion,_that.fechaActualizacion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResponsableApiModel implements ResponsableApiModel {
  const _ResponsableApiModel({required this.idResponsable, required this.idEmpleado, required this.idEmpresa, required this.cargo, required this.emailContacto, required this.telefonoContacto, required this.activo, required this.fechaCreacion, required this.fechaActualizacion});
  factory _ResponsableApiModel.fromJson(Map<String, dynamic> json) => _$ResponsableApiModelFromJson(json);

@override final  int idResponsable;
@override final  int idEmpleado;
@override final  int idEmpresa;
@override final  String cargo;
@override final  String emailContacto;
@override final  String telefonoContacto;
@override final  bool activo;
@override final  DateTime fechaCreacion;
@override final  DateTime fechaActualizacion;

/// Create a copy of ResponsableApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponsableApiModelCopyWith<_ResponsableApiModel> get copyWith => __$ResponsableApiModelCopyWithImpl<_ResponsableApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponsableApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponsableApiModel&&(identical(other.idResponsable, idResponsable) || other.idResponsable == idResponsable)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.cargo, cargo) || other.cargo == cargo)&&(identical(other.emailContacto, emailContacto) || other.emailContacto == emailContacto)&&(identical(other.telefonoContacto, telefonoContacto) || other.telefonoContacto == telefonoContacto)&&(identical(other.activo, activo) || other.activo == activo)&&(identical(other.fechaCreacion, fechaCreacion) || other.fechaCreacion == fechaCreacion)&&(identical(other.fechaActualizacion, fechaActualizacion) || other.fechaActualizacion == fechaActualizacion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idResponsable,idEmpleado,idEmpresa,cargo,emailContacto,telefonoContacto,activo,fechaCreacion,fechaActualizacion);

@override
String toString() {
  return 'ResponsableApiModel(idResponsable: $idResponsable, idEmpleado: $idEmpleado, idEmpresa: $idEmpresa, cargo: $cargo, emailContacto: $emailContacto, telefonoContacto: $telefonoContacto, activo: $activo, fechaCreacion: $fechaCreacion, fechaActualizacion: $fechaActualizacion)';
}


}

/// @nodoc
abstract mixin class _$ResponsableApiModelCopyWith<$Res> implements $ResponsableApiModelCopyWith<$Res> {
  factory _$ResponsableApiModelCopyWith(_ResponsableApiModel value, $Res Function(_ResponsableApiModel) _then) = __$ResponsableApiModelCopyWithImpl;
@override @useResult
$Res call({
 int idResponsable, int idEmpleado, int idEmpresa, String cargo, String emailContacto, String telefonoContacto, bool activo, DateTime fechaCreacion, DateTime fechaActualizacion
});




}
/// @nodoc
class __$ResponsableApiModelCopyWithImpl<$Res>
    implements _$ResponsableApiModelCopyWith<$Res> {
  __$ResponsableApiModelCopyWithImpl(this._self, this._then);

  final _ResponsableApiModel _self;
  final $Res Function(_ResponsableApiModel) _then;

/// Create a copy of ResponsableApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idResponsable = null,Object? idEmpleado = null,Object? idEmpresa = null,Object? cargo = null,Object? emailContacto = null,Object? telefonoContacto = null,Object? activo = null,Object? fechaCreacion = null,Object? fechaActualizacion = null,}) {
  return _then(_ResponsableApiModel(
idResponsable: null == idResponsable ? _self.idResponsable : idResponsable // ignore: cast_nullable_to_non_nullable
as int,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,idEmpresa: null == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int,cargo: null == cargo ? _self.cargo : cargo // ignore: cast_nullable_to_non_nullable
as String,emailContacto: null == emailContacto ? _self.emailContacto : emailContacto // ignore: cast_nullable_to_non_nullable
as String,telefonoContacto: null == telefonoContacto ? _self.telefonoContacto : telefonoContacto // ignore: cast_nullable_to_non_nullable
as String,activo: null == activo ? _self.activo : activo // ignore: cast_nullable_to_non_nullable
as bool,fechaCreacion: null == fechaCreacion ? _self.fechaCreacion : fechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime,fechaActualizacion: null == fechaActualizacion ? _self.fechaActualizacion : fechaActualizacion // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on

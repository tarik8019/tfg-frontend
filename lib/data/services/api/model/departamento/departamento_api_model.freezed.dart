// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'departamento_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DepartamentoApiModel {

 int? get idDepartamento; int get idEmpresa; String get codigoDepartamento; String get nombre; String get descripcion; int? get idResponsableEmpleado; String get emailContacto; String get telefonoContacto; bool get activo; DateTime get fechaCreacion; DateTime get fechaActualizacion;
/// Create a copy of DepartamentoApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepartamentoApiModelCopyWith<DepartamentoApiModel> get copyWith => _$DepartamentoApiModelCopyWithImpl<DepartamentoApiModel>(this as DepartamentoApiModel, _$identity);

  /// Serializes this DepartamentoApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DepartamentoApiModel&&(identical(other.idDepartamento, idDepartamento) || other.idDepartamento == idDepartamento)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.codigoDepartamento, codigoDepartamento) || other.codigoDepartamento == codigoDepartamento)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.idResponsableEmpleado, idResponsableEmpleado) || other.idResponsableEmpleado == idResponsableEmpleado)&&(identical(other.emailContacto, emailContacto) || other.emailContacto == emailContacto)&&(identical(other.telefonoContacto, telefonoContacto) || other.telefonoContacto == telefonoContacto)&&(identical(other.activo, activo) || other.activo == activo)&&(identical(other.fechaCreacion, fechaCreacion) || other.fechaCreacion == fechaCreacion)&&(identical(other.fechaActualizacion, fechaActualizacion) || other.fechaActualizacion == fechaActualizacion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDepartamento,idEmpresa,codigoDepartamento,nombre,descripcion,idResponsableEmpleado,emailContacto,telefonoContacto,activo,fechaCreacion,fechaActualizacion);

@override
String toString() {
  return 'DepartamentoApiModel(idDepartamento: $idDepartamento, idEmpresa: $idEmpresa, codigoDepartamento: $codigoDepartamento, nombre: $nombre, descripcion: $descripcion, idResponsableEmpleado: $idResponsableEmpleado, emailContacto: $emailContacto, telefonoContacto: $telefonoContacto, activo: $activo, fechaCreacion: $fechaCreacion, fechaActualizacion: $fechaActualizacion)';
}


}

/// @nodoc
abstract mixin class $DepartamentoApiModelCopyWith<$Res>  {
  factory $DepartamentoApiModelCopyWith(DepartamentoApiModel value, $Res Function(DepartamentoApiModel) _then) = _$DepartamentoApiModelCopyWithImpl;
@useResult
$Res call({
 int? idDepartamento, int idEmpresa, String codigoDepartamento, String nombre, String descripcion, int? idResponsableEmpleado, String emailContacto, String telefonoContacto, bool activo, DateTime fechaCreacion, DateTime fechaActualizacion
});




}
/// @nodoc
class _$DepartamentoApiModelCopyWithImpl<$Res>
    implements $DepartamentoApiModelCopyWith<$Res> {
  _$DepartamentoApiModelCopyWithImpl(this._self, this._then);

  final DepartamentoApiModel _self;
  final $Res Function(DepartamentoApiModel) _then;

/// Create a copy of DepartamentoApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idDepartamento = freezed,Object? idEmpresa = null,Object? codigoDepartamento = null,Object? nombre = null,Object? descripcion = null,Object? idResponsableEmpleado = freezed,Object? emailContacto = null,Object? telefonoContacto = null,Object? activo = null,Object? fechaCreacion = null,Object? fechaActualizacion = null,}) {
  return _then(_self.copyWith(
idDepartamento: freezed == idDepartamento ? _self.idDepartamento : idDepartamento // ignore: cast_nullable_to_non_nullable
as int?,idEmpresa: null == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int,codigoDepartamento: null == codigoDepartamento ? _self.codigoDepartamento : codigoDepartamento // ignore: cast_nullable_to_non_nullable
as String,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,idResponsableEmpleado: freezed == idResponsableEmpleado ? _self.idResponsableEmpleado : idResponsableEmpleado // ignore: cast_nullable_to_non_nullable
as int?,emailContacto: null == emailContacto ? _self.emailContacto : emailContacto // ignore: cast_nullable_to_non_nullable
as String,telefonoContacto: null == telefonoContacto ? _self.telefonoContacto : telefonoContacto // ignore: cast_nullable_to_non_nullable
as String,activo: null == activo ? _self.activo : activo // ignore: cast_nullable_to_non_nullable
as bool,fechaCreacion: null == fechaCreacion ? _self.fechaCreacion : fechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime,fechaActualizacion: null == fechaActualizacion ? _self.fechaActualizacion : fechaActualizacion // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DepartamentoApiModel].
extension DepartamentoApiModelPatterns on DepartamentoApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DepartamentoApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DepartamentoApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DepartamentoApiModel value)  $default,){
final _that = this;
switch (_that) {
case _DepartamentoApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DepartamentoApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _DepartamentoApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idDepartamento,  int idEmpresa,  String codigoDepartamento,  String nombre,  String descripcion,  int? idResponsableEmpleado,  String emailContacto,  String telefonoContacto,  bool activo,  DateTime fechaCreacion,  DateTime fechaActualizacion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DepartamentoApiModel() when $default != null:
return $default(_that.idDepartamento,_that.idEmpresa,_that.codigoDepartamento,_that.nombre,_that.descripcion,_that.idResponsableEmpleado,_that.emailContacto,_that.telefonoContacto,_that.activo,_that.fechaCreacion,_that.fechaActualizacion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idDepartamento,  int idEmpresa,  String codigoDepartamento,  String nombre,  String descripcion,  int? idResponsableEmpleado,  String emailContacto,  String telefonoContacto,  bool activo,  DateTime fechaCreacion,  DateTime fechaActualizacion)  $default,) {final _that = this;
switch (_that) {
case _DepartamentoApiModel():
return $default(_that.idDepartamento,_that.idEmpresa,_that.codigoDepartamento,_that.nombre,_that.descripcion,_that.idResponsableEmpleado,_that.emailContacto,_that.telefonoContacto,_that.activo,_that.fechaCreacion,_that.fechaActualizacion);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idDepartamento,  int idEmpresa,  String codigoDepartamento,  String nombre,  String descripcion,  int? idResponsableEmpleado,  String emailContacto,  String telefonoContacto,  bool activo,  DateTime fechaCreacion,  DateTime fechaActualizacion)?  $default,) {final _that = this;
switch (_that) {
case _DepartamentoApiModel() when $default != null:
return $default(_that.idDepartamento,_that.idEmpresa,_that.codigoDepartamento,_that.nombre,_that.descripcion,_that.idResponsableEmpleado,_that.emailContacto,_that.telefonoContacto,_that.activo,_that.fechaCreacion,_that.fechaActualizacion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DepartamentoApiModel implements DepartamentoApiModel {
  const _DepartamentoApiModel({this.idDepartamento, required this.idEmpresa, required this.codigoDepartamento, required this.nombre, required this.descripcion, this.idResponsableEmpleado, required this.emailContacto, required this.telefonoContacto, required this.activo, required this.fechaCreacion, required this.fechaActualizacion});
  factory _DepartamentoApiModel.fromJson(Map<String, dynamic> json) => _$DepartamentoApiModelFromJson(json);

@override final  int? idDepartamento;
@override final  int idEmpresa;
@override final  String codigoDepartamento;
@override final  String nombre;
@override final  String descripcion;
@override final  int? idResponsableEmpleado;
@override final  String emailContacto;
@override final  String telefonoContacto;
@override final  bool activo;
@override final  DateTime fechaCreacion;
@override final  DateTime fechaActualizacion;

/// Create a copy of DepartamentoApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DepartamentoApiModelCopyWith<_DepartamentoApiModel> get copyWith => __$DepartamentoApiModelCopyWithImpl<_DepartamentoApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DepartamentoApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DepartamentoApiModel&&(identical(other.idDepartamento, idDepartamento) || other.idDepartamento == idDepartamento)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.codigoDepartamento, codigoDepartamento) || other.codigoDepartamento == codigoDepartamento)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.idResponsableEmpleado, idResponsableEmpleado) || other.idResponsableEmpleado == idResponsableEmpleado)&&(identical(other.emailContacto, emailContacto) || other.emailContacto == emailContacto)&&(identical(other.telefonoContacto, telefonoContacto) || other.telefonoContacto == telefonoContacto)&&(identical(other.activo, activo) || other.activo == activo)&&(identical(other.fechaCreacion, fechaCreacion) || other.fechaCreacion == fechaCreacion)&&(identical(other.fechaActualizacion, fechaActualizacion) || other.fechaActualizacion == fechaActualizacion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDepartamento,idEmpresa,codigoDepartamento,nombre,descripcion,idResponsableEmpleado,emailContacto,telefonoContacto,activo,fechaCreacion,fechaActualizacion);

@override
String toString() {
  return 'DepartamentoApiModel(idDepartamento: $idDepartamento, idEmpresa: $idEmpresa, codigoDepartamento: $codigoDepartamento, nombre: $nombre, descripcion: $descripcion, idResponsableEmpleado: $idResponsableEmpleado, emailContacto: $emailContacto, telefonoContacto: $telefonoContacto, activo: $activo, fechaCreacion: $fechaCreacion, fechaActualizacion: $fechaActualizacion)';
}


}

/// @nodoc
abstract mixin class _$DepartamentoApiModelCopyWith<$Res> implements $DepartamentoApiModelCopyWith<$Res> {
  factory _$DepartamentoApiModelCopyWith(_DepartamentoApiModel value, $Res Function(_DepartamentoApiModel) _then) = __$DepartamentoApiModelCopyWithImpl;
@override @useResult
$Res call({
 int? idDepartamento, int idEmpresa, String codigoDepartamento, String nombre, String descripcion, int? idResponsableEmpleado, String emailContacto, String telefonoContacto, bool activo, DateTime fechaCreacion, DateTime fechaActualizacion
});




}
/// @nodoc
class __$DepartamentoApiModelCopyWithImpl<$Res>
    implements _$DepartamentoApiModelCopyWith<$Res> {
  __$DepartamentoApiModelCopyWithImpl(this._self, this._then);

  final _DepartamentoApiModel _self;
  final $Res Function(_DepartamentoApiModel) _then;

/// Create a copy of DepartamentoApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idDepartamento = freezed,Object? idEmpresa = null,Object? codigoDepartamento = null,Object? nombre = null,Object? descripcion = null,Object? idResponsableEmpleado = freezed,Object? emailContacto = null,Object? telefonoContacto = null,Object? activo = null,Object? fechaCreacion = null,Object? fechaActualizacion = null,}) {
  return _then(_DepartamentoApiModel(
idDepartamento: freezed == idDepartamento ? _self.idDepartamento : idDepartamento // ignore: cast_nullable_to_non_nullable
as int?,idEmpresa: null == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int,codigoDepartamento: null == codigoDepartamento ? _self.codigoDepartamento : codigoDepartamento // ignore: cast_nullable_to_non_nullable
as String,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,idResponsableEmpleado: freezed == idResponsableEmpleado ? _self.idResponsableEmpleado : idResponsableEmpleado // ignore: cast_nullable_to_non_nullable
as int?,emailContacto: null == emailContacto ? _self.emailContacto : emailContacto // ignore: cast_nullable_to_non_nullable
as String,telefonoContacto: null == telefonoContacto ? _self.telefonoContacto : telefonoContacto // ignore: cast_nullable_to_non_nullable
as String,activo: null == activo ? _self.activo : activo // ignore: cast_nullable_to_non_nullable
as bool,fechaCreacion: null == fechaCreacion ? _self.fechaCreacion : fechaCreacion // ignore: cast_nullable_to_non_nullable
as DateTime,fechaActualizacion: null == fechaActualizacion ? _self.fechaActualizacion : fechaActualizacion // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on

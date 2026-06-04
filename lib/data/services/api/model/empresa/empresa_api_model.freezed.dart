// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'empresa_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmpresaApiModel {

 int? get idEmpresa; String get codigoEmpresa; String get nombre; String get cif; String? get direccion; String? get ciudad; String? get pais; String? get fechaCreacion; int? get cantidadUsuarios; int? get cantidadEmpleados;
/// Create a copy of EmpresaApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmpresaApiModelCopyWith<EmpresaApiModel> get copyWith => _$EmpresaApiModelCopyWithImpl<EmpresaApiModel>(this as EmpresaApiModel, _$identity);

  /// Serializes this EmpresaApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmpresaApiModel&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.codigoEmpresa, codigoEmpresa) || other.codigoEmpresa == codigoEmpresa)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.cif, cif) || other.cif == cif)&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.ciudad, ciudad) || other.ciudad == ciudad)&&(identical(other.pais, pais) || other.pais == pais)&&(identical(other.fechaCreacion, fechaCreacion) || other.fechaCreacion == fechaCreacion)&&(identical(other.cantidadUsuarios, cantidadUsuarios) || other.cantidadUsuarios == cantidadUsuarios)&&(identical(other.cantidadEmpleados, cantidadEmpleados) || other.cantidadEmpleados == cantidadEmpleados));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpresa,codigoEmpresa,nombre,cif,direccion,ciudad,pais,fechaCreacion,cantidadUsuarios,cantidadEmpleados);

@override
String toString() {
  return 'EmpresaApiModel(idEmpresa: $idEmpresa, codigoEmpresa: $codigoEmpresa, nombre: $nombre, cif: $cif, direccion: $direccion, ciudad: $ciudad, pais: $pais, fechaCreacion: $fechaCreacion, cantidadUsuarios: $cantidadUsuarios, cantidadEmpleados: $cantidadEmpleados)';
}


}

/// @nodoc
abstract mixin class $EmpresaApiModelCopyWith<$Res>  {
  factory $EmpresaApiModelCopyWith(EmpresaApiModel value, $Res Function(EmpresaApiModel) _then) = _$EmpresaApiModelCopyWithImpl;
@useResult
$Res call({
 int? idEmpresa, String codigoEmpresa, String nombre, String cif, String? direccion, String? ciudad, String? pais, String? fechaCreacion, int? cantidadUsuarios, int? cantidadEmpleados
});




}
/// @nodoc
class _$EmpresaApiModelCopyWithImpl<$Res>
    implements $EmpresaApiModelCopyWith<$Res> {
  _$EmpresaApiModelCopyWithImpl(this._self, this._then);

  final EmpresaApiModel _self;
  final $Res Function(EmpresaApiModel) _then;

/// Create a copy of EmpresaApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idEmpresa = freezed,Object? codigoEmpresa = null,Object? nombre = null,Object? cif = null,Object? direccion = freezed,Object? ciudad = freezed,Object? pais = freezed,Object? fechaCreacion = freezed,Object? cantidadUsuarios = freezed,Object? cantidadEmpleados = freezed,}) {
  return _then(_self.copyWith(
idEmpresa: freezed == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int?,codigoEmpresa: null == codigoEmpresa ? _self.codigoEmpresa : codigoEmpresa // ignore: cast_nullable_to_non_nullable
as String,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,cif: null == cif ? _self.cif : cif // ignore: cast_nullable_to_non_nullable
as String,direccion: freezed == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String?,ciudad: freezed == ciudad ? _self.ciudad : ciudad // ignore: cast_nullable_to_non_nullable
as String?,pais: freezed == pais ? _self.pais : pais // ignore: cast_nullable_to_non_nullable
as String?,fechaCreacion: freezed == fechaCreacion ? _self.fechaCreacion : fechaCreacion // ignore: cast_nullable_to_non_nullable
as String?,cantidadUsuarios: freezed == cantidadUsuarios ? _self.cantidadUsuarios : cantidadUsuarios // ignore: cast_nullable_to_non_nullable
as int?,cantidadEmpleados: freezed == cantidadEmpleados ? _self.cantidadEmpleados : cantidadEmpleados // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [EmpresaApiModel].
extension EmpresaApiModelPatterns on EmpresaApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmpresaApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmpresaApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmpresaApiModel value)  $default,){
final _that = this;
switch (_that) {
case _EmpresaApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmpresaApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmpresaApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idEmpresa,  String codigoEmpresa,  String nombre,  String cif,  String? direccion,  String? ciudad,  String? pais,  String? fechaCreacion,  int? cantidadUsuarios,  int? cantidadEmpleados)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmpresaApiModel() when $default != null:
return $default(_that.idEmpresa,_that.codigoEmpresa,_that.nombre,_that.cif,_that.direccion,_that.ciudad,_that.pais,_that.fechaCreacion,_that.cantidadUsuarios,_that.cantidadEmpleados);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idEmpresa,  String codigoEmpresa,  String nombre,  String cif,  String? direccion,  String? ciudad,  String? pais,  String? fechaCreacion,  int? cantidadUsuarios,  int? cantidadEmpleados)  $default,) {final _that = this;
switch (_that) {
case _EmpresaApiModel():
return $default(_that.idEmpresa,_that.codigoEmpresa,_that.nombre,_that.cif,_that.direccion,_that.ciudad,_that.pais,_that.fechaCreacion,_that.cantidadUsuarios,_that.cantidadEmpleados);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idEmpresa,  String codigoEmpresa,  String nombre,  String cif,  String? direccion,  String? ciudad,  String? pais,  String? fechaCreacion,  int? cantidadUsuarios,  int? cantidadEmpleados)?  $default,) {final _that = this;
switch (_that) {
case _EmpresaApiModel() when $default != null:
return $default(_that.idEmpresa,_that.codigoEmpresa,_that.nombre,_that.cif,_that.direccion,_that.ciudad,_that.pais,_that.fechaCreacion,_that.cantidadUsuarios,_that.cantidadEmpleados);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmpresaApiModel implements EmpresaApiModel {
  const _EmpresaApiModel({this.idEmpresa, required this.codigoEmpresa, required this.nombre, required this.cif, this.direccion, this.ciudad, this.pais, this.fechaCreacion, this.cantidadUsuarios, this.cantidadEmpleados});
  factory _EmpresaApiModel.fromJson(Map<String, dynamic> json) => _$EmpresaApiModelFromJson(json);

@override final  int? idEmpresa;
@override final  String codigoEmpresa;
@override final  String nombre;
@override final  String cif;
@override final  String? direccion;
@override final  String? ciudad;
@override final  String? pais;
@override final  String? fechaCreacion;
@override final  int? cantidadUsuarios;
@override final  int? cantidadEmpleados;

/// Create a copy of EmpresaApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmpresaApiModelCopyWith<_EmpresaApiModel> get copyWith => __$EmpresaApiModelCopyWithImpl<_EmpresaApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmpresaApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmpresaApiModel&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.codigoEmpresa, codigoEmpresa) || other.codigoEmpresa == codigoEmpresa)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.cif, cif) || other.cif == cif)&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.ciudad, ciudad) || other.ciudad == ciudad)&&(identical(other.pais, pais) || other.pais == pais)&&(identical(other.fechaCreacion, fechaCreacion) || other.fechaCreacion == fechaCreacion)&&(identical(other.cantidadUsuarios, cantidadUsuarios) || other.cantidadUsuarios == cantidadUsuarios)&&(identical(other.cantidadEmpleados, cantidadEmpleados) || other.cantidadEmpleados == cantidadEmpleados));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpresa,codigoEmpresa,nombre,cif,direccion,ciudad,pais,fechaCreacion,cantidadUsuarios,cantidadEmpleados);

@override
String toString() {
  return 'EmpresaApiModel(idEmpresa: $idEmpresa, codigoEmpresa: $codigoEmpresa, nombre: $nombre, cif: $cif, direccion: $direccion, ciudad: $ciudad, pais: $pais, fechaCreacion: $fechaCreacion, cantidadUsuarios: $cantidadUsuarios, cantidadEmpleados: $cantidadEmpleados)';
}


}

/// @nodoc
abstract mixin class _$EmpresaApiModelCopyWith<$Res> implements $EmpresaApiModelCopyWith<$Res> {
  factory _$EmpresaApiModelCopyWith(_EmpresaApiModel value, $Res Function(_EmpresaApiModel) _then) = __$EmpresaApiModelCopyWithImpl;
@override @useResult
$Res call({
 int? idEmpresa, String codigoEmpresa, String nombre, String cif, String? direccion, String? ciudad, String? pais, String? fechaCreacion, int? cantidadUsuarios, int? cantidadEmpleados
});




}
/// @nodoc
class __$EmpresaApiModelCopyWithImpl<$Res>
    implements _$EmpresaApiModelCopyWith<$Res> {
  __$EmpresaApiModelCopyWithImpl(this._self, this._then);

  final _EmpresaApiModel _self;
  final $Res Function(_EmpresaApiModel) _then;

/// Create a copy of EmpresaApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idEmpresa = freezed,Object? codigoEmpresa = null,Object? nombre = null,Object? cif = null,Object? direccion = freezed,Object? ciudad = freezed,Object? pais = freezed,Object? fechaCreacion = freezed,Object? cantidadUsuarios = freezed,Object? cantidadEmpleados = freezed,}) {
  return _then(_EmpresaApiModel(
idEmpresa: freezed == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int?,codigoEmpresa: null == codigoEmpresa ? _self.codigoEmpresa : codigoEmpresa // ignore: cast_nullable_to_non_nullable
as String,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,cif: null == cif ? _self.cif : cif // ignore: cast_nullable_to_non_nullable
as String,direccion: freezed == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String?,ciudad: freezed == ciudad ? _self.ciudad : ciudad // ignore: cast_nullable_to_non_nullable
as String?,pais: freezed == pais ? _self.pais : pais // ignore: cast_nullable_to_non_nullable
as String?,fechaCreacion: freezed == fechaCreacion ? _self.fechaCreacion : fechaCreacion // ignore: cast_nullable_to_non_nullable
as String?,cantidadUsuarios: freezed == cantidadUsuarios ? _self.cantidadUsuarios : cantidadUsuarios // ignore: cast_nullable_to_non_nullable
as int?,cantidadEmpleados: freezed == cantidadEmpleados ? _self.cantidadEmpleados : cantidadEmpleados // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

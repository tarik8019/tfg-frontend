// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'solicitud_ausencia_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SolicitudAusenciaApiModel {

 int? get idSolicitud; int get idEmpleado; String get tipo; DateTime get fechaInicio; DateTime get fechaFin; String get estado; String? get documentoJustificante;
/// Create a copy of SolicitudAusenciaApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SolicitudAusenciaApiModelCopyWith<SolicitudAusenciaApiModel> get copyWith => _$SolicitudAusenciaApiModelCopyWithImpl<SolicitudAusenciaApiModel>(this as SolicitudAusenciaApiModel, _$identity);

  /// Serializes this SolicitudAusenciaApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SolicitudAusenciaApiModel&&(identical(other.idSolicitud, idSolicitud) || other.idSolicitud == idSolicitud)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.fechaInicio, fechaInicio) || other.fechaInicio == fechaInicio)&&(identical(other.fechaFin, fechaFin) || other.fechaFin == fechaFin)&&(identical(other.estado, estado) || other.estado == estado)&&(identical(other.documentoJustificante, documentoJustificante) || other.documentoJustificante == documentoJustificante));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idSolicitud,idEmpleado,tipo,fechaInicio,fechaFin,estado,documentoJustificante);

@override
String toString() {
  return 'SolicitudAusenciaApiModel(idSolicitud: $idSolicitud, idEmpleado: $idEmpleado, tipo: $tipo, fechaInicio: $fechaInicio, fechaFin: $fechaFin, estado: $estado, documentoJustificante: $documentoJustificante)';
}


}

/// @nodoc
abstract mixin class $SolicitudAusenciaApiModelCopyWith<$Res>  {
  factory $SolicitudAusenciaApiModelCopyWith(SolicitudAusenciaApiModel value, $Res Function(SolicitudAusenciaApiModel) _then) = _$SolicitudAusenciaApiModelCopyWithImpl;
@useResult
$Res call({
 int? idSolicitud, int idEmpleado, String tipo, DateTime fechaInicio, DateTime fechaFin, String estado, String? documentoJustificante
});




}
/// @nodoc
class _$SolicitudAusenciaApiModelCopyWithImpl<$Res>
    implements $SolicitudAusenciaApiModelCopyWith<$Res> {
  _$SolicitudAusenciaApiModelCopyWithImpl(this._self, this._then);

  final SolicitudAusenciaApiModel _self;
  final $Res Function(SolicitudAusenciaApiModel) _then;

/// Create a copy of SolicitudAusenciaApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idSolicitud = freezed,Object? idEmpleado = null,Object? tipo = null,Object? fechaInicio = null,Object? fechaFin = null,Object? estado = null,Object? documentoJustificante = freezed,}) {
  return _then(_self.copyWith(
idSolicitud: freezed == idSolicitud ? _self.idSolicitud : idSolicitud // ignore: cast_nullable_to_non_nullable
as int?,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,fechaInicio: null == fechaInicio ? _self.fechaInicio : fechaInicio // ignore: cast_nullable_to_non_nullable
as DateTime,fechaFin: null == fechaFin ? _self.fechaFin : fechaFin // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,documentoJustificante: freezed == documentoJustificante ? _self.documentoJustificante : documentoJustificante // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SolicitudAusenciaApiModel].
extension SolicitudAusenciaApiModelPatterns on SolicitudAusenciaApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SolicitudAusenciaApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SolicitudAusenciaApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SolicitudAusenciaApiModel value)  $default,){
final _that = this;
switch (_that) {
case _SolicitudAusenciaApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SolicitudAusenciaApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _SolicitudAusenciaApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idSolicitud,  int idEmpleado,  String tipo,  DateTime fechaInicio,  DateTime fechaFin,  String estado,  String? documentoJustificante)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SolicitudAusenciaApiModel() when $default != null:
return $default(_that.idSolicitud,_that.idEmpleado,_that.tipo,_that.fechaInicio,_that.fechaFin,_that.estado,_that.documentoJustificante);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idSolicitud,  int idEmpleado,  String tipo,  DateTime fechaInicio,  DateTime fechaFin,  String estado,  String? documentoJustificante)  $default,) {final _that = this;
switch (_that) {
case _SolicitudAusenciaApiModel():
return $default(_that.idSolicitud,_that.idEmpleado,_that.tipo,_that.fechaInicio,_that.fechaFin,_that.estado,_that.documentoJustificante);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idSolicitud,  int idEmpleado,  String tipo,  DateTime fechaInicio,  DateTime fechaFin,  String estado,  String? documentoJustificante)?  $default,) {final _that = this;
switch (_that) {
case _SolicitudAusenciaApiModel() when $default != null:
return $default(_that.idSolicitud,_that.idEmpleado,_that.tipo,_that.fechaInicio,_that.fechaFin,_that.estado,_that.documentoJustificante);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SolicitudAusenciaApiModel implements SolicitudAusenciaApiModel {
  const _SolicitudAusenciaApiModel({this.idSolicitud, required this.idEmpleado, required this.tipo, required this.fechaInicio, required this.fechaFin, required this.estado, this.documentoJustificante});
  factory _SolicitudAusenciaApiModel.fromJson(Map<String, dynamic> json) => _$SolicitudAusenciaApiModelFromJson(json);

@override final  int? idSolicitud;
@override final  int idEmpleado;
@override final  String tipo;
@override final  DateTime fechaInicio;
@override final  DateTime fechaFin;
@override final  String estado;
@override final  String? documentoJustificante;

/// Create a copy of SolicitudAusenciaApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SolicitudAusenciaApiModelCopyWith<_SolicitudAusenciaApiModel> get copyWith => __$SolicitudAusenciaApiModelCopyWithImpl<_SolicitudAusenciaApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SolicitudAusenciaApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SolicitudAusenciaApiModel&&(identical(other.idSolicitud, idSolicitud) || other.idSolicitud == idSolicitud)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.fechaInicio, fechaInicio) || other.fechaInicio == fechaInicio)&&(identical(other.fechaFin, fechaFin) || other.fechaFin == fechaFin)&&(identical(other.estado, estado) || other.estado == estado)&&(identical(other.documentoJustificante, documentoJustificante) || other.documentoJustificante == documentoJustificante));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idSolicitud,idEmpleado,tipo,fechaInicio,fechaFin,estado,documentoJustificante);

@override
String toString() {
  return 'SolicitudAusenciaApiModel(idSolicitud: $idSolicitud, idEmpleado: $idEmpleado, tipo: $tipo, fechaInicio: $fechaInicio, fechaFin: $fechaFin, estado: $estado, documentoJustificante: $documentoJustificante)';
}


}

/// @nodoc
abstract mixin class _$SolicitudAusenciaApiModelCopyWith<$Res> implements $SolicitudAusenciaApiModelCopyWith<$Res> {
  factory _$SolicitudAusenciaApiModelCopyWith(_SolicitudAusenciaApiModel value, $Res Function(_SolicitudAusenciaApiModel) _then) = __$SolicitudAusenciaApiModelCopyWithImpl;
@override @useResult
$Res call({
 int? idSolicitud, int idEmpleado, String tipo, DateTime fechaInicio, DateTime fechaFin, String estado, String? documentoJustificante
});




}
/// @nodoc
class __$SolicitudAusenciaApiModelCopyWithImpl<$Res>
    implements _$SolicitudAusenciaApiModelCopyWith<$Res> {
  __$SolicitudAusenciaApiModelCopyWithImpl(this._self, this._then);

  final _SolicitudAusenciaApiModel _self;
  final $Res Function(_SolicitudAusenciaApiModel) _then;

/// Create a copy of SolicitudAusenciaApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idSolicitud = freezed,Object? idEmpleado = null,Object? tipo = null,Object? fechaInicio = null,Object? fechaFin = null,Object? estado = null,Object? documentoJustificante = freezed,}) {
  return _then(_SolicitudAusenciaApiModel(
idSolicitud: freezed == idSolicitud ? _self.idSolicitud : idSolicitud // ignore: cast_nullable_to_non_nullable
as int?,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,fechaInicio: null == fechaInicio ? _self.fechaInicio : fechaInicio // ignore: cast_nullable_to_non_nullable
as DateTime,fechaFin: null == fechaFin ? _self.fechaFin : fechaFin // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,documentoJustificante: freezed == documentoJustificante ? _self.documentoJustificante : documentoJustificante // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

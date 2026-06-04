// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notificacion_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificacionApiModel {

 int? get idNotificacion; int get idUsuario; String? get titulo; String? get mensaje; String get tipo; DateTime get fechaEnvio; String get estado;
/// Create a copy of NotificacionApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificacionApiModelCopyWith<NotificacionApiModel> get copyWith => _$NotificacionApiModelCopyWithImpl<NotificacionApiModel>(this as NotificacionApiModel, _$identity);

  /// Serializes this NotificacionApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificacionApiModel&&(identical(other.idNotificacion, idNotificacion) || other.idNotificacion == idNotificacion)&&(identical(other.idUsuario, idUsuario) || other.idUsuario == idUsuario)&&(identical(other.titulo, titulo) || other.titulo == titulo)&&(identical(other.mensaje, mensaje) || other.mensaje == mensaje)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.fechaEnvio, fechaEnvio) || other.fechaEnvio == fechaEnvio)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idNotificacion,idUsuario,titulo,mensaje,tipo,fechaEnvio,estado);

@override
String toString() {
  return 'NotificacionApiModel(idNotificacion: $idNotificacion, idUsuario: $idUsuario, titulo: $titulo, mensaje: $mensaje, tipo: $tipo, fechaEnvio: $fechaEnvio, estado: $estado)';
}


}

/// @nodoc
abstract mixin class $NotificacionApiModelCopyWith<$Res>  {
  factory $NotificacionApiModelCopyWith(NotificacionApiModel value, $Res Function(NotificacionApiModel) _then) = _$NotificacionApiModelCopyWithImpl;
@useResult
$Res call({
 int? idNotificacion, int idUsuario, String? titulo, String? mensaje, String tipo, DateTime fechaEnvio, String estado
});




}
/// @nodoc
class _$NotificacionApiModelCopyWithImpl<$Res>
    implements $NotificacionApiModelCopyWith<$Res> {
  _$NotificacionApiModelCopyWithImpl(this._self, this._then);

  final NotificacionApiModel _self;
  final $Res Function(NotificacionApiModel) _then;

/// Create a copy of NotificacionApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idNotificacion = freezed,Object? idUsuario = null,Object? titulo = freezed,Object? mensaje = freezed,Object? tipo = null,Object? fechaEnvio = null,Object? estado = null,}) {
  return _then(_self.copyWith(
idNotificacion: freezed == idNotificacion ? _self.idNotificacion : idNotificacion // ignore: cast_nullable_to_non_nullable
as int?,idUsuario: null == idUsuario ? _self.idUsuario : idUsuario // ignore: cast_nullable_to_non_nullable
as int,titulo: freezed == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String?,mensaje: freezed == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String?,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,fechaEnvio: null == fechaEnvio ? _self.fechaEnvio : fechaEnvio // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificacionApiModel].
extension NotificacionApiModelPatterns on NotificacionApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificacionApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificacionApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificacionApiModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificacionApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificacionApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificacionApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idNotificacion,  int idUsuario,  String? titulo,  String? mensaje,  String tipo,  DateTime fechaEnvio,  String estado)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificacionApiModel() when $default != null:
return $default(_that.idNotificacion,_that.idUsuario,_that.titulo,_that.mensaje,_that.tipo,_that.fechaEnvio,_that.estado);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idNotificacion,  int idUsuario,  String? titulo,  String? mensaje,  String tipo,  DateTime fechaEnvio,  String estado)  $default,) {final _that = this;
switch (_that) {
case _NotificacionApiModel():
return $default(_that.idNotificacion,_that.idUsuario,_that.titulo,_that.mensaje,_that.tipo,_that.fechaEnvio,_that.estado);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idNotificacion,  int idUsuario,  String? titulo,  String? mensaje,  String tipo,  DateTime fechaEnvio,  String estado)?  $default,) {final _that = this;
switch (_that) {
case _NotificacionApiModel() when $default != null:
return $default(_that.idNotificacion,_that.idUsuario,_that.titulo,_that.mensaje,_that.tipo,_that.fechaEnvio,_that.estado);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificacionApiModel implements NotificacionApiModel {
  const _NotificacionApiModel({this.idNotificacion, required this.idUsuario, this.titulo, this.mensaje, required this.tipo, required this.fechaEnvio, required this.estado});
  factory _NotificacionApiModel.fromJson(Map<String, dynamic> json) => _$NotificacionApiModelFromJson(json);

@override final  int? idNotificacion;
@override final  int idUsuario;
@override final  String? titulo;
@override final  String? mensaje;
@override final  String tipo;
@override final  DateTime fechaEnvio;
@override final  String estado;

/// Create a copy of NotificacionApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificacionApiModelCopyWith<_NotificacionApiModel> get copyWith => __$NotificacionApiModelCopyWithImpl<_NotificacionApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificacionApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificacionApiModel&&(identical(other.idNotificacion, idNotificacion) || other.idNotificacion == idNotificacion)&&(identical(other.idUsuario, idUsuario) || other.idUsuario == idUsuario)&&(identical(other.titulo, titulo) || other.titulo == titulo)&&(identical(other.mensaje, mensaje) || other.mensaje == mensaje)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.fechaEnvio, fechaEnvio) || other.fechaEnvio == fechaEnvio)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idNotificacion,idUsuario,titulo,mensaje,tipo,fechaEnvio,estado);

@override
String toString() {
  return 'NotificacionApiModel(idNotificacion: $idNotificacion, idUsuario: $idUsuario, titulo: $titulo, mensaje: $mensaje, tipo: $tipo, fechaEnvio: $fechaEnvio, estado: $estado)';
}


}

/// @nodoc
abstract mixin class _$NotificacionApiModelCopyWith<$Res> implements $NotificacionApiModelCopyWith<$Res> {
  factory _$NotificacionApiModelCopyWith(_NotificacionApiModel value, $Res Function(_NotificacionApiModel) _then) = __$NotificacionApiModelCopyWithImpl;
@override @useResult
$Res call({
 int? idNotificacion, int idUsuario, String? titulo, String? mensaje, String tipo, DateTime fechaEnvio, String estado
});




}
/// @nodoc
class __$NotificacionApiModelCopyWithImpl<$Res>
    implements _$NotificacionApiModelCopyWith<$Res> {
  __$NotificacionApiModelCopyWithImpl(this._self, this._then);

  final _NotificacionApiModel _self;
  final $Res Function(_NotificacionApiModel) _then;

/// Create a copy of NotificacionApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idNotificacion = freezed,Object? idUsuario = null,Object? titulo = freezed,Object? mensaje = freezed,Object? tipo = null,Object? fechaEnvio = null,Object? estado = null,}) {
  return _then(_NotificacionApiModel(
idNotificacion: freezed == idNotificacion ? _self.idNotificacion : idNotificacion // ignore: cast_nullable_to_non_nullable
as int?,idUsuario: null == idUsuario ? _self.idUsuario : idUsuario // ignore: cast_nullable_to_non_nullable
as int,titulo: freezed == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String?,mensaje: freezed == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String?,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,fechaEnvio: null == fechaEnvio ? _self.fechaEnvio : fechaEnvio // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

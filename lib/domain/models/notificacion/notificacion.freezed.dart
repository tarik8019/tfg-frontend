// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notificacion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Notificacion {

 int? get idNotificacion; User get usuario; String? get titulo; String? get mensaje; String get tipo; DateTime get fechaEnvio; String get estado;
/// Create a copy of Notificacion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificacionCopyWith<Notificacion> get copyWith => _$NotificacionCopyWithImpl<Notificacion>(this as Notificacion, _$identity);

  /// Serializes this Notificacion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Notificacion&&(identical(other.idNotificacion, idNotificacion) || other.idNotificacion == idNotificacion)&&(identical(other.usuario, usuario) || other.usuario == usuario)&&(identical(other.titulo, titulo) || other.titulo == titulo)&&(identical(other.mensaje, mensaje) || other.mensaje == mensaje)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.fechaEnvio, fechaEnvio) || other.fechaEnvio == fechaEnvio)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idNotificacion,usuario,titulo,mensaje,tipo,fechaEnvio,estado);

@override
String toString() {
  return 'Notificacion(idNotificacion: $idNotificacion, usuario: $usuario, titulo: $titulo, mensaje: $mensaje, tipo: $tipo, fechaEnvio: $fechaEnvio, estado: $estado)';
}


}

/// @nodoc
abstract mixin class $NotificacionCopyWith<$Res>  {
  factory $NotificacionCopyWith(Notificacion value, $Res Function(Notificacion) _then) = _$NotificacionCopyWithImpl;
@useResult
$Res call({
 int? idNotificacion, User usuario, String? titulo, String? mensaje, String tipo, DateTime fechaEnvio, String estado
});


$UserCopyWith<$Res> get usuario;

}
/// @nodoc
class _$NotificacionCopyWithImpl<$Res>
    implements $NotificacionCopyWith<$Res> {
  _$NotificacionCopyWithImpl(this._self, this._then);

  final Notificacion _self;
  final $Res Function(Notificacion) _then;

/// Create a copy of Notificacion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idNotificacion = freezed,Object? usuario = null,Object? titulo = freezed,Object? mensaje = freezed,Object? tipo = null,Object? fechaEnvio = null,Object? estado = null,}) {
  return _then(_self.copyWith(
idNotificacion: freezed == idNotificacion ? _self.idNotificacion : idNotificacion // ignore: cast_nullable_to_non_nullable
as int?,usuario: null == usuario ? _self.usuario : usuario // ignore: cast_nullable_to_non_nullable
as User,titulo: freezed == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String?,mensaje: freezed == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String?,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,fechaEnvio: null == fechaEnvio ? _self.fechaEnvio : fechaEnvio // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of Notificacion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get usuario {
  
  return $UserCopyWith<$Res>(_self.usuario, (value) {
    return _then(_self.copyWith(usuario: value));
  });
}
}


/// Adds pattern-matching-related methods to [Notificacion].
extension NotificacionPatterns on Notificacion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Notificacion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Notificacion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Notificacion value)  $default,){
final _that = this;
switch (_that) {
case _Notificacion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Notificacion value)?  $default,){
final _that = this;
switch (_that) {
case _Notificacion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idNotificacion,  User usuario,  String? titulo,  String? mensaje,  String tipo,  DateTime fechaEnvio,  String estado)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Notificacion() when $default != null:
return $default(_that.idNotificacion,_that.usuario,_that.titulo,_that.mensaje,_that.tipo,_that.fechaEnvio,_that.estado);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idNotificacion,  User usuario,  String? titulo,  String? mensaje,  String tipo,  DateTime fechaEnvio,  String estado)  $default,) {final _that = this;
switch (_that) {
case _Notificacion():
return $default(_that.idNotificacion,_that.usuario,_that.titulo,_that.mensaje,_that.tipo,_that.fechaEnvio,_that.estado);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idNotificacion,  User usuario,  String? titulo,  String? mensaje,  String tipo,  DateTime fechaEnvio,  String estado)?  $default,) {final _that = this;
switch (_that) {
case _Notificacion() when $default != null:
return $default(_that.idNotificacion,_that.usuario,_that.titulo,_that.mensaje,_that.tipo,_that.fechaEnvio,_that.estado);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Notificacion implements Notificacion {
  const _Notificacion({this.idNotificacion, required this.usuario, this.titulo, this.mensaje, required this.tipo, required this.fechaEnvio, required this.estado});
  factory _Notificacion.fromJson(Map<String, dynamic> json) => _$NotificacionFromJson(json);

@override final  int? idNotificacion;
@override final  User usuario;
@override final  String? titulo;
@override final  String? mensaje;
@override final  String tipo;
@override final  DateTime fechaEnvio;
@override final  String estado;

/// Create a copy of Notificacion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificacionCopyWith<_Notificacion> get copyWith => __$NotificacionCopyWithImpl<_Notificacion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificacionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Notificacion&&(identical(other.idNotificacion, idNotificacion) || other.idNotificacion == idNotificacion)&&(identical(other.usuario, usuario) || other.usuario == usuario)&&(identical(other.titulo, titulo) || other.titulo == titulo)&&(identical(other.mensaje, mensaje) || other.mensaje == mensaje)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.fechaEnvio, fechaEnvio) || other.fechaEnvio == fechaEnvio)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idNotificacion,usuario,titulo,mensaje,tipo,fechaEnvio,estado);

@override
String toString() {
  return 'Notificacion(idNotificacion: $idNotificacion, usuario: $usuario, titulo: $titulo, mensaje: $mensaje, tipo: $tipo, fechaEnvio: $fechaEnvio, estado: $estado)';
}


}

/// @nodoc
abstract mixin class _$NotificacionCopyWith<$Res> implements $NotificacionCopyWith<$Res> {
  factory _$NotificacionCopyWith(_Notificacion value, $Res Function(_Notificacion) _then) = __$NotificacionCopyWithImpl;
@override @useResult
$Res call({
 int? idNotificacion, User usuario, String? titulo, String? mensaje, String tipo, DateTime fechaEnvio, String estado
});


@override $UserCopyWith<$Res> get usuario;

}
/// @nodoc
class __$NotificacionCopyWithImpl<$Res>
    implements _$NotificacionCopyWith<$Res> {
  __$NotificacionCopyWithImpl(this._self, this._then);

  final _Notificacion _self;
  final $Res Function(_Notificacion) _then;

/// Create a copy of Notificacion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idNotificacion = freezed,Object? usuario = null,Object? titulo = freezed,Object? mensaje = freezed,Object? tipo = null,Object? fechaEnvio = null,Object? estado = null,}) {
  return _then(_Notificacion(
idNotificacion: freezed == idNotificacion ? _self.idNotificacion : idNotificacion // ignore: cast_nullable_to_non_nullable
as int?,usuario: null == usuario ? _self.usuario : usuario // ignore: cast_nullable_to_non_nullable
as User,titulo: freezed == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String?,mensaje: freezed == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String?,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,fechaEnvio: null == fechaEnvio ? _self.fechaEnvio : fechaEnvio // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of Notificacion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get usuario {
  
  return $UserCopyWith<$Res>(_self.usuario, (value) {
    return _then(_self.copyWith(usuario: value));
  });
}
}

// dart format on

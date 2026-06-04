// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notificacion_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificacionConfig {

 int? get idUsuario; String? get titulo; String? get mensaje; DateTime? get fecha; bool get leida;
/// Create a copy of NotificacionConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificacionConfigCopyWith<NotificacionConfig> get copyWith => _$NotificacionConfigCopyWithImpl<NotificacionConfig>(this as NotificacionConfig, _$identity);

  /// Serializes this NotificacionConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificacionConfig&&(identical(other.idUsuario, idUsuario) || other.idUsuario == idUsuario)&&(identical(other.titulo, titulo) || other.titulo == titulo)&&(identical(other.mensaje, mensaje) || other.mensaje == mensaje)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.leida, leida) || other.leida == leida));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idUsuario,titulo,mensaje,fecha,leida);

@override
String toString() {
  return 'NotificacionConfig(idUsuario: $idUsuario, titulo: $titulo, mensaje: $mensaje, fecha: $fecha, leida: $leida)';
}


}

/// @nodoc
abstract mixin class $NotificacionConfigCopyWith<$Res>  {
  factory $NotificacionConfigCopyWith(NotificacionConfig value, $Res Function(NotificacionConfig) _then) = _$NotificacionConfigCopyWithImpl;
@useResult
$Res call({
 int? idUsuario, String? titulo, String? mensaje, DateTime? fecha, bool leida
});




}
/// @nodoc
class _$NotificacionConfigCopyWithImpl<$Res>
    implements $NotificacionConfigCopyWith<$Res> {
  _$NotificacionConfigCopyWithImpl(this._self, this._then);

  final NotificacionConfig _self;
  final $Res Function(NotificacionConfig) _then;

/// Create a copy of NotificacionConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idUsuario = freezed,Object? titulo = freezed,Object? mensaje = freezed,Object? fecha = freezed,Object? leida = null,}) {
  return _then(_self.copyWith(
idUsuario: freezed == idUsuario ? _self.idUsuario : idUsuario // ignore: cast_nullable_to_non_nullable
as int?,titulo: freezed == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String?,mensaje: freezed == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String?,fecha: freezed == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime?,leida: null == leida ? _self.leida : leida // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificacionConfig].
extension NotificacionConfigPatterns on NotificacionConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificacionConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificacionConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificacionConfig value)  $default,){
final _that = this;
switch (_that) {
case _NotificacionConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificacionConfig value)?  $default,){
final _that = this;
switch (_that) {
case _NotificacionConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idUsuario,  String? titulo,  String? mensaje,  DateTime? fecha,  bool leida)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificacionConfig() when $default != null:
return $default(_that.idUsuario,_that.titulo,_that.mensaje,_that.fecha,_that.leida);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idUsuario,  String? titulo,  String? mensaje,  DateTime? fecha,  bool leida)  $default,) {final _that = this;
switch (_that) {
case _NotificacionConfig():
return $default(_that.idUsuario,_that.titulo,_that.mensaje,_that.fecha,_that.leida);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idUsuario,  String? titulo,  String? mensaje,  DateTime? fecha,  bool leida)?  $default,) {final _that = this;
switch (_that) {
case _NotificacionConfig() when $default != null:
return $default(_that.idUsuario,_that.titulo,_that.mensaje,_that.fecha,_that.leida);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificacionConfig implements NotificacionConfig {
  const _NotificacionConfig({this.idUsuario, this.titulo, this.mensaje, this.fecha, this.leida = false});
  factory _NotificacionConfig.fromJson(Map<String, dynamic> json) => _$NotificacionConfigFromJson(json);

@override final  int? idUsuario;
@override final  String? titulo;
@override final  String? mensaje;
@override final  DateTime? fecha;
@override@JsonKey() final  bool leida;

/// Create a copy of NotificacionConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificacionConfigCopyWith<_NotificacionConfig> get copyWith => __$NotificacionConfigCopyWithImpl<_NotificacionConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificacionConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificacionConfig&&(identical(other.idUsuario, idUsuario) || other.idUsuario == idUsuario)&&(identical(other.titulo, titulo) || other.titulo == titulo)&&(identical(other.mensaje, mensaje) || other.mensaje == mensaje)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.leida, leida) || other.leida == leida));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idUsuario,titulo,mensaje,fecha,leida);

@override
String toString() {
  return 'NotificacionConfig(idUsuario: $idUsuario, titulo: $titulo, mensaje: $mensaje, fecha: $fecha, leida: $leida)';
}


}

/// @nodoc
abstract mixin class _$NotificacionConfigCopyWith<$Res> implements $NotificacionConfigCopyWith<$Res> {
  factory _$NotificacionConfigCopyWith(_NotificacionConfig value, $Res Function(_NotificacionConfig) _then) = __$NotificacionConfigCopyWithImpl;
@override @useResult
$Res call({
 int? idUsuario, String? titulo, String? mensaje, DateTime? fecha, bool leida
});




}
/// @nodoc
class __$NotificacionConfigCopyWithImpl<$Res>
    implements _$NotificacionConfigCopyWith<$Res> {
  __$NotificacionConfigCopyWithImpl(this._self, this._then);

  final _NotificacionConfig _self;
  final $Res Function(_NotificacionConfig) _then;

/// Create a copy of NotificacionConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idUsuario = freezed,Object? titulo = freezed,Object? mensaje = freezed,Object? fecha = freezed,Object? leida = null,}) {
  return _then(_NotificacionConfig(
idUsuario: freezed == idUsuario ? _self.idUsuario : idUsuario // ignore: cast_nullable_to_non_nullable
as int?,titulo: freezed == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String?,mensaje: freezed == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String?,fecha: freezed == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime?,leida: null == leida ? _self.leida : leida // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

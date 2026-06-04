// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reporte.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Reporte {

 int? get idReporte; User get usuario; String get tipo; DateTime get fechaGeneracion; String? get archivoUrl;
/// Create a copy of Reporte
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReporteCopyWith<Reporte> get copyWith => _$ReporteCopyWithImpl<Reporte>(this as Reporte, _$identity);

  /// Serializes this Reporte to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reporte&&(identical(other.idReporte, idReporte) || other.idReporte == idReporte)&&(identical(other.usuario, usuario) || other.usuario == usuario)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.fechaGeneracion, fechaGeneracion) || other.fechaGeneracion == fechaGeneracion)&&(identical(other.archivoUrl, archivoUrl) || other.archivoUrl == archivoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idReporte,usuario,tipo,fechaGeneracion,archivoUrl);

@override
String toString() {
  return 'Reporte(idReporte: $idReporte, usuario: $usuario, tipo: $tipo, fechaGeneracion: $fechaGeneracion, archivoUrl: $archivoUrl)';
}


}

/// @nodoc
abstract mixin class $ReporteCopyWith<$Res>  {
  factory $ReporteCopyWith(Reporte value, $Res Function(Reporte) _then) = _$ReporteCopyWithImpl;
@useResult
$Res call({
 int? idReporte, User usuario, String tipo, DateTime fechaGeneracion, String? archivoUrl
});


$UserCopyWith<$Res> get usuario;

}
/// @nodoc
class _$ReporteCopyWithImpl<$Res>
    implements $ReporteCopyWith<$Res> {
  _$ReporteCopyWithImpl(this._self, this._then);

  final Reporte _self;
  final $Res Function(Reporte) _then;

/// Create a copy of Reporte
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idReporte = freezed,Object? usuario = null,Object? tipo = null,Object? fechaGeneracion = null,Object? archivoUrl = freezed,}) {
  return _then(_self.copyWith(
idReporte: freezed == idReporte ? _self.idReporte : idReporte // ignore: cast_nullable_to_non_nullable
as int?,usuario: null == usuario ? _self.usuario : usuario // ignore: cast_nullable_to_non_nullable
as User,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,fechaGeneracion: null == fechaGeneracion ? _self.fechaGeneracion : fechaGeneracion // ignore: cast_nullable_to_non_nullable
as DateTime,archivoUrl: freezed == archivoUrl ? _self.archivoUrl : archivoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Reporte
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get usuario {
  
  return $UserCopyWith<$Res>(_self.usuario, (value) {
    return _then(_self.copyWith(usuario: value));
  });
}
}


/// Adds pattern-matching-related methods to [Reporte].
extension ReportePatterns on Reporte {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Reporte value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Reporte() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Reporte value)  $default,){
final _that = this;
switch (_that) {
case _Reporte():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Reporte value)?  $default,){
final _that = this;
switch (_that) {
case _Reporte() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idReporte,  User usuario,  String tipo,  DateTime fechaGeneracion,  String? archivoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Reporte() when $default != null:
return $default(_that.idReporte,_that.usuario,_that.tipo,_that.fechaGeneracion,_that.archivoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idReporte,  User usuario,  String tipo,  DateTime fechaGeneracion,  String? archivoUrl)  $default,) {final _that = this;
switch (_that) {
case _Reporte():
return $default(_that.idReporte,_that.usuario,_that.tipo,_that.fechaGeneracion,_that.archivoUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idReporte,  User usuario,  String tipo,  DateTime fechaGeneracion,  String? archivoUrl)?  $default,) {final _that = this;
switch (_that) {
case _Reporte() when $default != null:
return $default(_that.idReporte,_that.usuario,_that.tipo,_that.fechaGeneracion,_that.archivoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Reporte implements Reporte {
  const _Reporte({this.idReporte, required this.usuario, required this.tipo, required this.fechaGeneracion, this.archivoUrl});
  factory _Reporte.fromJson(Map<String, dynamic> json) => _$ReporteFromJson(json);

@override final  int? idReporte;
@override final  User usuario;
@override final  String tipo;
@override final  DateTime fechaGeneracion;
@override final  String? archivoUrl;

/// Create a copy of Reporte
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReporteCopyWith<_Reporte> get copyWith => __$ReporteCopyWithImpl<_Reporte>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReporteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reporte&&(identical(other.idReporte, idReporte) || other.idReporte == idReporte)&&(identical(other.usuario, usuario) || other.usuario == usuario)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.fechaGeneracion, fechaGeneracion) || other.fechaGeneracion == fechaGeneracion)&&(identical(other.archivoUrl, archivoUrl) || other.archivoUrl == archivoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idReporte,usuario,tipo,fechaGeneracion,archivoUrl);

@override
String toString() {
  return 'Reporte(idReporte: $idReporte, usuario: $usuario, tipo: $tipo, fechaGeneracion: $fechaGeneracion, archivoUrl: $archivoUrl)';
}


}

/// @nodoc
abstract mixin class _$ReporteCopyWith<$Res> implements $ReporteCopyWith<$Res> {
  factory _$ReporteCopyWith(_Reporte value, $Res Function(_Reporte) _then) = __$ReporteCopyWithImpl;
@override @useResult
$Res call({
 int? idReporte, User usuario, String tipo, DateTime fechaGeneracion, String? archivoUrl
});


@override $UserCopyWith<$Res> get usuario;

}
/// @nodoc
class __$ReporteCopyWithImpl<$Res>
    implements _$ReporteCopyWith<$Res> {
  __$ReporteCopyWithImpl(this._self, this._then);

  final _Reporte _self;
  final $Res Function(_Reporte) _then;

/// Create a copy of Reporte
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idReporte = freezed,Object? usuario = null,Object? tipo = null,Object? fechaGeneracion = null,Object? archivoUrl = freezed,}) {
  return _then(_Reporte(
idReporte: freezed == idReporte ? _self.idReporte : idReporte // ignore: cast_nullable_to_non_nullable
as int?,usuario: null == usuario ? _self.usuario : usuario // ignore: cast_nullable_to_non_nullable
as User,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,fechaGeneracion: null == fechaGeneracion ? _self.fechaGeneracion : fechaGeneracion // ignore: cast_nullable_to_non_nullable
as DateTime,archivoUrl: freezed == archivoUrl ? _self.archivoUrl : archivoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Reporte
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

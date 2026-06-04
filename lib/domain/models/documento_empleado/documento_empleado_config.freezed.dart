// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'documento_empleado_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocumentoEmpleadoConfig {

 int? get idEmpleado; String? get tipo; String? get rutaArchivo;
/// Create a copy of DocumentoEmpleadoConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentoEmpleadoConfigCopyWith<DocumentoEmpleadoConfig> get copyWith => _$DocumentoEmpleadoConfigCopyWithImpl<DocumentoEmpleadoConfig>(this as DocumentoEmpleadoConfig, _$identity);

  /// Serializes this DocumentoEmpleadoConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentoEmpleadoConfig&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.rutaArchivo, rutaArchivo) || other.rutaArchivo == rutaArchivo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleado,tipo,rutaArchivo);

@override
String toString() {
  return 'DocumentoEmpleadoConfig(idEmpleado: $idEmpleado, tipo: $tipo, rutaArchivo: $rutaArchivo)';
}


}

/// @nodoc
abstract mixin class $DocumentoEmpleadoConfigCopyWith<$Res>  {
  factory $DocumentoEmpleadoConfigCopyWith(DocumentoEmpleadoConfig value, $Res Function(DocumentoEmpleadoConfig) _then) = _$DocumentoEmpleadoConfigCopyWithImpl;
@useResult
$Res call({
 int? idEmpleado, String? tipo, String? rutaArchivo
});




}
/// @nodoc
class _$DocumentoEmpleadoConfigCopyWithImpl<$Res>
    implements $DocumentoEmpleadoConfigCopyWith<$Res> {
  _$DocumentoEmpleadoConfigCopyWithImpl(this._self, this._then);

  final DocumentoEmpleadoConfig _self;
  final $Res Function(DocumentoEmpleadoConfig) _then;

/// Create a copy of DocumentoEmpleadoConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idEmpleado = freezed,Object? tipo = freezed,Object? rutaArchivo = freezed,}) {
  return _then(_self.copyWith(
idEmpleado: freezed == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int?,tipo: freezed == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String?,rutaArchivo: freezed == rutaArchivo ? _self.rutaArchivo : rutaArchivo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentoEmpleadoConfig].
extension DocumentoEmpleadoConfigPatterns on DocumentoEmpleadoConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentoEmpleadoConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentoEmpleadoConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentoEmpleadoConfig value)  $default,){
final _that = this;
switch (_that) {
case _DocumentoEmpleadoConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentoEmpleadoConfig value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentoEmpleadoConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idEmpleado,  String? tipo,  String? rutaArchivo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentoEmpleadoConfig() when $default != null:
return $default(_that.idEmpleado,_that.tipo,_that.rutaArchivo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idEmpleado,  String? tipo,  String? rutaArchivo)  $default,) {final _that = this;
switch (_that) {
case _DocumentoEmpleadoConfig():
return $default(_that.idEmpleado,_that.tipo,_that.rutaArchivo);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idEmpleado,  String? tipo,  String? rutaArchivo)?  $default,) {final _that = this;
switch (_that) {
case _DocumentoEmpleadoConfig() when $default != null:
return $default(_that.idEmpleado,_that.tipo,_that.rutaArchivo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocumentoEmpleadoConfig implements DocumentoEmpleadoConfig {
  const _DocumentoEmpleadoConfig({this.idEmpleado, this.tipo, this.rutaArchivo});
  factory _DocumentoEmpleadoConfig.fromJson(Map<String, dynamic> json) => _$DocumentoEmpleadoConfigFromJson(json);

@override final  int? idEmpleado;
@override final  String? tipo;
@override final  String? rutaArchivo;

/// Create a copy of DocumentoEmpleadoConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentoEmpleadoConfigCopyWith<_DocumentoEmpleadoConfig> get copyWith => __$DocumentoEmpleadoConfigCopyWithImpl<_DocumentoEmpleadoConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentoEmpleadoConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentoEmpleadoConfig&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.rutaArchivo, rutaArchivo) || other.rutaArchivo == rutaArchivo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleado,tipo,rutaArchivo);

@override
String toString() {
  return 'DocumentoEmpleadoConfig(idEmpleado: $idEmpleado, tipo: $tipo, rutaArchivo: $rutaArchivo)';
}


}

/// @nodoc
abstract mixin class _$DocumentoEmpleadoConfigCopyWith<$Res> implements $DocumentoEmpleadoConfigCopyWith<$Res> {
  factory _$DocumentoEmpleadoConfigCopyWith(_DocumentoEmpleadoConfig value, $Res Function(_DocumentoEmpleadoConfig) _then) = __$DocumentoEmpleadoConfigCopyWithImpl;
@override @useResult
$Res call({
 int? idEmpleado, String? tipo, String? rutaArchivo
});




}
/// @nodoc
class __$DocumentoEmpleadoConfigCopyWithImpl<$Res>
    implements _$DocumentoEmpleadoConfigCopyWith<$Res> {
  __$DocumentoEmpleadoConfigCopyWithImpl(this._self, this._then);

  final _DocumentoEmpleadoConfig _self;
  final $Res Function(_DocumentoEmpleadoConfig) _then;

/// Create a copy of DocumentoEmpleadoConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idEmpleado = freezed,Object? tipo = freezed,Object? rutaArchivo = freezed,}) {
  return _then(_DocumentoEmpleadoConfig(
idEmpleado: freezed == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int?,tipo: freezed == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String?,rutaArchivo: freezed == rutaArchivo ? _self.rutaArchivo : rutaArchivo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

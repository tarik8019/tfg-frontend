// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'documento_empleado.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocumentoEmpleado {

 int? get idDocumento; Empleado get empleado; String? get tipo; String? get rutaArchivo;
/// Create a copy of DocumentoEmpleado
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentoEmpleadoCopyWith<DocumentoEmpleado> get copyWith => _$DocumentoEmpleadoCopyWithImpl<DocumentoEmpleado>(this as DocumentoEmpleado, _$identity);

  /// Serializes this DocumentoEmpleado to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentoEmpleado&&(identical(other.idDocumento, idDocumento) || other.idDocumento == idDocumento)&&(identical(other.empleado, empleado) || other.empleado == empleado)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.rutaArchivo, rutaArchivo) || other.rutaArchivo == rutaArchivo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDocumento,empleado,tipo,rutaArchivo);

@override
String toString() {
  return 'DocumentoEmpleado(idDocumento: $idDocumento, empleado: $empleado, tipo: $tipo, rutaArchivo: $rutaArchivo)';
}


}

/// @nodoc
abstract mixin class $DocumentoEmpleadoCopyWith<$Res>  {
  factory $DocumentoEmpleadoCopyWith(DocumentoEmpleado value, $Res Function(DocumentoEmpleado) _then) = _$DocumentoEmpleadoCopyWithImpl;
@useResult
$Res call({
 int? idDocumento, Empleado empleado, String? tipo, String? rutaArchivo
});


$EmpleadoCopyWith<$Res> get empleado;

}
/// @nodoc
class _$DocumentoEmpleadoCopyWithImpl<$Res>
    implements $DocumentoEmpleadoCopyWith<$Res> {
  _$DocumentoEmpleadoCopyWithImpl(this._self, this._then);

  final DocumentoEmpleado _self;
  final $Res Function(DocumentoEmpleado) _then;

/// Create a copy of DocumentoEmpleado
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idDocumento = freezed,Object? empleado = null,Object? tipo = freezed,Object? rutaArchivo = freezed,}) {
  return _then(_self.copyWith(
idDocumento: freezed == idDocumento ? _self.idDocumento : idDocumento // ignore: cast_nullable_to_non_nullable
as int?,empleado: null == empleado ? _self.empleado : empleado // ignore: cast_nullable_to_non_nullable
as Empleado,tipo: freezed == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String?,rutaArchivo: freezed == rutaArchivo ? _self.rutaArchivo : rutaArchivo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DocumentoEmpleado
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpleadoCopyWith<$Res> get empleado {
  
  return $EmpleadoCopyWith<$Res>(_self.empleado, (value) {
    return _then(_self.copyWith(empleado: value));
  });
}
}


/// Adds pattern-matching-related methods to [DocumentoEmpleado].
extension DocumentoEmpleadoPatterns on DocumentoEmpleado {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentoEmpleado value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentoEmpleado() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentoEmpleado value)  $default,){
final _that = this;
switch (_that) {
case _DocumentoEmpleado():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentoEmpleado value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentoEmpleado() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idDocumento,  Empleado empleado,  String? tipo,  String? rutaArchivo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentoEmpleado() when $default != null:
return $default(_that.idDocumento,_that.empleado,_that.tipo,_that.rutaArchivo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idDocumento,  Empleado empleado,  String? tipo,  String? rutaArchivo)  $default,) {final _that = this;
switch (_that) {
case _DocumentoEmpleado():
return $default(_that.idDocumento,_that.empleado,_that.tipo,_that.rutaArchivo);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idDocumento,  Empleado empleado,  String? tipo,  String? rutaArchivo)?  $default,) {final _that = this;
switch (_that) {
case _DocumentoEmpleado() when $default != null:
return $default(_that.idDocumento,_that.empleado,_that.tipo,_that.rutaArchivo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocumentoEmpleado implements DocumentoEmpleado {
  const _DocumentoEmpleado({this.idDocumento, required this.empleado, this.tipo, this.rutaArchivo});
  factory _DocumentoEmpleado.fromJson(Map<String, dynamic> json) => _$DocumentoEmpleadoFromJson(json);

@override final  int? idDocumento;
@override final  Empleado empleado;
@override final  String? tipo;
@override final  String? rutaArchivo;

/// Create a copy of DocumentoEmpleado
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentoEmpleadoCopyWith<_DocumentoEmpleado> get copyWith => __$DocumentoEmpleadoCopyWithImpl<_DocumentoEmpleado>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentoEmpleadoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentoEmpleado&&(identical(other.idDocumento, idDocumento) || other.idDocumento == idDocumento)&&(identical(other.empleado, empleado) || other.empleado == empleado)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.rutaArchivo, rutaArchivo) || other.rutaArchivo == rutaArchivo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDocumento,empleado,tipo,rutaArchivo);

@override
String toString() {
  return 'DocumentoEmpleado(idDocumento: $idDocumento, empleado: $empleado, tipo: $tipo, rutaArchivo: $rutaArchivo)';
}


}

/// @nodoc
abstract mixin class _$DocumentoEmpleadoCopyWith<$Res> implements $DocumentoEmpleadoCopyWith<$Res> {
  factory _$DocumentoEmpleadoCopyWith(_DocumentoEmpleado value, $Res Function(_DocumentoEmpleado) _then) = __$DocumentoEmpleadoCopyWithImpl;
@override @useResult
$Res call({
 int? idDocumento, Empleado empleado, String? tipo, String? rutaArchivo
});


@override $EmpleadoCopyWith<$Res> get empleado;

}
/// @nodoc
class __$DocumentoEmpleadoCopyWithImpl<$Res>
    implements _$DocumentoEmpleadoCopyWith<$Res> {
  __$DocumentoEmpleadoCopyWithImpl(this._self, this._then);

  final _DocumentoEmpleado _self;
  final $Res Function(_DocumentoEmpleado) _then;

/// Create a copy of DocumentoEmpleado
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idDocumento = freezed,Object? empleado = null,Object? tipo = freezed,Object? rutaArchivo = freezed,}) {
  return _then(_DocumentoEmpleado(
idDocumento: freezed == idDocumento ? _self.idDocumento : idDocumento // ignore: cast_nullable_to_non_nullable
as int?,empleado: null == empleado ? _self.empleado : empleado // ignore: cast_nullable_to_non_nullable
as Empleado,tipo: freezed == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String?,rutaArchivo: freezed == rutaArchivo ? _self.rutaArchivo : rutaArchivo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DocumentoEmpleado
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpleadoCopyWith<$Res> get empleado {
  
  return $EmpleadoCopyWith<$Res>(_self.empleado, (value) {
    return _then(_self.copyWith(empleado: value));
  });
}
}

// dart format on

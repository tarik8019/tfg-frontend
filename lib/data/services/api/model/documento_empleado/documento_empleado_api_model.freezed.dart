// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'documento_empleado_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocumentoEmpleadoApiModel {

 int? get idDocumento; int get idEmpleado; String? get tipo; String? get rutaArchivo;
/// Create a copy of DocumentoEmpleadoApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentoEmpleadoApiModelCopyWith<DocumentoEmpleadoApiModel> get copyWith => _$DocumentoEmpleadoApiModelCopyWithImpl<DocumentoEmpleadoApiModel>(this as DocumentoEmpleadoApiModel, _$identity);

  /// Serializes this DocumentoEmpleadoApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentoEmpleadoApiModel&&(identical(other.idDocumento, idDocumento) || other.idDocumento == idDocumento)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.rutaArchivo, rutaArchivo) || other.rutaArchivo == rutaArchivo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDocumento,idEmpleado,tipo,rutaArchivo);

@override
String toString() {
  return 'DocumentoEmpleadoApiModel(idDocumento: $idDocumento, idEmpleado: $idEmpleado, tipo: $tipo, rutaArchivo: $rutaArchivo)';
}


}

/// @nodoc
abstract mixin class $DocumentoEmpleadoApiModelCopyWith<$Res>  {
  factory $DocumentoEmpleadoApiModelCopyWith(DocumentoEmpleadoApiModel value, $Res Function(DocumentoEmpleadoApiModel) _then) = _$DocumentoEmpleadoApiModelCopyWithImpl;
@useResult
$Res call({
 int? idDocumento, int idEmpleado, String? tipo, String? rutaArchivo
});




}
/// @nodoc
class _$DocumentoEmpleadoApiModelCopyWithImpl<$Res>
    implements $DocumentoEmpleadoApiModelCopyWith<$Res> {
  _$DocumentoEmpleadoApiModelCopyWithImpl(this._self, this._then);

  final DocumentoEmpleadoApiModel _self;
  final $Res Function(DocumentoEmpleadoApiModel) _then;

/// Create a copy of DocumentoEmpleadoApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idDocumento = freezed,Object? idEmpleado = null,Object? tipo = freezed,Object? rutaArchivo = freezed,}) {
  return _then(_self.copyWith(
idDocumento: freezed == idDocumento ? _self.idDocumento : idDocumento // ignore: cast_nullable_to_non_nullable
as int?,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,tipo: freezed == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String?,rutaArchivo: freezed == rutaArchivo ? _self.rutaArchivo : rutaArchivo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentoEmpleadoApiModel].
extension DocumentoEmpleadoApiModelPatterns on DocumentoEmpleadoApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentoEmpleadoApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentoEmpleadoApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentoEmpleadoApiModel value)  $default,){
final _that = this;
switch (_that) {
case _DocumentoEmpleadoApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentoEmpleadoApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentoEmpleadoApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idDocumento,  int idEmpleado,  String? tipo,  String? rutaArchivo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentoEmpleadoApiModel() when $default != null:
return $default(_that.idDocumento,_that.idEmpleado,_that.tipo,_that.rutaArchivo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idDocumento,  int idEmpleado,  String? tipo,  String? rutaArchivo)  $default,) {final _that = this;
switch (_that) {
case _DocumentoEmpleadoApiModel():
return $default(_that.idDocumento,_that.idEmpleado,_that.tipo,_that.rutaArchivo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idDocumento,  int idEmpleado,  String? tipo,  String? rutaArchivo)?  $default,) {final _that = this;
switch (_that) {
case _DocumentoEmpleadoApiModel() when $default != null:
return $default(_that.idDocumento,_that.idEmpleado,_that.tipo,_that.rutaArchivo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocumentoEmpleadoApiModel implements DocumentoEmpleadoApiModel {
  const _DocumentoEmpleadoApiModel({this.idDocumento, required this.idEmpleado, this.tipo, this.rutaArchivo});
  factory _DocumentoEmpleadoApiModel.fromJson(Map<String, dynamic> json) => _$DocumentoEmpleadoApiModelFromJson(json);

@override final  int? idDocumento;
@override final  int idEmpleado;
@override final  String? tipo;
@override final  String? rutaArchivo;

/// Create a copy of DocumentoEmpleadoApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentoEmpleadoApiModelCopyWith<_DocumentoEmpleadoApiModel> get copyWith => __$DocumentoEmpleadoApiModelCopyWithImpl<_DocumentoEmpleadoApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentoEmpleadoApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentoEmpleadoApiModel&&(identical(other.idDocumento, idDocumento) || other.idDocumento == idDocumento)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.rutaArchivo, rutaArchivo) || other.rutaArchivo == rutaArchivo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDocumento,idEmpleado,tipo,rutaArchivo);

@override
String toString() {
  return 'DocumentoEmpleadoApiModel(idDocumento: $idDocumento, idEmpleado: $idEmpleado, tipo: $tipo, rutaArchivo: $rutaArchivo)';
}


}

/// @nodoc
abstract mixin class _$DocumentoEmpleadoApiModelCopyWith<$Res> implements $DocumentoEmpleadoApiModelCopyWith<$Res> {
  factory _$DocumentoEmpleadoApiModelCopyWith(_DocumentoEmpleadoApiModel value, $Res Function(_DocumentoEmpleadoApiModel) _then) = __$DocumentoEmpleadoApiModelCopyWithImpl;
@override @useResult
$Res call({
 int? idDocumento, int idEmpleado, String? tipo, String? rutaArchivo
});




}
/// @nodoc
class __$DocumentoEmpleadoApiModelCopyWithImpl<$Res>
    implements _$DocumentoEmpleadoApiModelCopyWith<$Res> {
  __$DocumentoEmpleadoApiModelCopyWithImpl(this._self, this._then);

  final _DocumentoEmpleadoApiModel _self;
  final $Res Function(_DocumentoEmpleadoApiModel) _then;

/// Create a copy of DocumentoEmpleadoApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idDocumento = freezed,Object? idEmpleado = null,Object? tipo = freezed,Object? rutaArchivo = freezed,}) {
  return _then(_DocumentoEmpleadoApiModel(
idDocumento: freezed == idDocumento ? _self.idDocumento : idDocumento // ignore: cast_nullable_to_non_nullable
as int?,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,tipo: freezed == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String?,rutaArchivo: freezed == rutaArchivo ? _self.rutaArchivo : rutaArchivo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reporte_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReporteApiModel {

 int? get idReporte; String get tipo; DateTime get fechaGeneracion; String? get archivoUrl;
/// Create a copy of ReporteApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReporteApiModelCopyWith<ReporteApiModel> get copyWith => _$ReporteApiModelCopyWithImpl<ReporteApiModel>(this as ReporteApiModel, _$identity);

  /// Serializes this ReporteApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReporteApiModel&&(identical(other.idReporte, idReporte) || other.idReporte == idReporte)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.fechaGeneracion, fechaGeneracion) || other.fechaGeneracion == fechaGeneracion)&&(identical(other.archivoUrl, archivoUrl) || other.archivoUrl == archivoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idReporte,tipo,fechaGeneracion,archivoUrl);

@override
String toString() {
  return 'ReporteApiModel(idReporte: $idReporte, tipo: $tipo, fechaGeneracion: $fechaGeneracion, archivoUrl: $archivoUrl)';
}


}

/// @nodoc
abstract mixin class $ReporteApiModelCopyWith<$Res>  {
  factory $ReporteApiModelCopyWith(ReporteApiModel value, $Res Function(ReporteApiModel) _then) = _$ReporteApiModelCopyWithImpl;
@useResult
$Res call({
 int? idReporte, String tipo, DateTime fechaGeneracion, String? archivoUrl
});




}
/// @nodoc
class _$ReporteApiModelCopyWithImpl<$Res>
    implements $ReporteApiModelCopyWith<$Res> {
  _$ReporteApiModelCopyWithImpl(this._self, this._then);

  final ReporteApiModel _self;
  final $Res Function(ReporteApiModel) _then;

/// Create a copy of ReporteApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idReporte = freezed,Object? tipo = null,Object? fechaGeneracion = null,Object? archivoUrl = freezed,}) {
  return _then(_self.copyWith(
idReporte: freezed == idReporte ? _self.idReporte : idReporte // ignore: cast_nullable_to_non_nullable
as int?,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,fechaGeneracion: null == fechaGeneracion ? _self.fechaGeneracion : fechaGeneracion // ignore: cast_nullable_to_non_nullable
as DateTime,archivoUrl: freezed == archivoUrl ? _self.archivoUrl : archivoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReporteApiModel].
extension ReporteApiModelPatterns on ReporteApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReporteApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReporteApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReporteApiModel value)  $default,){
final _that = this;
switch (_that) {
case _ReporteApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReporteApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReporteApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idReporte,  String tipo,  DateTime fechaGeneracion,  String? archivoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReporteApiModel() when $default != null:
return $default(_that.idReporte,_that.tipo,_that.fechaGeneracion,_that.archivoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idReporte,  String tipo,  DateTime fechaGeneracion,  String? archivoUrl)  $default,) {final _that = this;
switch (_that) {
case _ReporteApiModel():
return $default(_that.idReporte,_that.tipo,_that.fechaGeneracion,_that.archivoUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idReporte,  String tipo,  DateTime fechaGeneracion,  String? archivoUrl)?  $default,) {final _that = this;
switch (_that) {
case _ReporteApiModel() when $default != null:
return $default(_that.idReporte,_that.tipo,_that.fechaGeneracion,_that.archivoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReporteApiModel implements ReporteApiModel {
  const _ReporteApiModel({this.idReporte, required this.tipo, required this.fechaGeneracion, this.archivoUrl});
  factory _ReporteApiModel.fromJson(Map<String, dynamic> json) => _$ReporteApiModelFromJson(json);

@override final  int? idReporte;
@override final  String tipo;
@override final  DateTime fechaGeneracion;
@override final  String? archivoUrl;

/// Create a copy of ReporteApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReporteApiModelCopyWith<_ReporteApiModel> get copyWith => __$ReporteApiModelCopyWithImpl<_ReporteApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReporteApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReporteApiModel&&(identical(other.idReporte, idReporte) || other.idReporte == idReporte)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.fechaGeneracion, fechaGeneracion) || other.fechaGeneracion == fechaGeneracion)&&(identical(other.archivoUrl, archivoUrl) || other.archivoUrl == archivoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idReporte,tipo,fechaGeneracion,archivoUrl);

@override
String toString() {
  return 'ReporteApiModel(idReporte: $idReporte, tipo: $tipo, fechaGeneracion: $fechaGeneracion, archivoUrl: $archivoUrl)';
}


}

/// @nodoc
abstract mixin class _$ReporteApiModelCopyWith<$Res> implements $ReporteApiModelCopyWith<$Res> {
  factory _$ReporteApiModelCopyWith(_ReporteApiModel value, $Res Function(_ReporteApiModel) _then) = __$ReporteApiModelCopyWithImpl;
@override @useResult
$Res call({
 int? idReporte, String tipo, DateTime fechaGeneracion, String? archivoUrl
});




}
/// @nodoc
class __$ReporteApiModelCopyWithImpl<$Res>
    implements _$ReporteApiModelCopyWith<$Res> {
  __$ReporteApiModelCopyWithImpl(this._self, this._then);

  final _ReporteApiModel _self;
  final $Res Function(_ReporteApiModel) _then;

/// Create a copy of ReporteApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idReporte = freezed,Object? tipo = null,Object? fechaGeneracion = null,Object? archivoUrl = freezed,}) {
  return _then(_ReporteApiModel(
idReporte: freezed == idReporte ? _self.idReporte : idReporte // ignore: cast_nullable_to_non_nullable
as int?,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,fechaGeneracion: null == fechaGeneracion ? _self.fechaGeneracion : fechaGeneracion // ignore: cast_nullable_to_non_nullable
as DateTime,archivoUrl: freezed == archivoUrl ? _self.archivoUrl : archivoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

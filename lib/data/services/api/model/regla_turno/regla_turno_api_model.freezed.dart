// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regla_turno_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReglaTurnoApiModel {

 int? get idRegla; String? get descripcion; String get tipo; String get parametros;
/// Create a copy of ReglaTurnoApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReglaTurnoApiModelCopyWith<ReglaTurnoApiModel> get copyWith => _$ReglaTurnoApiModelCopyWithImpl<ReglaTurnoApiModel>(this as ReglaTurnoApiModel, _$identity);

  /// Serializes this ReglaTurnoApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReglaTurnoApiModel&&(identical(other.idRegla, idRegla) || other.idRegla == idRegla)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.parametros, parametros) || other.parametros == parametros));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idRegla,descripcion,tipo,parametros);

@override
String toString() {
  return 'ReglaTurnoApiModel(idRegla: $idRegla, descripcion: $descripcion, tipo: $tipo, parametros: $parametros)';
}


}

/// @nodoc
abstract mixin class $ReglaTurnoApiModelCopyWith<$Res>  {
  factory $ReglaTurnoApiModelCopyWith(ReglaTurnoApiModel value, $Res Function(ReglaTurnoApiModel) _then) = _$ReglaTurnoApiModelCopyWithImpl;
@useResult
$Res call({
 int? idRegla, String? descripcion, String tipo, String parametros
});




}
/// @nodoc
class _$ReglaTurnoApiModelCopyWithImpl<$Res>
    implements $ReglaTurnoApiModelCopyWith<$Res> {
  _$ReglaTurnoApiModelCopyWithImpl(this._self, this._then);

  final ReglaTurnoApiModel _self;
  final $Res Function(ReglaTurnoApiModel) _then;

/// Create a copy of ReglaTurnoApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idRegla = freezed,Object? descripcion = freezed,Object? tipo = null,Object? parametros = null,}) {
  return _then(_self.copyWith(
idRegla: freezed == idRegla ? _self.idRegla : idRegla // ignore: cast_nullable_to_non_nullable
as int?,descripcion: freezed == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String?,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,parametros: null == parametros ? _self.parametros : parametros // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReglaTurnoApiModel].
extension ReglaTurnoApiModelPatterns on ReglaTurnoApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReglaTurnoApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReglaTurnoApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReglaTurnoApiModel value)  $default,){
final _that = this;
switch (_that) {
case _ReglaTurnoApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReglaTurnoApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReglaTurnoApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idRegla,  String? descripcion,  String tipo,  String parametros)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReglaTurnoApiModel() when $default != null:
return $default(_that.idRegla,_that.descripcion,_that.tipo,_that.parametros);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idRegla,  String? descripcion,  String tipo,  String parametros)  $default,) {final _that = this;
switch (_that) {
case _ReglaTurnoApiModel():
return $default(_that.idRegla,_that.descripcion,_that.tipo,_that.parametros);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idRegla,  String? descripcion,  String tipo,  String parametros)?  $default,) {final _that = this;
switch (_that) {
case _ReglaTurnoApiModel() when $default != null:
return $default(_that.idRegla,_that.descripcion,_that.tipo,_that.parametros);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReglaTurnoApiModel implements ReglaTurnoApiModel {
  const _ReglaTurnoApiModel({this.idRegla, this.descripcion, required this.tipo, required this.parametros});
  factory _ReglaTurnoApiModel.fromJson(Map<String, dynamic> json) => _$ReglaTurnoApiModelFromJson(json);

@override final  int? idRegla;
@override final  String? descripcion;
@override final  String tipo;
@override final  String parametros;

/// Create a copy of ReglaTurnoApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReglaTurnoApiModelCopyWith<_ReglaTurnoApiModel> get copyWith => __$ReglaTurnoApiModelCopyWithImpl<_ReglaTurnoApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReglaTurnoApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReglaTurnoApiModel&&(identical(other.idRegla, idRegla) || other.idRegla == idRegla)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.parametros, parametros) || other.parametros == parametros));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idRegla,descripcion,tipo,parametros);

@override
String toString() {
  return 'ReglaTurnoApiModel(idRegla: $idRegla, descripcion: $descripcion, tipo: $tipo, parametros: $parametros)';
}


}

/// @nodoc
abstract mixin class _$ReglaTurnoApiModelCopyWith<$Res> implements $ReglaTurnoApiModelCopyWith<$Res> {
  factory _$ReglaTurnoApiModelCopyWith(_ReglaTurnoApiModel value, $Res Function(_ReglaTurnoApiModel) _then) = __$ReglaTurnoApiModelCopyWithImpl;
@override @useResult
$Res call({
 int? idRegla, String? descripcion, String tipo, String parametros
});




}
/// @nodoc
class __$ReglaTurnoApiModelCopyWithImpl<$Res>
    implements _$ReglaTurnoApiModelCopyWith<$Res> {
  __$ReglaTurnoApiModelCopyWithImpl(this._self, this._then);

  final _ReglaTurnoApiModel _self;
  final $Res Function(_ReglaTurnoApiModel) _then;

/// Create a copy of ReglaTurnoApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idRegla = freezed,Object? descripcion = freezed,Object? tipo = null,Object? parametros = null,}) {
  return _then(_ReglaTurnoApiModel(
idRegla: freezed == idRegla ? _self.idRegla : idRegla // ignore: cast_nullable_to_non_nullable
as int?,descripcion: freezed == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String?,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,parametros: null == parametros ? _self.parametros : parametros // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

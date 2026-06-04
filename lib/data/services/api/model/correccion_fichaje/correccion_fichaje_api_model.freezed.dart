// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'correccion_fichaje_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CorreccionFichajeApiModel {

 int? get idCorreccion; int get idEmpleado; int get idFichaje; String? get motivo; String get estado;
/// Create a copy of CorreccionFichajeApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CorreccionFichajeApiModelCopyWith<CorreccionFichajeApiModel> get copyWith => _$CorreccionFichajeApiModelCopyWithImpl<CorreccionFichajeApiModel>(this as CorreccionFichajeApiModel, _$identity);

  /// Serializes this CorreccionFichajeApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CorreccionFichajeApiModel&&(identical(other.idCorreccion, idCorreccion) || other.idCorreccion == idCorreccion)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.idFichaje, idFichaje) || other.idFichaje == idFichaje)&&(identical(other.motivo, motivo) || other.motivo == motivo)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idCorreccion,idEmpleado,idFichaje,motivo,estado);

@override
String toString() {
  return 'CorreccionFichajeApiModel(idCorreccion: $idCorreccion, idEmpleado: $idEmpleado, idFichaje: $idFichaje, motivo: $motivo, estado: $estado)';
}


}

/// @nodoc
abstract mixin class $CorreccionFichajeApiModelCopyWith<$Res>  {
  factory $CorreccionFichajeApiModelCopyWith(CorreccionFichajeApiModel value, $Res Function(CorreccionFichajeApiModel) _then) = _$CorreccionFichajeApiModelCopyWithImpl;
@useResult
$Res call({
 int? idCorreccion, int idEmpleado, int idFichaje, String? motivo, String estado
});




}
/// @nodoc
class _$CorreccionFichajeApiModelCopyWithImpl<$Res>
    implements $CorreccionFichajeApiModelCopyWith<$Res> {
  _$CorreccionFichajeApiModelCopyWithImpl(this._self, this._then);

  final CorreccionFichajeApiModel _self;
  final $Res Function(CorreccionFichajeApiModel) _then;

/// Create a copy of CorreccionFichajeApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idCorreccion = freezed,Object? idEmpleado = null,Object? idFichaje = null,Object? motivo = freezed,Object? estado = null,}) {
  return _then(_self.copyWith(
idCorreccion: freezed == idCorreccion ? _self.idCorreccion : idCorreccion // ignore: cast_nullable_to_non_nullable
as int?,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,idFichaje: null == idFichaje ? _self.idFichaje : idFichaje // ignore: cast_nullable_to_non_nullable
as int,motivo: freezed == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String?,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CorreccionFichajeApiModel].
extension CorreccionFichajeApiModelPatterns on CorreccionFichajeApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CorreccionFichajeApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CorreccionFichajeApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CorreccionFichajeApiModel value)  $default,){
final _that = this;
switch (_that) {
case _CorreccionFichajeApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CorreccionFichajeApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _CorreccionFichajeApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idCorreccion,  int idEmpleado,  int idFichaje,  String? motivo,  String estado)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CorreccionFichajeApiModel() when $default != null:
return $default(_that.idCorreccion,_that.idEmpleado,_that.idFichaje,_that.motivo,_that.estado);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idCorreccion,  int idEmpleado,  int idFichaje,  String? motivo,  String estado)  $default,) {final _that = this;
switch (_that) {
case _CorreccionFichajeApiModel():
return $default(_that.idCorreccion,_that.idEmpleado,_that.idFichaje,_that.motivo,_that.estado);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idCorreccion,  int idEmpleado,  int idFichaje,  String? motivo,  String estado)?  $default,) {final _that = this;
switch (_that) {
case _CorreccionFichajeApiModel() when $default != null:
return $default(_that.idCorreccion,_that.idEmpleado,_that.idFichaje,_that.motivo,_that.estado);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CorreccionFichajeApiModel implements CorreccionFichajeApiModel {
  const _CorreccionFichajeApiModel({this.idCorreccion, required this.idEmpleado, required this.idFichaje, this.motivo, required this.estado});
  factory _CorreccionFichajeApiModel.fromJson(Map<String, dynamic> json) => _$CorreccionFichajeApiModelFromJson(json);

@override final  int? idCorreccion;
@override final  int idEmpleado;
@override final  int idFichaje;
@override final  String? motivo;
@override final  String estado;

/// Create a copy of CorreccionFichajeApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CorreccionFichajeApiModelCopyWith<_CorreccionFichajeApiModel> get copyWith => __$CorreccionFichajeApiModelCopyWithImpl<_CorreccionFichajeApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CorreccionFichajeApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CorreccionFichajeApiModel&&(identical(other.idCorreccion, idCorreccion) || other.idCorreccion == idCorreccion)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.idFichaje, idFichaje) || other.idFichaje == idFichaje)&&(identical(other.motivo, motivo) || other.motivo == motivo)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idCorreccion,idEmpleado,idFichaje,motivo,estado);

@override
String toString() {
  return 'CorreccionFichajeApiModel(idCorreccion: $idCorreccion, idEmpleado: $idEmpleado, idFichaje: $idFichaje, motivo: $motivo, estado: $estado)';
}


}

/// @nodoc
abstract mixin class _$CorreccionFichajeApiModelCopyWith<$Res> implements $CorreccionFichajeApiModelCopyWith<$Res> {
  factory _$CorreccionFichajeApiModelCopyWith(_CorreccionFichajeApiModel value, $Res Function(_CorreccionFichajeApiModel) _then) = __$CorreccionFichajeApiModelCopyWithImpl;
@override @useResult
$Res call({
 int? idCorreccion, int idEmpleado, int idFichaje, String? motivo, String estado
});




}
/// @nodoc
class __$CorreccionFichajeApiModelCopyWithImpl<$Res>
    implements _$CorreccionFichajeApiModelCopyWith<$Res> {
  __$CorreccionFichajeApiModelCopyWithImpl(this._self, this._then);

  final _CorreccionFichajeApiModel _self;
  final $Res Function(_CorreccionFichajeApiModel) _then;

/// Create a copy of CorreccionFichajeApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idCorreccion = freezed,Object? idEmpleado = null,Object? idFichaje = null,Object? motivo = freezed,Object? estado = null,}) {
  return _then(_CorreccionFichajeApiModel(
idCorreccion: freezed == idCorreccion ? _self.idCorreccion : idCorreccion // ignore: cast_nullable_to_non_nullable
as int?,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,idFichaje: null == idFichaje ? _self.idFichaje : idFichaje // ignore: cast_nullable_to_non_nullable
as int,motivo: freezed == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String?,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

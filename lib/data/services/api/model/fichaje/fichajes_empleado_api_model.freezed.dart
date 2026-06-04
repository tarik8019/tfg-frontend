// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fichajes_empleado_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FichajesEmpleadoApiModel {

 int get idEmpleado; String get nombre; String get apellidos; List<FichajeApiModel> get fichajes;
/// Create a copy of FichajesEmpleadoApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FichajesEmpleadoApiModelCopyWith<FichajesEmpleadoApiModel> get copyWith => _$FichajesEmpleadoApiModelCopyWithImpl<FichajesEmpleadoApiModel>(this as FichajesEmpleadoApiModel, _$identity);

  /// Serializes this FichajesEmpleadoApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FichajesEmpleadoApiModel&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellidos, apellidos) || other.apellidos == apellidos)&&const DeepCollectionEquality().equals(other.fichajes, fichajes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleado,nombre,apellidos,const DeepCollectionEquality().hash(fichajes));

@override
String toString() {
  return 'FichajesEmpleadoApiModel(idEmpleado: $idEmpleado, nombre: $nombre, apellidos: $apellidos, fichajes: $fichajes)';
}


}

/// @nodoc
abstract mixin class $FichajesEmpleadoApiModelCopyWith<$Res>  {
  factory $FichajesEmpleadoApiModelCopyWith(FichajesEmpleadoApiModel value, $Res Function(FichajesEmpleadoApiModel) _then) = _$FichajesEmpleadoApiModelCopyWithImpl;
@useResult
$Res call({
 int idEmpleado, String nombre, String apellidos, List<FichajeApiModel> fichajes
});




}
/// @nodoc
class _$FichajesEmpleadoApiModelCopyWithImpl<$Res>
    implements $FichajesEmpleadoApiModelCopyWith<$Res> {
  _$FichajesEmpleadoApiModelCopyWithImpl(this._self, this._then);

  final FichajesEmpleadoApiModel _self;
  final $Res Function(FichajesEmpleadoApiModel) _then;

/// Create a copy of FichajesEmpleadoApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idEmpleado = null,Object? nombre = null,Object? apellidos = null,Object? fichajes = null,}) {
  return _then(_self.copyWith(
idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,apellidos: null == apellidos ? _self.apellidos : apellidos // ignore: cast_nullable_to_non_nullable
as String,fichajes: null == fichajes ? _self.fichajes : fichajes // ignore: cast_nullable_to_non_nullable
as List<FichajeApiModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [FichajesEmpleadoApiModel].
extension FichajesEmpleadoApiModelPatterns on FichajesEmpleadoApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FichajesEmpleadoApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FichajesEmpleadoApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FichajesEmpleadoApiModel value)  $default,){
final _that = this;
switch (_that) {
case _FichajesEmpleadoApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FichajesEmpleadoApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _FichajesEmpleadoApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int idEmpleado,  String nombre,  String apellidos,  List<FichajeApiModel> fichajes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FichajesEmpleadoApiModel() when $default != null:
return $default(_that.idEmpleado,_that.nombre,_that.apellidos,_that.fichajes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int idEmpleado,  String nombre,  String apellidos,  List<FichajeApiModel> fichajes)  $default,) {final _that = this;
switch (_that) {
case _FichajesEmpleadoApiModel():
return $default(_that.idEmpleado,_that.nombre,_that.apellidos,_that.fichajes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int idEmpleado,  String nombre,  String apellidos,  List<FichajeApiModel> fichajes)?  $default,) {final _that = this;
switch (_that) {
case _FichajesEmpleadoApiModel() when $default != null:
return $default(_that.idEmpleado,_that.nombre,_that.apellidos,_that.fichajes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FichajesEmpleadoApiModel implements FichajesEmpleadoApiModel {
  const _FichajesEmpleadoApiModel({required this.idEmpleado, required this.nombre, required this.apellidos, required final  List<FichajeApiModel> fichajes}): _fichajes = fichajes;
  factory _FichajesEmpleadoApiModel.fromJson(Map<String, dynamic> json) => _$FichajesEmpleadoApiModelFromJson(json);

@override final  int idEmpleado;
@override final  String nombre;
@override final  String apellidos;
 final  List<FichajeApiModel> _fichajes;
@override List<FichajeApiModel> get fichajes {
  if (_fichajes is EqualUnmodifiableListView) return _fichajes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fichajes);
}


/// Create a copy of FichajesEmpleadoApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FichajesEmpleadoApiModelCopyWith<_FichajesEmpleadoApiModel> get copyWith => __$FichajesEmpleadoApiModelCopyWithImpl<_FichajesEmpleadoApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FichajesEmpleadoApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FichajesEmpleadoApiModel&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellidos, apellidos) || other.apellidos == apellidos)&&const DeepCollectionEquality().equals(other._fichajes, _fichajes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleado,nombre,apellidos,const DeepCollectionEquality().hash(_fichajes));

@override
String toString() {
  return 'FichajesEmpleadoApiModel(idEmpleado: $idEmpleado, nombre: $nombre, apellidos: $apellidos, fichajes: $fichajes)';
}


}

/// @nodoc
abstract mixin class _$FichajesEmpleadoApiModelCopyWith<$Res> implements $FichajesEmpleadoApiModelCopyWith<$Res> {
  factory _$FichajesEmpleadoApiModelCopyWith(_FichajesEmpleadoApiModel value, $Res Function(_FichajesEmpleadoApiModel) _then) = __$FichajesEmpleadoApiModelCopyWithImpl;
@override @useResult
$Res call({
 int idEmpleado, String nombre, String apellidos, List<FichajeApiModel> fichajes
});




}
/// @nodoc
class __$FichajesEmpleadoApiModelCopyWithImpl<$Res>
    implements _$FichajesEmpleadoApiModelCopyWith<$Res> {
  __$FichajesEmpleadoApiModelCopyWithImpl(this._self, this._then);

  final _FichajesEmpleadoApiModel _self;
  final $Res Function(_FichajesEmpleadoApiModel) _then;

/// Create a copy of FichajesEmpleadoApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idEmpleado = null,Object? nombre = null,Object? apellidos = null,Object? fichajes = null,}) {
  return _then(_FichajesEmpleadoApiModel(
idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,apellidos: null == apellidos ? _self.apellidos : apellidos // ignore: cast_nullable_to_non_nullable
as String,fichajes: null == fichajes ? _self._fichajes : fichajes // ignore: cast_nullable_to_non_nullable
as List<FichajeApiModel>,
  ));
}


}

// dart format on

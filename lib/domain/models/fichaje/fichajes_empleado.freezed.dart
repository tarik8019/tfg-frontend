// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fichajes_empleado.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FichajesEmpleado {

 int get idEmpleado; String get nombre; String get apellidos; List<Fichaje> get fichajes;
/// Create a copy of FichajesEmpleado
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FichajesEmpleadoCopyWith<FichajesEmpleado> get copyWith => _$FichajesEmpleadoCopyWithImpl<FichajesEmpleado>(this as FichajesEmpleado, _$identity);

  /// Serializes this FichajesEmpleado to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FichajesEmpleado&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellidos, apellidos) || other.apellidos == apellidos)&&const DeepCollectionEquality().equals(other.fichajes, fichajes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleado,nombre,apellidos,const DeepCollectionEquality().hash(fichajes));

@override
String toString() {
  return 'FichajesEmpleado(idEmpleado: $idEmpleado, nombre: $nombre, apellidos: $apellidos, fichajes: $fichajes)';
}


}

/// @nodoc
abstract mixin class $FichajesEmpleadoCopyWith<$Res>  {
  factory $FichajesEmpleadoCopyWith(FichajesEmpleado value, $Res Function(FichajesEmpleado) _then) = _$FichajesEmpleadoCopyWithImpl;
@useResult
$Res call({
 int idEmpleado, String nombre, String apellidos, List<Fichaje> fichajes
});




}
/// @nodoc
class _$FichajesEmpleadoCopyWithImpl<$Res>
    implements $FichajesEmpleadoCopyWith<$Res> {
  _$FichajesEmpleadoCopyWithImpl(this._self, this._then);

  final FichajesEmpleado _self;
  final $Res Function(FichajesEmpleado) _then;

/// Create a copy of FichajesEmpleado
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idEmpleado = null,Object? nombre = null,Object? apellidos = null,Object? fichajes = null,}) {
  return _then(_self.copyWith(
idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,apellidos: null == apellidos ? _self.apellidos : apellidos // ignore: cast_nullable_to_non_nullable
as String,fichajes: null == fichajes ? _self.fichajes : fichajes // ignore: cast_nullable_to_non_nullable
as List<Fichaje>,
  ));
}

}


/// Adds pattern-matching-related methods to [FichajesEmpleado].
extension FichajesEmpleadoPatterns on FichajesEmpleado {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FichajesEmpleado value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FichajesEmpleado() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FichajesEmpleado value)  $default,){
final _that = this;
switch (_that) {
case _FichajesEmpleado():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FichajesEmpleado value)?  $default,){
final _that = this;
switch (_that) {
case _FichajesEmpleado() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int idEmpleado,  String nombre,  String apellidos,  List<Fichaje> fichajes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FichajesEmpleado() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int idEmpleado,  String nombre,  String apellidos,  List<Fichaje> fichajes)  $default,) {final _that = this;
switch (_that) {
case _FichajesEmpleado():
return $default(_that.idEmpleado,_that.nombre,_that.apellidos,_that.fichajes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int idEmpleado,  String nombre,  String apellidos,  List<Fichaje> fichajes)?  $default,) {final _that = this;
switch (_that) {
case _FichajesEmpleado() when $default != null:
return $default(_that.idEmpleado,_that.nombre,_that.apellidos,_that.fichajes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FichajesEmpleado implements FichajesEmpleado {
  const _FichajesEmpleado({required this.idEmpleado, required this.nombre, required this.apellidos, required final  List<Fichaje> fichajes}): _fichajes = fichajes;
  factory _FichajesEmpleado.fromJson(Map<String, dynamic> json) => _$FichajesEmpleadoFromJson(json);

@override final  int idEmpleado;
@override final  String nombre;
@override final  String apellidos;
 final  List<Fichaje> _fichajes;
@override List<Fichaje> get fichajes {
  if (_fichajes is EqualUnmodifiableListView) return _fichajes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fichajes);
}


/// Create a copy of FichajesEmpleado
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FichajesEmpleadoCopyWith<_FichajesEmpleado> get copyWith => __$FichajesEmpleadoCopyWithImpl<_FichajesEmpleado>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FichajesEmpleadoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FichajesEmpleado&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellidos, apellidos) || other.apellidos == apellidos)&&const DeepCollectionEquality().equals(other._fichajes, _fichajes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idEmpleado,nombre,apellidos,const DeepCollectionEquality().hash(_fichajes));

@override
String toString() {
  return 'FichajesEmpleado(idEmpleado: $idEmpleado, nombre: $nombre, apellidos: $apellidos, fichajes: $fichajes)';
}


}

/// @nodoc
abstract mixin class _$FichajesEmpleadoCopyWith<$Res> implements $FichajesEmpleadoCopyWith<$Res> {
  factory _$FichajesEmpleadoCopyWith(_FichajesEmpleado value, $Res Function(_FichajesEmpleado) _then) = __$FichajesEmpleadoCopyWithImpl;
@override @useResult
$Res call({
 int idEmpleado, String nombre, String apellidos, List<Fichaje> fichajes
});




}
/// @nodoc
class __$FichajesEmpleadoCopyWithImpl<$Res>
    implements _$FichajesEmpleadoCopyWith<$Res> {
  __$FichajesEmpleadoCopyWithImpl(this._self, this._then);

  final _FichajesEmpleado _self;
  final $Res Function(_FichajesEmpleado) _then;

/// Create a copy of FichajesEmpleado
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idEmpleado = null,Object? nombre = null,Object? apellidos = null,Object? fichajes = null,}) {
  return _then(_FichajesEmpleado(
idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,apellidos: null == apellidos ? _self.apellidos : apellidos // ignore: cast_nullable_to_non_nullable
as String,fichajes: null == fichajes ? _self._fichajes : fichajes // ignore: cast_nullable_to_non_nullable
as List<Fichaje>,
  ));
}


}

// dart format on

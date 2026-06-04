// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regla_turno.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReglaTurno {

 int? get idRegla; String? get descripcion; String get tipo; String get parametros;
/// Create a copy of ReglaTurno
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReglaTurnoCopyWith<ReglaTurno> get copyWith => _$ReglaTurnoCopyWithImpl<ReglaTurno>(this as ReglaTurno, _$identity);

  /// Serializes this ReglaTurno to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReglaTurno&&(identical(other.idRegla, idRegla) || other.idRegla == idRegla)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.parametros, parametros) || other.parametros == parametros));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idRegla,descripcion,tipo,parametros);

@override
String toString() {
  return 'ReglaTurno(idRegla: $idRegla, descripcion: $descripcion, tipo: $tipo, parametros: $parametros)';
}


}

/// @nodoc
abstract mixin class $ReglaTurnoCopyWith<$Res>  {
  factory $ReglaTurnoCopyWith(ReglaTurno value, $Res Function(ReglaTurno) _then) = _$ReglaTurnoCopyWithImpl;
@useResult
$Res call({
 int? idRegla, String? descripcion, String tipo, String parametros
});




}
/// @nodoc
class _$ReglaTurnoCopyWithImpl<$Res>
    implements $ReglaTurnoCopyWith<$Res> {
  _$ReglaTurnoCopyWithImpl(this._self, this._then);

  final ReglaTurno _self;
  final $Res Function(ReglaTurno) _then;

/// Create a copy of ReglaTurno
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


/// Adds pattern-matching-related methods to [ReglaTurno].
extension ReglaTurnoPatterns on ReglaTurno {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReglaTurno value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReglaTurno() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReglaTurno value)  $default,){
final _that = this;
switch (_that) {
case _ReglaTurno():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReglaTurno value)?  $default,){
final _that = this;
switch (_that) {
case _ReglaTurno() when $default != null:
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
case _ReglaTurno() when $default != null:
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
case _ReglaTurno():
return $default(_that.idRegla,_that.descripcion,_that.tipo,_that.parametros);}
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
case _ReglaTurno() when $default != null:
return $default(_that.idRegla,_that.descripcion,_that.tipo,_that.parametros);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReglaTurno implements ReglaTurno {
  const _ReglaTurno({this.idRegla, this.descripcion, required this.tipo, required this.parametros});
  factory _ReglaTurno.fromJson(Map<String, dynamic> json) => _$ReglaTurnoFromJson(json);

@override final  int? idRegla;
@override final  String? descripcion;
@override final  String tipo;
@override final  String parametros;

/// Create a copy of ReglaTurno
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReglaTurnoCopyWith<_ReglaTurno> get copyWith => __$ReglaTurnoCopyWithImpl<_ReglaTurno>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReglaTurnoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReglaTurno&&(identical(other.idRegla, idRegla) || other.idRegla == idRegla)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.parametros, parametros) || other.parametros == parametros));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idRegla,descripcion,tipo,parametros);

@override
String toString() {
  return 'ReglaTurno(idRegla: $idRegla, descripcion: $descripcion, tipo: $tipo, parametros: $parametros)';
}


}

/// @nodoc
abstract mixin class _$ReglaTurnoCopyWith<$Res> implements $ReglaTurnoCopyWith<$Res> {
  factory _$ReglaTurnoCopyWith(_ReglaTurno value, $Res Function(_ReglaTurno) _then) = __$ReglaTurnoCopyWithImpl;
@override @useResult
$Res call({
 int? idRegla, String? descripcion, String tipo, String parametros
});




}
/// @nodoc
class __$ReglaTurnoCopyWithImpl<$Res>
    implements _$ReglaTurnoCopyWith<$Res> {
  __$ReglaTurnoCopyWithImpl(this._self, this._then);

  final _ReglaTurno _self;
  final $Res Function(_ReglaTurno) _then;

/// Create a copy of ReglaTurno
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idRegla = freezed,Object? descripcion = freezed,Object? tipo = null,Object? parametros = null,}) {
  return _then(_ReglaTurno(
idRegla: freezed == idRegla ? _self.idRegla : idRegla // ignore: cast_nullable_to_non_nullable
as int?,descripcion: freezed == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String?,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,parametros: null == parametros ? _self.parametros : parametros // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

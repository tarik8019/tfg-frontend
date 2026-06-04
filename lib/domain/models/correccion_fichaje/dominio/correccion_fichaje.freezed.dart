// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'correccion_fichaje.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CorreccionFichaje {

 int? get idCorreccion; Empleado get empleado; Fichaje get fichaje; String? get motivo; String get estado;
/// Create a copy of CorreccionFichaje
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CorreccionFichajeCopyWith<CorreccionFichaje> get copyWith => _$CorreccionFichajeCopyWithImpl<CorreccionFichaje>(this as CorreccionFichaje, _$identity);

  /// Serializes this CorreccionFichaje to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CorreccionFichaje&&(identical(other.idCorreccion, idCorreccion) || other.idCorreccion == idCorreccion)&&(identical(other.empleado, empleado) || other.empleado == empleado)&&(identical(other.fichaje, fichaje) || other.fichaje == fichaje)&&(identical(other.motivo, motivo) || other.motivo == motivo)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idCorreccion,empleado,fichaje,motivo,estado);

@override
String toString() {
  return 'CorreccionFichaje(idCorreccion: $idCorreccion, empleado: $empleado, fichaje: $fichaje, motivo: $motivo, estado: $estado)';
}


}

/// @nodoc
abstract mixin class $CorreccionFichajeCopyWith<$Res>  {
  factory $CorreccionFichajeCopyWith(CorreccionFichaje value, $Res Function(CorreccionFichaje) _then) = _$CorreccionFichajeCopyWithImpl;
@useResult
$Res call({
 int? idCorreccion, Empleado empleado, Fichaje fichaje, String? motivo, String estado
});


$EmpleadoCopyWith<$Res> get empleado;$FichajeCopyWith<$Res> get fichaje;

}
/// @nodoc
class _$CorreccionFichajeCopyWithImpl<$Res>
    implements $CorreccionFichajeCopyWith<$Res> {
  _$CorreccionFichajeCopyWithImpl(this._self, this._then);

  final CorreccionFichaje _self;
  final $Res Function(CorreccionFichaje) _then;

/// Create a copy of CorreccionFichaje
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idCorreccion = freezed,Object? empleado = null,Object? fichaje = null,Object? motivo = freezed,Object? estado = null,}) {
  return _then(_self.copyWith(
idCorreccion: freezed == idCorreccion ? _self.idCorreccion : idCorreccion // ignore: cast_nullable_to_non_nullable
as int?,empleado: null == empleado ? _self.empleado : empleado // ignore: cast_nullable_to_non_nullable
as Empleado,fichaje: null == fichaje ? _self.fichaje : fichaje // ignore: cast_nullable_to_non_nullable
as Fichaje,motivo: freezed == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String?,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CorreccionFichaje
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpleadoCopyWith<$Res> get empleado {
  
  return $EmpleadoCopyWith<$Res>(_self.empleado, (value) {
    return _then(_self.copyWith(empleado: value));
  });
}/// Create a copy of CorreccionFichaje
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FichajeCopyWith<$Res> get fichaje {
  
  return $FichajeCopyWith<$Res>(_self.fichaje, (value) {
    return _then(_self.copyWith(fichaje: value));
  });
}
}


/// Adds pattern-matching-related methods to [CorreccionFichaje].
extension CorreccionFichajePatterns on CorreccionFichaje {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CorreccionFichaje value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CorreccionFichaje() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CorreccionFichaje value)  $default,){
final _that = this;
switch (_that) {
case _CorreccionFichaje():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CorreccionFichaje value)?  $default,){
final _that = this;
switch (_that) {
case _CorreccionFichaje() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idCorreccion,  Empleado empleado,  Fichaje fichaje,  String? motivo,  String estado)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CorreccionFichaje() when $default != null:
return $default(_that.idCorreccion,_that.empleado,_that.fichaje,_that.motivo,_that.estado);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idCorreccion,  Empleado empleado,  Fichaje fichaje,  String? motivo,  String estado)  $default,) {final _that = this;
switch (_that) {
case _CorreccionFichaje():
return $default(_that.idCorreccion,_that.empleado,_that.fichaje,_that.motivo,_that.estado);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idCorreccion,  Empleado empleado,  Fichaje fichaje,  String? motivo,  String estado)?  $default,) {final _that = this;
switch (_that) {
case _CorreccionFichaje() when $default != null:
return $default(_that.idCorreccion,_that.empleado,_that.fichaje,_that.motivo,_that.estado);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CorreccionFichaje implements CorreccionFichaje {
  const _CorreccionFichaje({this.idCorreccion, required this.empleado, required this.fichaje, this.motivo, required this.estado});
  factory _CorreccionFichaje.fromJson(Map<String, dynamic> json) => _$CorreccionFichajeFromJson(json);

@override final  int? idCorreccion;
@override final  Empleado empleado;
@override final  Fichaje fichaje;
@override final  String? motivo;
@override final  String estado;

/// Create a copy of CorreccionFichaje
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CorreccionFichajeCopyWith<_CorreccionFichaje> get copyWith => __$CorreccionFichajeCopyWithImpl<_CorreccionFichaje>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CorreccionFichajeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CorreccionFichaje&&(identical(other.idCorreccion, idCorreccion) || other.idCorreccion == idCorreccion)&&(identical(other.empleado, empleado) || other.empleado == empleado)&&(identical(other.fichaje, fichaje) || other.fichaje == fichaje)&&(identical(other.motivo, motivo) || other.motivo == motivo)&&(identical(other.estado, estado) || other.estado == estado));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idCorreccion,empleado,fichaje,motivo,estado);

@override
String toString() {
  return 'CorreccionFichaje(idCorreccion: $idCorreccion, empleado: $empleado, fichaje: $fichaje, motivo: $motivo, estado: $estado)';
}


}

/// @nodoc
abstract mixin class _$CorreccionFichajeCopyWith<$Res> implements $CorreccionFichajeCopyWith<$Res> {
  factory _$CorreccionFichajeCopyWith(_CorreccionFichaje value, $Res Function(_CorreccionFichaje) _then) = __$CorreccionFichajeCopyWithImpl;
@override @useResult
$Res call({
 int? idCorreccion, Empleado empleado, Fichaje fichaje, String? motivo, String estado
});


@override $EmpleadoCopyWith<$Res> get empleado;@override $FichajeCopyWith<$Res> get fichaje;

}
/// @nodoc
class __$CorreccionFichajeCopyWithImpl<$Res>
    implements _$CorreccionFichajeCopyWith<$Res> {
  __$CorreccionFichajeCopyWithImpl(this._self, this._then);

  final _CorreccionFichaje _self;
  final $Res Function(_CorreccionFichaje) _then;

/// Create a copy of CorreccionFichaje
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idCorreccion = freezed,Object? empleado = null,Object? fichaje = null,Object? motivo = freezed,Object? estado = null,}) {
  return _then(_CorreccionFichaje(
idCorreccion: freezed == idCorreccion ? _self.idCorreccion : idCorreccion // ignore: cast_nullable_to_non_nullable
as int?,empleado: null == empleado ? _self.empleado : empleado // ignore: cast_nullable_to_non_nullable
as Empleado,fichaje: null == fichaje ? _self.fichaje : fichaje // ignore: cast_nullable_to_non_nullable
as Fichaje,motivo: freezed == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String?,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CorreccionFichaje
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpleadoCopyWith<$Res> get empleado {
  
  return $EmpleadoCopyWith<$Res>(_self.empleado, (value) {
    return _then(_self.copyWith(empleado: value));
  });
}/// Create a copy of CorreccionFichaje
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FichajeCopyWith<$Res> get fichaje {
  
  return $FichajeCopyWith<$Res>(_self.fichaje, (value) {
    return _then(_self.copyWith(fichaje: value));
  });
}
}

// dart format on

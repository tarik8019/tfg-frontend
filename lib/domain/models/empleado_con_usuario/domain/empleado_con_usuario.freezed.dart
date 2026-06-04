// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'empleado_con_usuario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmpleadoConUsuario {

 Empleado get empleado; User get user;
/// Create a copy of EmpleadoConUsuario
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmpleadoConUsuarioCopyWith<EmpleadoConUsuario> get copyWith => _$EmpleadoConUsuarioCopyWithImpl<EmpleadoConUsuario>(this as EmpleadoConUsuario, _$identity);

  /// Serializes this EmpleadoConUsuario to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmpleadoConUsuario&&(identical(other.empleado, empleado) || other.empleado == empleado)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empleado,user);

@override
String toString() {
  return 'EmpleadoConUsuario(empleado: $empleado, user: $user)';
}


}

/// @nodoc
abstract mixin class $EmpleadoConUsuarioCopyWith<$Res>  {
  factory $EmpleadoConUsuarioCopyWith(EmpleadoConUsuario value, $Res Function(EmpleadoConUsuario) _then) = _$EmpleadoConUsuarioCopyWithImpl;
@useResult
$Res call({
 Empleado empleado, User user
});


$EmpleadoCopyWith<$Res> get empleado;$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$EmpleadoConUsuarioCopyWithImpl<$Res>
    implements $EmpleadoConUsuarioCopyWith<$Res> {
  _$EmpleadoConUsuarioCopyWithImpl(this._self, this._then);

  final EmpleadoConUsuario _self;
  final $Res Function(EmpleadoConUsuario) _then;

/// Create a copy of EmpleadoConUsuario
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empleado = null,Object? user = null,}) {
  return _then(_self.copyWith(
empleado: null == empleado ? _self.empleado : empleado // ignore: cast_nullable_to_non_nullable
as Empleado,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}
/// Create a copy of EmpleadoConUsuario
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpleadoCopyWith<$Res> get empleado {
  
  return $EmpleadoCopyWith<$Res>(_self.empleado, (value) {
    return _then(_self.copyWith(empleado: value));
  });
}/// Create a copy of EmpleadoConUsuario
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [EmpleadoConUsuario].
extension EmpleadoConUsuarioPatterns on EmpleadoConUsuario {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmpleadoConUsuario value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmpleadoConUsuario() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmpleadoConUsuario value)  $default,){
final _that = this;
switch (_that) {
case _EmpleadoConUsuario():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmpleadoConUsuario value)?  $default,){
final _that = this;
switch (_that) {
case _EmpleadoConUsuario() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Empleado empleado,  User user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmpleadoConUsuario() when $default != null:
return $default(_that.empleado,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Empleado empleado,  User user)  $default,) {final _that = this;
switch (_that) {
case _EmpleadoConUsuario():
return $default(_that.empleado,_that.user);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Empleado empleado,  User user)?  $default,) {final _that = this;
switch (_that) {
case _EmpleadoConUsuario() when $default != null:
return $default(_that.empleado,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmpleadoConUsuario implements EmpleadoConUsuario {
  const _EmpleadoConUsuario({required this.empleado, required this.user});
  factory _EmpleadoConUsuario.fromJson(Map<String, dynamic> json) => _$EmpleadoConUsuarioFromJson(json);

@override final  Empleado empleado;
@override final  User user;

/// Create a copy of EmpleadoConUsuario
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmpleadoConUsuarioCopyWith<_EmpleadoConUsuario> get copyWith => __$EmpleadoConUsuarioCopyWithImpl<_EmpleadoConUsuario>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmpleadoConUsuarioToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmpleadoConUsuario&&(identical(other.empleado, empleado) || other.empleado == empleado)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empleado,user);

@override
String toString() {
  return 'EmpleadoConUsuario(empleado: $empleado, user: $user)';
}


}

/// @nodoc
abstract mixin class _$EmpleadoConUsuarioCopyWith<$Res> implements $EmpleadoConUsuarioCopyWith<$Res> {
  factory _$EmpleadoConUsuarioCopyWith(_EmpleadoConUsuario value, $Res Function(_EmpleadoConUsuario) _then) = __$EmpleadoConUsuarioCopyWithImpl;
@override @useResult
$Res call({
 Empleado empleado, User user
});


@override $EmpleadoCopyWith<$Res> get empleado;@override $UserCopyWith<$Res> get user;

}
/// @nodoc
class __$EmpleadoConUsuarioCopyWithImpl<$Res>
    implements _$EmpleadoConUsuarioCopyWith<$Res> {
  __$EmpleadoConUsuarioCopyWithImpl(this._self, this._then);

  final _EmpleadoConUsuario _self;
  final $Res Function(_EmpleadoConUsuario) _then;

/// Create a copy of EmpleadoConUsuario
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empleado = null,Object? user = null,}) {
  return _then(_EmpleadoConUsuario(
empleado: null == empleado ? _self.empleado : empleado // ignore: cast_nullable_to_non_nullable
as Empleado,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of EmpleadoConUsuario
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpleadoCopyWith<$Res> get empleado {
  
  return $EmpleadoCopyWith<$Res>(_self.empleado, (value) {
    return _then(_self.copyWith(empleado: value));
  });
}/// Create a copy of EmpleadoConUsuario
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on

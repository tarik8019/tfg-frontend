// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserConfig {

 int? get idUsuario; String? get nombre; String? get apellidos; String? get email; String? get pictureUrl; String? get rol; String? get token; bool? get isActivo; int? get idEmpresa; String? get idAppUser; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of UserConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserConfigCopyWith<UserConfig> get copyWith => _$UserConfigCopyWithImpl<UserConfig>(this as UserConfig, _$identity);

  /// Serializes this UserConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserConfig&&(identical(other.idUsuario, idUsuario) || other.idUsuario == idUsuario)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellidos, apellidos) || other.apellidos == apellidos)&&(identical(other.email, email) || other.email == email)&&(identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl)&&(identical(other.rol, rol) || other.rol == rol)&&(identical(other.token, token) || other.token == token)&&(identical(other.isActivo, isActivo) || other.isActivo == isActivo)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.idAppUser, idAppUser) || other.idAppUser == idAppUser)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idUsuario,nombre,apellidos,email,pictureUrl,rol,token,isActivo,idEmpresa,idAppUser,createdAt,updatedAt);

@override
String toString() {
  return 'UserConfig(idUsuario: $idUsuario, nombre: $nombre, apellidos: $apellidos, email: $email, pictureUrl: $pictureUrl, rol: $rol, token: $token, isActivo: $isActivo, idEmpresa: $idEmpresa, idAppUser: $idAppUser, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserConfigCopyWith<$Res>  {
  factory $UserConfigCopyWith(UserConfig value, $Res Function(UserConfig) _then) = _$UserConfigCopyWithImpl;
@useResult
$Res call({
 int? idUsuario, String? nombre, String? apellidos, String? email, String? pictureUrl, String? rol, String? token, bool? isActivo, int? idEmpresa, String? idAppUser, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$UserConfigCopyWithImpl<$Res>
    implements $UserConfigCopyWith<$Res> {
  _$UserConfigCopyWithImpl(this._self, this._then);

  final UserConfig _self;
  final $Res Function(UserConfig) _then;

/// Create a copy of UserConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idUsuario = freezed,Object? nombre = freezed,Object? apellidos = freezed,Object? email = freezed,Object? pictureUrl = freezed,Object? rol = freezed,Object? token = freezed,Object? isActivo = freezed,Object? idEmpresa = freezed,Object? idAppUser = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
idUsuario: freezed == idUsuario ? _self.idUsuario : idUsuario // ignore: cast_nullable_to_non_nullable
as int?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,apellidos: freezed == apellidos ? _self.apellidos : apellidos // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,pictureUrl: freezed == pictureUrl ? _self.pictureUrl : pictureUrl // ignore: cast_nullable_to_non_nullable
as String?,rol: freezed == rol ? _self.rol : rol // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,isActivo: freezed == isActivo ? _self.isActivo : isActivo // ignore: cast_nullable_to_non_nullable
as bool?,idEmpresa: freezed == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int?,idAppUser: freezed == idAppUser ? _self.idAppUser : idAppUser // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserConfig].
extension UserConfigPatterns on UserConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserConfig value)  $default,){
final _that = this;
switch (_that) {
case _UserConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserConfig value)?  $default,){
final _that = this;
switch (_that) {
case _UserConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idUsuario,  String? nombre,  String? apellidos,  String? email,  String? pictureUrl,  String? rol,  String? token,  bool? isActivo,  int? idEmpresa,  String? idAppUser,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserConfig() when $default != null:
return $default(_that.idUsuario,_that.nombre,_that.apellidos,_that.email,_that.pictureUrl,_that.rol,_that.token,_that.isActivo,_that.idEmpresa,_that.idAppUser,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idUsuario,  String? nombre,  String? apellidos,  String? email,  String? pictureUrl,  String? rol,  String? token,  bool? isActivo,  int? idEmpresa,  String? idAppUser,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserConfig():
return $default(_that.idUsuario,_that.nombre,_that.apellidos,_that.email,_that.pictureUrl,_that.rol,_that.token,_that.isActivo,_that.idEmpresa,_that.idAppUser,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idUsuario,  String? nombre,  String? apellidos,  String? email,  String? pictureUrl,  String? rol,  String? token,  bool? isActivo,  int? idEmpresa,  String? idAppUser,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserConfig() when $default != null:
return $default(_that.idUsuario,_that.nombre,_that.apellidos,_that.email,_that.pictureUrl,_that.rol,_that.token,_that.isActivo,_that.idEmpresa,_that.idAppUser,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserConfig implements UserConfig {
  const _UserConfig({this.idUsuario, this.nombre, this.apellidos, this.email, this.pictureUrl, this.rol, this.token, this.isActivo, this.idEmpresa, this.idAppUser, this.createdAt, this.updatedAt});
  factory _UserConfig.fromJson(Map<String, dynamic> json) => _$UserConfigFromJson(json);

@override final  int? idUsuario;
@override final  String? nombre;
@override final  String? apellidos;
@override final  String? email;
@override final  String? pictureUrl;
@override final  String? rol;
@override final  String? token;
@override final  bool? isActivo;
@override final  int? idEmpresa;
@override final  String? idAppUser;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of UserConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserConfigCopyWith<_UserConfig> get copyWith => __$UserConfigCopyWithImpl<_UserConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserConfig&&(identical(other.idUsuario, idUsuario) || other.idUsuario == idUsuario)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellidos, apellidos) || other.apellidos == apellidos)&&(identical(other.email, email) || other.email == email)&&(identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl)&&(identical(other.rol, rol) || other.rol == rol)&&(identical(other.token, token) || other.token == token)&&(identical(other.isActivo, isActivo) || other.isActivo == isActivo)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.idAppUser, idAppUser) || other.idAppUser == idAppUser)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idUsuario,nombre,apellidos,email,pictureUrl,rol,token,isActivo,idEmpresa,idAppUser,createdAt,updatedAt);

@override
String toString() {
  return 'UserConfig(idUsuario: $idUsuario, nombre: $nombre, apellidos: $apellidos, email: $email, pictureUrl: $pictureUrl, rol: $rol, token: $token, isActivo: $isActivo, idEmpresa: $idEmpresa, idAppUser: $idAppUser, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserConfigCopyWith<$Res> implements $UserConfigCopyWith<$Res> {
  factory _$UserConfigCopyWith(_UserConfig value, $Res Function(_UserConfig) _then) = __$UserConfigCopyWithImpl;
@override @useResult
$Res call({
 int? idUsuario, String? nombre, String? apellidos, String? email, String? pictureUrl, String? rol, String? token, bool? isActivo, int? idEmpresa, String? idAppUser, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$UserConfigCopyWithImpl<$Res>
    implements _$UserConfigCopyWith<$Res> {
  __$UserConfigCopyWithImpl(this._self, this._then);

  final _UserConfig _self;
  final $Res Function(_UserConfig) _then;

/// Create a copy of UserConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idUsuario = freezed,Object? nombre = freezed,Object? apellidos = freezed,Object? email = freezed,Object? pictureUrl = freezed,Object? rol = freezed,Object? token = freezed,Object? isActivo = freezed,Object? idEmpresa = freezed,Object? idAppUser = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_UserConfig(
idUsuario: freezed == idUsuario ? _self.idUsuario : idUsuario // ignore: cast_nullable_to_non_nullable
as int?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,apellidos: freezed == apellidos ? _self.apellidos : apellidos // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,pictureUrl: freezed == pictureUrl ? _self.pictureUrl : pictureUrl // ignore: cast_nullable_to_non_nullable
as String?,rol: freezed == rol ? _self.rol : rol // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,isActivo: freezed == isActivo ? _self.isActivo : isActivo // ignore: cast_nullable_to_non_nullable
as bool?,idEmpresa: freezed == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int?,idAppUser: freezed == idAppUser ? _self.idAppUser : idAppUser // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on

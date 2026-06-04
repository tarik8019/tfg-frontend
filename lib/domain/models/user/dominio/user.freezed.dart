// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

 int? get idUsuario; String get nombre; String get apellidos; String get email; String get rol; String? get password; String? get token; String? get pictureUrl; int get idEmpresa; Empresa? get empresa; String? get idAppUser; bool get isActivo; DateTime get createdAt; DateTime? get updatedAt;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.idUsuario, idUsuario) || other.idUsuario == idUsuario)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellidos, apellidos) || other.apellidos == apellidos)&&(identical(other.email, email) || other.email == email)&&(identical(other.rol, rol) || other.rol == rol)&&(identical(other.password, password) || other.password == password)&&(identical(other.token, token) || other.token == token)&&(identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.empresa, empresa) || other.empresa == empresa)&&(identical(other.idAppUser, idAppUser) || other.idAppUser == idAppUser)&&(identical(other.isActivo, isActivo) || other.isActivo == isActivo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idUsuario,nombre,apellidos,email,rol,password,token,pictureUrl,idEmpresa,empresa,idAppUser,isActivo,createdAt,updatedAt);

@override
String toString() {
  return 'User(idUsuario: $idUsuario, nombre: $nombre, apellidos: $apellidos, email: $email, rol: $rol, password: $password, token: $token, pictureUrl: $pictureUrl, idEmpresa: $idEmpresa, empresa: $empresa, idAppUser: $idAppUser, isActivo: $isActivo, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 int? idUsuario, String nombre, String apellidos, String email, String rol, String? password, String? token, String? pictureUrl, int idEmpresa, Empresa? empresa, String? idAppUser, bool isActivo, DateTime createdAt, DateTime? updatedAt
});


$EmpresaCopyWith<$Res>? get empresa;

}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idUsuario = freezed,Object? nombre = null,Object? apellidos = null,Object? email = null,Object? rol = null,Object? password = freezed,Object? token = freezed,Object? pictureUrl = freezed,Object? idEmpresa = null,Object? empresa = freezed,Object? idAppUser = freezed,Object? isActivo = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
idUsuario: freezed == idUsuario ? _self.idUsuario : idUsuario // ignore: cast_nullable_to_non_nullable
as int?,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,apellidos: null == apellidos ? _self.apellidos : apellidos // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,rol: null == rol ? _self.rol : rol // ignore: cast_nullable_to_non_nullable
as String,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,pictureUrl: freezed == pictureUrl ? _self.pictureUrl : pictureUrl // ignore: cast_nullable_to_non_nullable
as String?,idEmpresa: null == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int,empresa: freezed == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa?,idAppUser: freezed == idAppUser ? _self.idAppUser : idAppUser // ignore: cast_nullable_to_non_nullable
as String?,isActivo: null == isActivo ? _self.isActivo : isActivo // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpresaCopyWith<$Res>? get empresa {
    if (_self.empresa == null) {
    return null;
  }

  return $EmpresaCopyWith<$Res>(_self.empresa!, (value) {
    return _then(_self.copyWith(empresa: value));
  });
}
}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? idUsuario,  String nombre,  String apellidos,  String email,  String rol,  String? password,  String? token,  String? pictureUrl,  int idEmpresa,  Empresa? empresa,  String? idAppUser,  bool isActivo,  DateTime createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.idUsuario,_that.nombre,_that.apellidos,_that.email,_that.rol,_that.password,_that.token,_that.pictureUrl,_that.idEmpresa,_that.empresa,_that.idAppUser,_that.isActivo,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? idUsuario,  String nombre,  String apellidos,  String email,  String rol,  String? password,  String? token,  String? pictureUrl,  int idEmpresa,  Empresa? empresa,  String? idAppUser,  bool isActivo,  DateTime createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.idUsuario,_that.nombre,_that.apellidos,_that.email,_that.rol,_that.password,_that.token,_that.pictureUrl,_that.idEmpresa,_that.empresa,_that.idAppUser,_that.isActivo,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? idUsuario,  String nombre,  String apellidos,  String email,  String rol,  String? password,  String? token,  String? pictureUrl,  int idEmpresa,  Empresa? empresa,  String? idAppUser,  bool isActivo,  DateTime createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.idUsuario,_that.nombre,_that.apellidos,_that.email,_that.rol,_that.password,_that.token,_that.pictureUrl,_that.idEmpresa,_that.empresa,_that.idAppUser,_that.isActivo,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({this.idUsuario, required this.nombre, required this.apellidos, required this.email, required this.rol, this.password, this.token, this.pictureUrl, required this.idEmpresa, this.empresa, this.idAppUser, required this.isActivo, required this.createdAt, this.updatedAt});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  int? idUsuario;
@override final  String nombre;
@override final  String apellidos;
@override final  String email;
@override final  String rol;
@override final  String? password;
@override final  String? token;
@override final  String? pictureUrl;
@override final  int idEmpresa;
@override final  Empresa? empresa;
@override final  String? idAppUser;
@override final  bool isActivo;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.idUsuario, idUsuario) || other.idUsuario == idUsuario)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellidos, apellidos) || other.apellidos == apellidos)&&(identical(other.email, email) || other.email == email)&&(identical(other.rol, rol) || other.rol == rol)&&(identical(other.password, password) || other.password == password)&&(identical(other.token, token) || other.token == token)&&(identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.empresa, empresa) || other.empresa == empresa)&&(identical(other.idAppUser, idAppUser) || other.idAppUser == idAppUser)&&(identical(other.isActivo, isActivo) || other.isActivo == isActivo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idUsuario,nombre,apellidos,email,rol,password,token,pictureUrl,idEmpresa,empresa,idAppUser,isActivo,createdAt,updatedAt);

@override
String toString() {
  return 'User(idUsuario: $idUsuario, nombre: $nombre, apellidos: $apellidos, email: $email, rol: $rol, password: $password, token: $token, pictureUrl: $pictureUrl, idEmpresa: $idEmpresa, empresa: $empresa, idAppUser: $idAppUser, isActivo: $isActivo, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 int? idUsuario, String nombre, String apellidos, String email, String rol, String? password, String? token, String? pictureUrl, int idEmpresa, Empresa? empresa, String? idAppUser, bool isActivo, DateTime createdAt, DateTime? updatedAt
});


@override $EmpresaCopyWith<$Res>? get empresa;

}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idUsuario = freezed,Object? nombre = null,Object? apellidos = null,Object? email = null,Object? rol = null,Object? password = freezed,Object? token = freezed,Object? pictureUrl = freezed,Object? idEmpresa = null,Object? empresa = freezed,Object? idAppUser = freezed,Object? isActivo = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_User(
idUsuario: freezed == idUsuario ? _self.idUsuario : idUsuario // ignore: cast_nullable_to_non_nullable
as int?,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,apellidos: null == apellidos ? _self.apellidos : apellidos // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,rol: null == rol ? _self.rol : rol // ignore: cast_nullable_to_non_nullable
as String,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,pictureUrl: freezed == pictureUrl ? _self.pictureUrl : pictureUrl // ignore: cast_nullable_to_non_nullable
as String?,idEmpresa: null == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int,empresa: freezed == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa?,idAppUser: freezed == idAppUser ? _self.idAppUser : idAppUser // ignore: cast_nullable_to_non_nullable
as String?,isActivo: null == isActivo ? _self.isActivo : isActivo // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpresaCopyWith<$Res>? get empresa {
    if (_self.empresa == null) {
    return null;
  }

  return $EmpresaCopyWith<$Res>(_self.empresa!, (value) {
    return _then(_self.copyWith(empresa: value));
  });
}
}

// dart format on

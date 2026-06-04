// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserApiModel {

 int? get id; String get nombre; String get apellidos; String get email; String? get password; String get rol; bool? get isActivo; int get idEmpresa; String? get idAppUser; String? get pictureUrl;@JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime) DateTime? get createdAt;@JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime) DateTime? get updatedAt;// solo para respuestas
 String? get token;
/// Create a copy of UserApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserApiModelCopyWith<UserApiModel> get copyWith => _$UserApiModelCopyWithImpl<UserApiModel>(this as UserApiModel, _$identity);

  /// Serializes this UserApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserApiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellidos, apellidos) || other.apellidos == apellidos)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.rol, rol) || other.rol == rol)&&(identical(other.isActivo, isActivo) || other.isActivo == isActivo)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.idAppUser, idAppUser) || other.idAppUser == idAppUser)&&(identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nombre,apellidos,email,password,rol,isActivo,idEmpresa,idAppUser,pictureUrl,createdAt,updatedAt,token);

@override
String toString() {
  return 'UserApiModel(id: $id, nombre: $nombre, apellidos: $apellidos, email: $email, password: $password, rol: $rol, isActivo: $isActivo, idEmpresa: $idEmpresa, idAppUser: $idAppUser, pictureUrl: $pictureUrl, createdAt: $createdAt, updatedAt: $updatedAt, token: $token)';
}


}

/// @nodoc
abstract mixin class $UserApiModelCopyWith<$Res>  {
  factory $UserApiModelCopyWith(UserApiModel value, $Res Function(UserApiModel) _then) = _$UserApiModelCopyWithImpl;
@useResult
$Res call({
 int? id, String nombre, String apellidos, String email, String? password, String rol, bool? isActivo, int idEmpresa, String? idAppUser, String? pictureUrl,@JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime) DateTime? createdAt,@JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime) DateTime? updatedAt, String? token
});




}
/// @nodoc
class _$UserApiModelCopyWithImpl<$Res>
    implements $UserApiModelCopyWith<$Res> {
  _$UserApiModelCopyWithImpl(this._self, this._then);

  final UserApiModel _self;
  final $Res Function(UserApiModel) _then;

/// Create a copy of UserApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? nombre = null,Object? apellidos = null,Object? email = null,Object? password = freezed,Object? rol = null,Object? isActivo = freezed,Object? idEmpresa = null,Object? idAppUser = freezed,Object? pictureUrl = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? token = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,apellidos: null == apellidos ? _self.apellidos : apellidos // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,rol: null == rol ? _self.rol : rol // ignore: cast_nullable_to_non_nullable
as String,isActivo: freezed == isActivo ? _self.isActivo : isActivo // ignore: cast_nullable_to_non_nullable
as bool?,idEmpresa: null == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int,idAppUser: freezed == idAppUser ? _self.idAppUser : idAppUser // ignore: cast_nullable_to_non_nullable
as String?,pictureUrl: freezed == pictureUrl ? _self.pictureUrl : pictureUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserApiModel].
extension UserApiModelPatterns on UserApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserApiModel value)  $default,){
final _that = this;
switch (_that) {
case _UserApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String nombre,  String apellidos,  String email,  String? password,  String rol,  bool? isActivo,  int idEmpresa,  String? idAppUser,  String? pictureUrl, @JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime)  DateTime? createdAt, @JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime)  DateTime? updatedAt,  String? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserApiModel() when $default != null:
return $default(_that.id,_that.nombre,_that.apellidos,_that.email,_that.password,_that.rol,_that.isActivo,_that.idEmpresa,_that.idAppUser,_that.pictureUrl,_that.createdAt,_that.updatedAt,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String nombre,  String apellidos,  String email,  String? password,  String rol,  bool? isActivo,  int idEmpresa,  String? idAppUser,  String? pictureUrl, @JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime)  DateTime? createdAt, @JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime)  DateTime? updatedAt,  String? token)  $default,) {final _that = this;
switch (_that) {
case _UserApiModel():
return $default(_that.id,_that.nombre,_that.apellidos,_that.email,_that.password,_that.rol,_that.isActivo,_that.idEmpresa,_that.idAppUser,_that.pictureUrl,_that.createdAt,_that.updatedAt,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String nombre,  String apellidos,  String email,  String? password,  String rol,  bool? isActivo,  int idEmpresa,  String? idAppUser,  String? pictureUrl, @JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime)  DateTime? createdAt, @JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime)  DateTime? updatedAt,  String? token)?  $default,) {final _that = this;
switch (_that) {
case _UserApiModel() when $default != null:
return $default(_that.id,_that.nombre,_that.apellidos,_that.email,_that.password,_that.rol,_that.isActivo,_that.idEmpresa,_that.idAppUser,_that.pictureUrl,_that.createdAt,_that.updatedAt,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserApiModel implements UserApiModel {
  const _UserApiModel({this.id, required this.nombre, required this.apellidos, required this.email, this.password, required this.rol, this.isActivo, required this.idEmpresa, this.idAppUser, this.pictureUrl, @JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime) this.createdAt, @JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime) this.updatedAt, this.token});
  factory _UserApiModel.fromJson(Map<String, dynamic> json) => _$UserApiModelFromJson(json);

@override final  int? id;
@override final  String nombre;
@override final  String apellidos;
@override final  String email;
@override final  String? password;
@override final  String rol;
@override final  bool? isActivo;
@override final  int idEmpresa;
@override final  String? idAppUser;
@override final  String? pictureUrl;
@override@JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime) final  DateTime? createdAt;
@override@JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime) final  DateTime? updatedAt;
// solo para respuestas
@override final  String? token;

/// Create a copy of UserApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserApiModelCopyWith<_UserApiModel> get copyWith => __$UserApiModelCopyWithImpl<_UserApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserApiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellidos, apellidos) || other.apellidos == apellidos)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.rol, rol) || other.rol == rol)&&(identical(other.isActivo, isActivo) || other.isActivo == isActivo)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.idAppUser, idAppUser) || other.idAppUser == idAppUser)&&(identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nombre,apellidos,email,password,rol,isActivo,idEmpresa,idAppUser,pictureUrl,createdAt,updatedAt,token);

@override
String toString() {
  return 'UserApiModel(id: $id, nombre: $nombre, apellidos: $apellidos, email: $email, password: $password, rol: $rol, isActivo: $isActivo, idEmpresa: $idEmpresa, idAppUser: $idAppUser, pictureUrl: $pictureUrl, createdAt: $createdAt, updatedAt: $updatedAt, token: $token)';
}


}

/// @nodoc
abstract mixin class _$UserApiModelCopyWith<$Res> implements $UserApiModelCopyWith<$Res> {
  factory _$UserApiModelCopyWith(_UserApiModel value, $Res Function(_UserApiModel) _then) = __$UserApiModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String nombre, String apellidos, String email, String? password, String rol, bool? isActivo, int idEmpresa, String? idAppUser, String? pictureUrl,@JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime) DateTime? createdAt,@JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime) DateTime? updatedAt, String? token
});




}
/// @nodoc
class __$UserApiModelCopyWithImpl<$Res>
    implements _$UserApiModelCopyWith<$Res> {
  __$UserApiModelCopyWithImpl(this._self, this._then);

  final _UserApiModel _self;
  final $Res Function(_UserApiModel) _then;

/// Create a copy of UserApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? nombre = null,Object? apellidos = null,Object? email = null,Object? password = freezed,Object? rol = null,Object? isActivo = freezed,Object? idEmpresa = null,Object? idAppUser = freezed,Object? pictureUrl = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? token = freezed,}) {
  return _then(_UserApiModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,apellidos: null == apellidos ? _self.apellidos : apellidos // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,rol: null == rol ? _self.rol : rol // ignore: cast_nullable_to_non_nullable
as String,isActivo: freezed == isActivo ? _self.isActivo : isActivo // ignore: cast_nullable_to_non_nullable
as bool?,idEmpresa: null == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int,idAppUser: freezed == idAppUser ? _self.idAppUser : idAppUser // ignore: cast_nullable_to_non_nullable
as String?,pictureUrl: freezed == pictureUrl ? _self.pictureUrl : pictureUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

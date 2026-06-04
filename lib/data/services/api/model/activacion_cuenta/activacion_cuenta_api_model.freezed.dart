// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activacion_cuenta_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActivacionCuentaApiModel {

 String get email; String get token; String get password;
/// Create a copy of ActivacionCuentaApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivacionCuentaApiModelCopyWith<ActivacionCuentaApiModel> get copyWith => _$ActivacionCuentaApiModelCopyWithImpl<ActivacionCuentaApiModel>(this as ActivacionCuentaApiModel, _$identity);

  /// Serializes this ActivacionCuentaApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivacionCuentaApiModel&&(identical(other.email, email) || other.email == email)&&(identical(other.token, token) || other.token == token)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,token,password);

@override
String toString() {
  return 'ActivacionCuentaApiModel(email: $email, token: $token, password: $password)';
}


}

/// @nodoc
abstract mixin class $ActivacionCuentaApiModelCopyWith<$Res>  {
  factory $ActivacionCuentaApiModelCopyWith(ActivacionCuentaApiModel value, $Res Function(ActivacionCuentaApiModel) _then) = _$ActivacionCuentaApiModelCopyWithImpl;
@useResult
$Res call({
 String email, String token, String password
});




}
/// @nodoc
class _$ActivacionCuentaApiModelCopyWithImpl<$Res>
    implements $ActivacionCuentaApiModelCopyWith<$Res> {
  _$ActivacionCuentaApiModelCopyWithImpl(this._self, this._then);

  final ActivacionCuentaApiModel _self;
  final $Res Function(ActivacionCuentaApiModel) _then;

/// Create a copy of ActivacionCuentaApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? token = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivacionCuentaApiModel].
extension ActivacionCuentaApiModelPatterns on ActivacionCuentaApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivacionCuentaApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivacionCuentaApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivacionCuentaApiModel value)  $default,){
final _that = this;
switch (_that) {
case _ActivacionCuentaApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivacionCuentaApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _ActivacionCuentaApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String token,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivacionCuentaApiModel() when $default != null:
return $default(_that.email,_that.token,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String token,  String password)  $default,) {final _that = this;
switch (_that) {
case _ActivacionCuentaApiModel():
return $default(_that.email,_that.token,_that.password);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String token,  String password)?  $default,) {final _that = this;
switch (_that) {
case _ActivacionCuentaApiModel() when $default != null:
return $default(_that.email,_that.token,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivacionCuentaApiModel implements ActivacionCuentaApiModel {
  const _ActivacionCuentaApiModel({required this.email, required this.token, required this.password});
  factory _ActivacionCuentaApiModel.fromJson(Map<String, dynamic> json) => _$ActivacionCuentaApiModelFromJson(json);

@override final  String email;
@override final  String token;
@override final  String password;

/// Create a copy of ActivacionCuentaApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivacionCuentaApiModelCopyWith<_ActivacionCuentaApiModel> get copyWith => __$ActivacionCuentaApiModelCopyWithImpl<_ActivacionCuentaApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivacionCuentaApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivacionCuentaApiModel&&(identical(other.email, email) || other.email == email)&&(identical(other.token, token) || other.token == token)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,token,password);

@override
String toString() {
  return 'ActivacionCuentaApiModel(email: $email, token: $token, password: $password)';
}


}

/// @nodoc
abstract mixin class _$ActivacionCuentaApiModelCopyWith<$Res> implements $ActivacionCuentaApiModelCopyWith<$Res> {
  factory _$ActivacionCuentaApiModelCopyWith(_ActivacionCuentaApiModel value, $Res Function(_ActivacionCuentaApiModel) _then) = __$ActivacionCuentaApiModelCopyWithImpl;
@override @useResult
$Res call({
 String email, String token, String password
});




}
/// @nodoc
class __$ActivacionCuentaApiModelCopyWithImpl<$Res>
    implements _$ActivacionCuentaApiModelCopyWith<$Res> {
  __$ActivacionCuentaApiModelCopyWithImpl(this._self, this._then);

  final _ActivacionCuentaApiModel _self;
  final $Res Function(_ActivacionCuentaApiModel) _then;

/// Create a copy of ActivacionCuentaApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? token = null,Object? password = null,}) {
  return _then(_ActivacionCuentaApiModel(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

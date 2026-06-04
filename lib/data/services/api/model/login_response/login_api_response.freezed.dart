// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginApiResponse {

 String get statusCode; bool get isSuccess; List<String> get errorMessages; LoginResponse get result;
/// Create a copy of LoginApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginApiResponseCopyWith<LoginApiResponse> get copyWith => _$LoginApiResponseCopyWithImpl<LoginApiResponse>(this as LoginApiResponse, _$identity);

  /// Serializes this LoginApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginApiResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&const DeepCollectionEquality().equals(other.errorMessages, errorMessages)&&(identical(other.result, result) || other.result == result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,isSuccess,const DeepCollectionEquality().hash(errorMessages),result);

@override
String toString() {
  return 'LoginApiResponse(statusCode: $statusCode, isSuccess: $isSuccess, errorMessages: $errorMessages, result: $result)';
}


}

/// @nodoc
abstract mixin class $LoginApiResponseCopyWith<$Res>  {
  factory $LoginApiResponseCopyWith(LoginApiResponse value, $Res Function(LoginApiResponse) _then) = _$LoginApiResponseCopyWithImpl;
@useResult
$Res call({
 String statusCode, bool isSuccess, List<String> errorMessages, LoginResponse result
});


$LoginResponseCopyWith<$Res> get result;

}
/// @nodoc
class _$LoginApiResponseCopyWithImpl<$Res>
    implements $LoginApiResponseCopyWith<$Res> {
  _$LoginApiResponseCopyWithImpl(this._self, this._then);

  final LoginApiResponse _self;
  final $Res Function(LoginApiResponse) _then;

/// Create a copy of LoginApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? isSuccess = null,Object? errorMessages = null,Object? result = null,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,errorMessages: null == errorMessages ? _self.errorMessages : errorMessages // ignore: cast_nullable_to_non_nullable
as List<String>,result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as LoginResponse,
  ));
}
/// Create a copy of LoginApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<$Res> get result {
  
  return $LoginResponseCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginApiResponse].
extension LoginApiResponsePatterns on LoginApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _LoginApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LoginApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusCode,  bool isSuccess,  List<String> errorMessages,  LoginResponse result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginApiResponse() when $default != null:
return $default(_that.statusCode,_that.isSuccess,_that.errorMessages,_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusCode,  bool isSuccess,  List<String> errorMessages,  LoginResponse result)  $default,) {final _that = this;
switch (_that) {
case _LoginApiResponse():
return $default(_that.statusCode,_that.isSuccess,_that.errorMessages,_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusCode,  bool isSuccess,  List<String> errorMessages,  LoginResponse result)?  $default,) {final _that = this;
switch (_that) {
case _LoginApiResponse() when $default != null:
return $default(_that.statusCode,_that.isSuccess,_that.errorMessages,_that.result);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginApiResponse implements LoginApiResponse {
  const _LoginApiResponse({required this.statusCode, required this.isSuccess, required final  List<String> errorMessages, required this.result}): _errorMessages = errorMessages;
  factory _LoginApiResponse.fromJson(Map<String, dynamic> json) => _$LoginApiResponseFromJson(json);

@override final  String statusCode;
@override final  bool isSuccess;
 final  List<String> _errorMessages;
@override List<String> get errorMessages {
  if (_errorMessages is EqualUnmodifiableListView) return _errorMessages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errorMessages);
}

@override final  LoginResponse result;

/// Create a copy of LoginApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginApiResponseCopyWith<_LoginApiResponse> get copyWith => __$LoginApiResponseCopyWithImpl<_LoginApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginApiResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&const DeepCollectionEquality().equals(other._errorMessages, _errorMessages)&&(identical(other.result, result) || other.result == result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,isSuccess,const DeepCollectionEquality().hash(_errorMessages),result);

@override
String toString() {
  return 'LoginApiResponse(statusCode: $statusCode, isSuccess: $isSuccess, errorMessages: $errorMessages, result: $result)';
}


}

/// @nodoc
abstract mixin class _$LoginApiResponseCopyWith<$Res> implements $LoginApiResponseCopyWith<$Res> {
  factory _$LoginApiResponseCopyWith(_LoginApiResponse value, $Res Function(_LoginApiResponse) _then) = __$LoginApiResponseCopyWithImpl;
@override @useResult
$Res call({
 String statusCode, bool isSuccess, List<String> errorMessages, LoginResponse result
});


@override $LoginResponseCopyWith<$Res> get result;

}
/// @nodoc
class __$LoginApiResponseCopyWithImpl<$Res>
    implements _$LoginApiResponseCopyWith<$Res> {
  __$LoginApiResponseCopyWithImpl(this._self, this._then);

  final _LoginApiResponse _self;
  final $Res Function(_LoginApiResponse) _then;

/// Create a copy of LoginApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? isSuccess = null,Object? errorMessages = null,Object? result = null,}) {
  return _then(_LoginApiResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,errorMessages: null == errorMessages ? _self._errorMessages : errorMessages // ignore: cast_nullable_to_non_nullable
as List<String>,result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as LoginResponse,
  ));
}

/// Create a copy of LoginApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<$Res> get result {
  
  return $LoginResponseCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

// dart format on

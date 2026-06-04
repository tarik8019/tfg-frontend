// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginApiResponse _$LoginApiResponseFromJson(Map<String, dynamic> json) =>
    _LoginApiResponse(
      statusCode: json['statusCode'] as String,
      isSuccess: json['isSuccess'] as bool,
      errorMessages: (json['errorMessages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      result: LoginResponse.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginApiResponseToJson(_LoginApiResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'isSuccess': instance.isSuccess,
      'errorMessages': instance.errorMessages,
      'result': instance.result,
    };

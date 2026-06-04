import 'package:freezed_annotation/freezed_annotation.dart';

import 'login_response.dart';


part 'login_api_response.freezed.dart';
part 'login_api_response.g.dart';

@freezed
abstract class LoginApiResponse with _$LoginApiResponse {
  const factory LoginApiResponse({
    required String statusCode,
    required bool isSuccess,
    required List<String> errorMessages,
    required LoginResponse result,
  }) = _LoginApiResponse;

  factory LoginApiResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginApiResponseFromJson(json);
}
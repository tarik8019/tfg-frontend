import 'package:freezed_annotation/freezed_annotation.dart';


part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required int id,
    required String token,
    required String nombre,
    required String apellidos,
    required String email,
    required String rol,
    required int idEmpresa,
    required String pictureUrl,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
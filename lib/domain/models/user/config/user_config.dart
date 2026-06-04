import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_config.freezed.dart';
part 'user_config.g.dart';

@freezed
sealed class UserConfig with _$UserConfig {
  const factory UserConfig({
   int? idUsuario,
    String? nombre,
    String? apellidos,
    String? email,
    String? pictureUrl,
    String? rol,
    String? token,
    bool? isActivo,
    int? idEmpresa,
    String? idAppUser,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserConfig;

  factory UserConfig.fromJson(Map<String, Object?> json) =>
      _$UserConfigFromJson(json);
}
  
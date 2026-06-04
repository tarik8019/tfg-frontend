import 'package:freezed_annotation/freezed_annotation.dart';

part 'sede_config.freezed.dart';
part 'sede_config.g.dart';

@freezed
sealed class SedeConfig with _$SedeConfig {
  const factory SedeConfig({
    String? nombre,
    String? direccion,
    String? ciudad,
    String? telefono,
  }) = _SedeConfig;

  factory SedeConfig.fromJson(Map<String, Object?> json) =>
      _$SedeConfigFromJson(json);
}

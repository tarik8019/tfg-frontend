import 'package:freezed_annotation/freezed_annotation.dart';

part 'regla_turno_config.freezed.dart';
part 'regla_turno_config.g.dart';

@freezed
sealed class ReglaTurnoConfig with _$ReglaTurnoConfig {
  const factory ReglaTurnoConfig({
    String? nombre,
    int? horasMinimas,
    int? horasMaximas,
    bool? esObligatoria,
  }) = _ReglaTurnoConfig;

  factory ReglaTurnoConfig.fromJson(Map<String, Object?> json) =>
      _$ReglaTurnoConfigFromJson(json);
}

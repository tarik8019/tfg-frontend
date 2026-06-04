import 'package:freezed_annotation/freezed_annotation.dart';

part 'correccion_fichaje_config.freezed.dart';
part 'correccion_fichaje_config.g.dart';

@freezed
sealed class CorreccionFichajeConfig with _$CorreccionFichajeConfig {
  const factory CorreccionFichajeConfig({
    int? idEmpleado,
    int? idFichaje,
    String? motivo,
    String? estado,
  }) = _CorreccionFichajeConfig;

  factory CorreccionFichajeConfig.fromJson(Map<String, Object?> json) =>
      _$CorreccionFichajeConfigFromJson(json);
}

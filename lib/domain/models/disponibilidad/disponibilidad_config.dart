import 'package:freezed_annotation/freezed_annotation.dart';

part 'disponibilidad_config.freezed.dart';
part 'disponibilidad_config.g.dart';

@freezed
sealed class DisponibilidadConfig with _$DisponibilidadConfig {
  const factory DisponibilidadConfig({
    int? idEmpleado,
    String? diaSemana,
    String? horaInicio,
    String? horaFin,
  }) = _DisponibilidadConfig;

  factory DisponibilidadConfig.fromJson(Map<String, Object?> json) =>
      _$DisponibilidadConfigFromJson(json);
}

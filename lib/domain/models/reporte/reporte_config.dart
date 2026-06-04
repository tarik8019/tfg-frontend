import 'package:freezed_annotation/freezed_annotation.dart';

part 'reporte_config.freezed.dart';
part 'reporte_config.g.dart';

@freezed
sealed class ReporteConfig with _$ReporteConfig {
  const factory ReporteConfig({
    int? idUsuario,
    String? tipo,
    DateTime? fechaInicio,
    DateTime? fechaFin,
  }) = _ReporteConfig;

  factory ReporteConfig.fromJson(Map<String, Object?> json) =>
      _$ReporteConfigFromJson(json);
}

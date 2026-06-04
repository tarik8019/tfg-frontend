import 'package:freezed_annotation/freezed_annotation.dart';

import '../empleado/dominio/empleado.dart';

part 'solicitud_ausencia_config.freezed.dart';
part 'solicitud_ausencia_config.g.dart';

@freezed
sealed class SolicitudAusenciaConfig with _$SolicitudAusenciaConfig {
  const factory SolicitudAusenciaConfig({
    int? idEmpleado,
    DateTime? fechaInicio,
    DateTime? fechaFin,
    String? motivo,
    @Default("pendiente") String estado,
  }) = _SolicitudAusenciaConfig;

  factory SolicitudAusenciaConfig.fromJson(Map<String, Object?> json) =>
      _$SolicitudAusenciaConfigFromJson(json);
}

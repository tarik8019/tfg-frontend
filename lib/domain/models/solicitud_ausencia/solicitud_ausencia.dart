import 'package:freezed_annotation/freezed_annotation.dart';

import '../empleado/dominio/empleado.dart';

part 'solicitud_ausencia.freezed.dart';
part 'solicitud_ausencia.g.dart';

@freezed
sealed class SolicitudAusencia with _$SolicitudAusencia {
  const factory SolicitudAusencia({
    int? idSolicitud,

    required Empleado empleado,
    required String tipo,
    required DateTime fechaInicio,
    required DateTime fechaFin,
    @Default("pendiente") String estado,
  }) = _SolicitudAusencia;

  factory SolicitudAusencia.fromJson(Map<String, Object?> json) =>
      _$SolicitudAusenciaFromJson(json);
}

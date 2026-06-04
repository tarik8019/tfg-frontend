import 'package:freezed_annotation/freezed_annotation.dart';

part 'solicitud_ausencia_api_model.freezed.dart';
part 'solicitud_ausencia_api_model.g.dart';

@freezed
abstract class SolicitudAusenciaApiModel with _$SolicitudAusenciaApiModel {
  const factory SolicitudAusenciaApiModel({
    int? idSolicitud,
    required int idEmpleado,
    required String tipo,
    required DateTime fechaInicio,
    required DateTime fechaFin,
    required String estado,
    String? documentoJustificante,
  }) = _SolicitudAusenciaApiModel;

  factory SolicitudAusenciaApiModel.fromJson(Map<String, Object?> json) =>
      _$SolicitudAusenciaApiModelFromJson(json);
}

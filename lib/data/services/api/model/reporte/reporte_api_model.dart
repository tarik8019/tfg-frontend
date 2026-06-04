import 'package:freezed_annotation/freezed_annotation.dart';

part 'reporte_api_model.freezed.dart';
part 'reporte_api_model.g.dart';

@freezed
abstract class ReporteApiModel with _$ReporteApiModel {
  const factory ReporteApiModel({
    int? idReporte,
    required String tipo,
    required DateTime fechaGeneracion,
    String? archivoUrl,
  }) = _ReporteApiModel;

  factory ReporteApiModel.fromJson(Map<String, Object?> json) =>
      _$ReporteApiModelFromJson(json);
}

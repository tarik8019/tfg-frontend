import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/dominio/user.dart';

part 'reporte.freezed.dart';
part 'reporte.g.dart';

@freezed
sealed class Reporte with _$Reporte {
  const factory Reporte({
    int? idReporte,
    required User usuario,
    required String tipo,
    required DateTime fechaGeneracion,
    String? archivoUrl,
  }) = _Reporte;

  factory Reporte.fromJson(Map<String, Object?> json) =>
      _$ReporteFromJson(json);
}

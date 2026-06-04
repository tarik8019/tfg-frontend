import 'package:freezed_annotation/freezed_annotation.dart';

part 'correccion_fichaje_summary.freezed.dart';
part 'correccion_fichaje_summary.g.dart';

@freezed
sealed class CorreccionFichajeSummary with _$CorreccionFichajeSummary {
  const factory CorreccionFichajeSummary({
    required int idCorreccion,
    required String motivo,
    required String estado,
  }) = _CorreccionFichajeSummary;

  factory CorreccionFichajeSummary.fromJson(Map<String, Object?> json) =>
      _$CorreccionFichajeSummaryFromJson(json);
}

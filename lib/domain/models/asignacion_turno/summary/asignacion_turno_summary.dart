import 'package:freezed_annotation/freezed_annotation.dart';

part 'asignacion_turno_summary.freezed.dart';
part 'asignacion_turno_summary.g.dart';

@freezed
sealed class AsignacionTurnoSummary with _$AsignacionTurnoSummary {
  const factory AsignacionTurnoSummary({
    required int idAsignacion,
    required String estado, 
    
  }) = _AsignacionTurnoSummary;

  factory AsignacionTurnoSummary.fromJson(Map<String, Object?> json) =>
      _$AsignacionTurnoSummaryFromJson(json);
}



import 'package:freezed_annotation/freezed_annotation.dart';

part 'empleado_summary.freezed.dart';
part 'empleado_summary.g.dart';

@freezed
sealed class EmpleadoSummary with _$EmpleadoSummary {
  const factory EmpleadoSummary({
    int? idEmpleado,
    required String nombre,
    required String apellidos,
    
  }) = _EmpleadoSummary;

  factory EmpleadoSummary.fromJson(Map<String, Object?> json) =>
      _$EmpleadoSummaryFromJson(json);
}



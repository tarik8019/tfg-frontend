import 'package:freezed_annotation/freezed_annotation.dart';

part 'empresa_summary.freezed.dart';
part 'empresa_summary.g.dart';

@freezed
sealed class EmpresaSummary with _$EmpresaSummary {
  const factory EmpresaSummary({
    int? idEmpresa,
    required String nombre,
    String? ciudad,
    String? fechaCreacion,
    int? cantidadUsuarios,
    int? cantidadEmpleados,
  }) = _EmpresaSummary;

  factory EmpresaSummary.fromJson(Map<String, Object?> json) =>
      _$EmpresaSummaryFromJson(json);
}

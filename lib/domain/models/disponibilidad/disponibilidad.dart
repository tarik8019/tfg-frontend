import 'package:freezed_annotation/freezed_annotation.dart';

import '../empleado/dominio/empleado.dart';

part 'disponibilidad.freezed.dart';
part 'disponibilidad.g.dart';

@freezed
sealed class Disponibilidad with _$Disponibilidad {
  const factory Disponibilidad({
    int? idDisponibilidad,
    required Empleado empleado,
    String? diaSemana,
    String? horaInicio,
    String? horaFin,
  }) = _Disponibilidad;

  factory Disponibilidad.fromJson(Map<String, Object?> json) =>
      _$DisponibilidadFromJson(json);
}

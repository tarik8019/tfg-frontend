import 'package:freezed_annotation/freezed_annotation.dart';

import '../../empleado/dominio/empleado.dart';
import '../../turno/dominio/turno.dart';

part 'asignacion_turno.freezed.dart';
part 'asignacion_turno.g.dart';

@freezed
sealed class AsignacionTurno with _$AsignacionTurno {
  const factory AsignacionTurno({
    int? idAsignacion,
    required String estado, 
    int? idTurno,
    Turno? turno,
    List<int>? idEmpleados,
    List<Empleado>? empleados,
  }) = _AsignacionTurno;

  factory AsignacionTurno.fromJson(Map<String, Object?> json) =>
      _$AsignacionTurnoFromJson(json);
}



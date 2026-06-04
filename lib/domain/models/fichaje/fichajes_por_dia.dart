import 'package:freezed_annotation/freezed_annotation.dart';

import '../empleado/dominio/empleado.dart';
import 'fichaje.dart';
import 'fichajes_empleado.dart';

part 'fichajes_por_dia.freezed.dart';
part 'fichajes_por_dia.g.dart';

@freezed
sealed class FichajesPorDia  with _$FichajesPorDia {
  const factory FichajesPorDia ({


    required DateTime fecha,
  required List<FichajesEmpleado> empleados,
  }) = _FichajesPorDia;

  factory FichajesPorDia.fromJson(Map<String, Object?> json) =>
      _$FichajesPorDiaFromJson(json);
}

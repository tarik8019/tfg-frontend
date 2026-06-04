import 'package:freezed_annotation/freezed_annotation.dart';

import '../empleado/dominio/empleado.dart';
import 'fichaje.dart';

part 'fichajes_empleado.freezed.dart';
part 'fichajes_empleado.g.dart';

@freezed
sealed class FichajesEmpleado  with _$FichajesEmpleado {
  const factory FichajesEmpleado ({
  required int idEmpleado,
  required String nombre,
  required String apellidos,
  required List<Fichaje> fichajes,
  }) = _FichajesEmpleado;

  factory FichajesEmpleado.fromJson(Map<String, Object?> json) =>
      _$FichajesEmpleadoFromJson(json);
}

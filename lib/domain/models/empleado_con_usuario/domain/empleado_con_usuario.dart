import 'package:freezed_annotation/freezed_annotation.dart';
import '../../empleado/dominio/empleado.dart';
import '../../user/dominio/user.dart';

part 'empleado_con_usuario.freezed.dart';
part 'empleado_con_usuario.g.dart';

@freezed
sealed class EmpleadoConUsuario with _$EmpleadoConUsuario {
  const factory EmpleadoConUsuario({
    required Empleado empleado,
    required User user,
  }) = _EmpleadoConUsuario;

  factory EmpleadoConUsuario.fromJson(Map<String, Object?> json) =>
      _$EmpleadoConUsuarioFromJson(json);
}







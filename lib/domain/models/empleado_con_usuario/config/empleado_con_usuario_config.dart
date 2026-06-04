import 'package:freezed_annotation/freezed_annotation.dart';
import '../../empleado/config/empleado_config.dart';

part 'empleado_con_usuario_config.freezed.dart';
part 'empleado_con_usuario_config.g.dart';

@freezed
sealed class EmpleadoConUsuarioConfig with _$EmpleadoConUsuarioConfig {
  const factory EmpleadoConUsuarioConfig({
    int? idEmpleadoConfig ,
    int? idUserConfig ,
  }) = _EmpleadoConUsuarioConfig;

  factory EmpleadoConUsuarioConfig.fromJson(Map<String, Object?> json) =>
      _$EmpleadoConUsuarioConfigFromJson(json);
}

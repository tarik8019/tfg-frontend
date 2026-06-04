import 'package:freezed_annotation/freezed_annotation.dart';

import '../empleado/dominio/empleado.dart';

part 'documento_empleado_config.freezed.dart';
part 'documento_empleado_config.g.dart';

@freezed
sealed class DocumentoEmpleadoConfig with _$DocumentoEmpleadoConfig {
  const factory DocumentoEmpleadoConfig({
    int? idEmpleado,
    String? tipo,
    String? rutaArchivo,
  }) = _DocumentoEmpleadoConfig;

  factory DocumentoEmpleadoConfig.fromJson(Map<String, Object?> json) =>
      _$DocumentoEmpleadoConfigFromJson(json);
}

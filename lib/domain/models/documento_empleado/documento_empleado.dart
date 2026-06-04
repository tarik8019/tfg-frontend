import 'package:freezed_annotation/freezed_annotation.dart';

import '../empleado/dominio/empleado.dart';

part 'documento_empleado.freezed.dart';
part 'documento_empleado.g.dart';

@freezed
sealed class DocumentoEmpleado with _$DocumentoEmpleado {
  const factory DocumentoEmpleado({
    int? idDocumento,
    required Empleado empleado,
    String? tipo,
    String? rutaArchivo,
  }) = _DocumentoEmpleado;

  factory DocumentoEmpleado.fromJson(Map<String, Object?> json) =>
      _$DocumentoEmpleadoFromJson(json);
}

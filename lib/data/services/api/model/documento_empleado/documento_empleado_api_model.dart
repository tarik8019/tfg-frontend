import 'package:freezed_annotation/freezed_annotation.dart';

part 'documento_empleado_api_model.freezed.dart';
part 'documento_empleado_api_model.g.dart';

@freezed
abstract class DocumentoEmpleadoApiModel with _$DocumentoEmpleadoApiModel {
  const factory DocumentoEmpleadoApiModel({
     int? idDocumento,
    required int idEmpleado,
    String? tipo,
    String? rutaArchivo,
  }) = _DocumentoEmpleadoApiModel;

  factory DocumentoEmpleadoApiModel.fromJson(Map<String, Object?> json) =>
      _$DocumentoEmpleadoApiModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'responsable_empleado_api_model.freezed.dart';
part 'responsable_empleado_api_model.g.dart';

@freezed
sealed class ResponsableEmpleadoApiModel with _$ResponsableEmpleadoApiModel {
  const factory ResponsableEmpleadoApiModel({
  required int idResponsableEmpleado,
  required int idEmpleado,
  required int idResponsable,
  required int idEmpresa,
  required DateTime fechaInicio,
  required DateTime fechaFin,
  required String tipoResponsabilidad,
  required String observaciones,
  required bool activo,
  required DateTime createdAt,
  required DateTime updatedAt,
    
  }) = _ResponsableEmpleadoApiModel;

  factory ResponsableEmpleadoApiModel.fromJson(Map<String, Object?> json) =>
      _$ResponsableEmpleadoApiModelFromJson(json);
}
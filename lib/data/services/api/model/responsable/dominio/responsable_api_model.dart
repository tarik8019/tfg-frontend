import 'package:freezed_annotation/freezed_annotation.dart';

part 'responsable_api_model.freezed.dart';
part 'responsable_api_model.g.dart';

@freezed
sealed class ResponsableApiModel with _$ResponsableApiModel {
  const factory ResponsableApiModel({
  required int idResponsable,
  required int idEmpleado,
  required int idEmpresa,
  required String cargo,
  required String emailContacto,
  required String telefonoContacto,
  required bool activo,
  required DateTime fechaCreacion,
  required DateTime fechaActualizacion,
    
  }) = _ResponsableApiModel;

  factory ResponsableApiModel.fromJson(Map<String, Object?> json) =>
      _$ResponsableApiModelFromJson(json);
}
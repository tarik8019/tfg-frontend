import 'package:freezed_annotation/freezed_annotation.dart';

part 'departamento_update_api_model.freezed.dart';
part 'departamento_update_api_model.g.dart';

@freezed
sealed class DepartamentoUpdateApiModel with _$DepartamentoUpdateApiModel {
  const factory DepartamentoUpdateApiModel({
    required int idDepartamento,         
    required int idEmpresa,
    required String codigoDepartamento,
    required String nombre,
    required String descripcion,
    int? idResponsableEmpleado,
    required String emailContacto,
    required String telefonoContacto,
    required bool activo,
    required DateTime fechaCreacion,     
    required DateTime fechaActualizacion
      }) = _DepartamentoUpdateApiModel;

  factory DepartamentoUpdateApiModel.fromJson(Map<String, Object?> json) =>
      _$DepartamentoUpdateApiModelFromJson(json);
}


import 'package:freezed_annotation/freezed_annotation.dart';

part 'departamento_create_api_model.freezed.dart';
part 'departamento_create_api_model.g.dart';

@freezed
sealed class DepartamentoCreateApiModel with _$DepartamentoCreateApiModel {
  const factory DepartamentoCreateApiModel({
    required int idEmpresa,
    required String codigoDepartamento,
    required String nombre,
    required String descripcion,
    int? idResponsableEmpleado,
    required String emailContacto,
    required String telefonoContacto,
    required bool activo,
    required DateTime fechaCreacion,
    required DateTime fechaActualizacion,
    
  }) = _DepartamentoCreateApiModel;

  factory DepartamentoCreateApiModel.fromJson(Map<String, dynamic> json) =>
      _$DepartamentoCreateApiModelFromJson(json);
}

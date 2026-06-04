import 'package:freezed_annotation/freezed_annotation.dart';

part 'empresa_api_model.freezed.dart';
part 'empresa_api_model.g.dart';

@freezed
abstract class EmpresaApiModel with _$EmpresaApiModel {
  const factory EmpresaApiModel({
    int? idEmpresa,
    required String codigoEmpresa,
    required String nombre,
    required String cif,
    String? direccion,
    String? ciudad,
    String? pais,
    String? fechaCreacion,
    int? cantidadUsuarios,
    int? cantidadEmpleados,
  }) = _EmpresaApiModel;

  factory EmpresaApiModel.fromJson(Map<String, Object?> json) =>
      _$EmpresaApiModelFromJson(json);

}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'empresa_config.freezed.dart';
part 'empresa_config.g.dart';

@freezed
sealed class EmpresaConfig with _$EmpresaConfig {
  const factory EmpresaConfig({
    String? nombre,
    String? cif,
    String? codigoEmpresa,
    String? direccion,
    String? ciudad,
    String? pais,
    String? fechaCreacion,
    int? cantidadUsuarios,
    int? cantidadEmpleados,
  
  }) = _EmpresaConfig;

  factory EmpresaConfig.fromJson(Map<String, Object?> json) =>
      _$EmpresaConfigFromJson(json);
}

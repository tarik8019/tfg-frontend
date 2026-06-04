import 'package:freezed_annotation/freezed_annotation.dart';

part 'empresa.freezed.dart';
part 'empresa.g.dart';

@freezed
sealed class Empresa with _$Empresa {
  const factory Empresa({
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
  }) = _Empresa;

  factory Empresa.fromJson(Map<String, Object?> json) =>
      _$EmpresaFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'empleado_create_api_model.freezed.dart';
part 'empleado_create_api_model.g.dart';

@freezed
sealed class EmpleadoCreateApiModel with _$EmpleadoCreateApiModel {
  const factory EmpleadoCreateApiModel({
    required String codigoEmpleado,
    required String nombre,
    required String apellidos,
    required String email,
    required String telefono,
    required String direccion,
    required String ciudad,
    required String provincia,
    required String codigoPostal,
    required DateTime fechaNacimiento,
    required double salarioBase,
    required String tipoContrato,
    required String jornada,
    String? observaciones,
    String? imagenUrl,
    required String puesto,
    required String dniNie,
    required DateTime fechaAlta,
    DateTime? fechaBaja,
    required int saldoVacaciones,
    required bool isActivo,
    required int idDepartamento,
    required int idEmpresa,
    required int idUsuario,
    required String departamentoNombre,
  }) = _EmpleadoCreateApiModel;

  factory EmpleadoCreateApiModel.fromJson(Map<String, dynamic> json) =>
      _$EmpleadoCreateApiModelFromJson(json);
}

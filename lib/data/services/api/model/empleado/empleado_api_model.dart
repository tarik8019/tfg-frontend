import 'package:freezed_annotation/freezed_annotation.dart';

part 'empleado_api_model.freezed.dart';
part 'empleado_api_model.g.dart';

@freezed
abstract class EmpleadoApiModel with _$EmpleadoApiModel {
  const factory EmpleadoApiModel({
    int? idEmpleado,
    String? codigoEmpleado,
    String? nombre,
    String? apellidos,
    String? email,
    String? telefono,
    String? direccion,
    String? ciudad,
    String? provincia,
    String? codigoPostal,
    DateTime? fechaNacimiento,
    double? salarioBase,
    String? tipoContrato,
    String? jornada,
    String? observaciones,
    String? imagenUrl,
    String? puesto,
    String? dniNie,
    DateTime? fechaAlta,
    DateTime? fechaBaja,
    int? saldoVacaciones,
    bool? isActivo,
    int? idDepartamento,
    int? idEmpresa,
    int? idUsuario, 
    String? departamentoNombre,
  }) = _EmpleadoApiModel;

  factory EmpleadoApiModel.fromJson(Map<String, Object?> json) =>
      _$EmpleadoApiModelFromJson(json);
}


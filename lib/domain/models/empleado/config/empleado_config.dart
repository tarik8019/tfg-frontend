import 'package:freezed_annotation/freezed_annotation.dart';
part 'empleado_config.freezed.dart';
part 'empleado_config.g.dart';

@freezed
sealed class EmpleadoConfig with _$EmpleadoConfig {
  const factory EmpleadoConfig({
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
     String? departamentoNombre
  }) = _EmpleadoConfig;

  factory EmpleadoConfig.fromJson(Map<String, Object?> json) =>
      _$EmpleadoConfigFromJson(json);
}

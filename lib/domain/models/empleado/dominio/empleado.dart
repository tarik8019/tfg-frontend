import 'package:freezed_annotation/freezed_annotation.dart';
import '../../departamento/dominio/departamento.dart';
import '../../empresa/dominio/empresa.dart';
import '../../user/dominio/user.dart';
part 'empleado.freezed.dart';
part 'empleado.g.dart';

@freezed
sealed class Empleado with _$Empleado {
  const factory Empleado({
    int? idEmpleado,
    required String nombre,
    required String apellidos,
    required String email,
    required String telefono,
    required String codigoEmpleado, // evita depender del ID interno.
    required String direccion,
    required String ciudad,
    required String provincia,
    required String codigoPostal,
    required DateTime fechaNacimiento,
    required double salarioBase,
    required String tipoContrato,
    required String jornada,
    String? observaciones,

    required String puesto,
    required String dniNie,
    required DateTime fechaAlta,
    DateTime? fechaBaja,
    required int saldoVacaciones,
    String? imagenUrl,
    User? usuario,
    Empresa? empresa,
    Departamento? departamentoEntity,
    required int idUsuario,
    required int idEmpresa,
    required int idDepartamento,
    required String departamentoNombre,
    required bool isActivo,
    
  }) = _Empleado;

  factory Empleado.fromJson(Map<String, Object?> json) =>
      _$EmpleadoFromJson(json);
}
extension EmpleadoExt on Empleado {
  bool get activo => fechaBaja == null;
}


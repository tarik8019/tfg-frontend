import 'package:freezed_annotation/freezed_annotation.dart';

import '../../empresa/dominio/empresa.dart';
import '../../responsable_empleado/dominio/responsable_empleado.dart';

part 'departamento.freezed.dart';
part 'departamento.g.dart';

@freezed
sealed class Departamento with _$Departamento {
  const factory Departamento({
int? idDepartamento,
int? idEmpresa,
Empresa? empresa,
required String codigoDepartamento,
required String nombre,
required String descripcion,
int? idResponsableEmpleado,
ResponsableEmpleado? responsableEmpleado,
required String emailContacto,
required String telefonoContacto,
bool? activo,
DateTime? fechaCreacion,
DateTime? fechaActualizacion,
    
     
  }) = _Departamento;

  factory Departamento.fromJson(Map<String, Object?> json) =>
      _$DepartamentoFromJson(json);
}


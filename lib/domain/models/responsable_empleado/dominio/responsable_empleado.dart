import 'package:freezed_annotation/freezed_annotation.dart';

import '../../empleado/dominio/empleado.dart';
import '../../empresa/dominio/empresa.dart';
import '../../responsable/dominio/responsable.dart';

part 'responsable_empleado.freezed.dart';
part 'responsable_empleado.g.dart';

@freezed
sealed class ResponsableEmpleado with _$ResponsableEmpleado {
  const factory ResponsableEmpleado({
required int idResponsableEmpleado,
required int idEmpleado,
 Empleado? empleado,
 required int idResponsable,
  Responsable? responsable,
  required int idEmpresa,
   Empresa? empresa,
    required DateTime fechaInicio,
     required DateTime fechaFin,
      required String tipoResponsabilidad,
       required String observaciones,
        required bool activo,
         required DateTime createdAt,
          required DateTime updatedAt,
    
  }) = _ResponsableEmpleado;

  factory ResponsableEmpleado.fromJson(Map<String, Object?> json) =>
      _$ResponsableEmpleadoFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../empleado/dominio/empleado.dart';
import '../../empresa/dominio/empresa.dart';


part 'responsable.freezed.dart';
part 'responsable.g.dart';

@freezed
sealed class Responsable with _$Responsable {
  const factory Responsable({
int? idResponsable,
required int idEmpleado,
 Empleado? empleado,
 required int idEmpresa,
  Empresa? empresa,
   required String cargo,
      required String emailContacto,
       required String telefonoContacto,
        required bool activo,
         required DateTime fechaCreacion,
          required DateTime fechaActualizacion,
    
  }) = _Responsable;

  factory Responsable.fromJson(Map<String, Object?> json) =>
      _$ResponsableFromJson(json);
}
import '../../domain/models/responsable_empleado/dominio/responsable_empleado.dart';
import '../../domain/models/empleado/dominio/empleado.dart';
import '../../domain/models/empresa/dominio/empresa.dart';
import '../../domain/models/responsable/dominio/responsable.dart';
import '../services/api/model/responsable_empleado/dominio/responsable_empleado_api_model.dart';


/// API to DOMAIN
extension ResponsableEmpleadoApiModelX on ResponsableEmpleadoApiModel {
  ResponsableEmpleado toDomain() {
    return ResponsableEmpleado(
      idResponsableEmpleado: idResponsableEmpleado,
      fechaInicio: fechaInicio,
      fechaFin: fechaFin,
      tipoResponsabilidad: tipoResponsabilidad,
      observaciones: observaciones,
      activo: activo,
      createdAt: createdAt,
      updatedAt: updatedAt,
       idEmpleado: idEmpleado,
        idResponsable: idResponsable,
         idEmpresa: idEmpresa,

    );
  }
}


/// DOMAIN to API (CREATE)
extension ResponsableEmpleadoDomainX on ResponsableEmpleado {
  ResponsableEmpleadoApiModel toCreateApiModel() {
    final now = DateTime.now();

    return ResponsableEmpleadoApiModel(
      idResponsableEmpleado: idResponsableEmpleado,
      idEmpleado: idEmpleado,         
      idResponsable: idResponsable, 
      idEmpresa: idEmpresa,            
      fechaInicio: fechaInicio,
      fechaFin: fechaFin,
      tipoResponsabilidad: tipoResponsabilidad,
      observaciones: observaciones,
      activo: activo,
      createdAt: now,
      updatedAt: now,
    );
  }

  /// DOMAIN to API (UPDATE)

  ResponsableEmpleadoApiModel toUpdateApiModel() {
    return ResponsableEmpleadoApiModel(
      idResponsableEmpleado: idResponsableEmpleado,
      idEmpleado: idEmpleado,
      idResponsable: idResponsable,
      idEmpresa: idEmpresa,
      fechaInicio: fechaInicio,
      fechaFin: fechaFin,
      tipoResponsabilidad: tipoResponsabilidad,
      observaciones: observaciones,
      activo: activo,
      createdAt: createdAt,
      updatedAt: DateTime.now(),
    );
  }
}

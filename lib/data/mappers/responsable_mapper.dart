import '../../domain/models/responsable/dominio/responsable.dart';
import '../../domain/models/empleado/dominio/empleado.dart';
import '../../domain/models/empresa/dominio/empresa.dart';
import '../services/api/model/responsable/dominio/responsable_api_model.dart';

/// API to DOMAIN
extension ResponsableApiModelX on ResponsableApiModel {
  Responsable toDomain() {
    return Responsable(
      idResponsable: idResponsable,
      cargo: cargo,
      emailContacto: emailContacto,
      telefonoContacto: telefonoContacto,
      activo: activo,
      fechaCreacion: fechaCreacion,
      fechaActualizacion: fechaActualizacion,
       idEmpleado: idEmpleado,
        idEmpresa: idEmpresa, 
    );
  }
}

/// DOMAIN to API (CREATE)
extension ResponsableDomainX on Responsable {
  ResponsableApiModel toCreateApiModel() {
    final now = DateTime.now();

    return ResponsableApiModel(
      idResponsable: idResponsable!,
      idEmpleado: idEmpleado,     
      idEmpresa: idEmpresa,    
      cargo: cargo,
      emailContacto: emailContacto,
      telefonoContacto: telefonoContacto,
      activo: activo,
      fechaCreacion: now,
      fechaActualizacion: now,

    );
  }

  /// DOMAIN to API (UPDATE)
  ResponsableApiModel toUpdateApiModel() {
    return ResponsableApiModel(
      idResponsable: idResponsable!,
      idEmpleado: idEmpleado,
      idEmpresa: idEmpresa,
      cargo: cargo,
      emailContacto: emailContacto,
      telefonoContacto: telefonoContacto,
      activo: activo,
      fechaCreacion: fechaCreacion,
      fechaActualizacion: DateTime.now(),
    );
  }
}

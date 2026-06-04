import '../../domain/models/departamento/dominio/departamento.dart';
import '../../domain/models/empleado/dominio/empleado.dart';
import '../../domain/models/empleado/summary/empleado_summary.dart';
import '../../domain/models/empresa/dominio/empresa.dart';
import '../../domain/models/user/dominio/user.dart';
import '../services/api/model/empleado/create/empleado_create_api_model.dart';
import '../services/api/model/empleado/empleado_api_model.dart';
import '../services/api/model/empleado/update/empleado_update_api_model.dart';

extension EmpleadoDomainDtoX on Empleado {
  /// DTO para CREAR empleado
  EmpleadoCreateApiModel toCreateApiModelDto() {
    return EmpleadoCreateApiModel(
      codigoEmpleado: codigoEmpleado,
      nombre: nombre,
      apellidos: apellidos,
      email: email,
      telefono: telefono,
      direccion: direccion,
      ciudad: ciudad,
      provincia: provincia,
      codigoPostal: codigoPostal,
      fechaNacimiento: fechaNacimiento,
      salarioBase: salarioBase,
      tipoContrato: tipoContrato,
      jornada: jornada,
      observaciones: observaciones,
      imagenUrl: imagenUrl,
      puesto: puesto,
      dniNie: dniNie,
      fechaAlta: fechaAlta,
      fechaBaja: fechaBaja,
      saldoVacaciones: saldoVacaciones,
      isActivo: isActivo,
      idDepartamento: idDepartamento,
      idEmpresa: idEmpresa,
      idUsuario: idUsuario,
      departamentoNombre: departamentoNombre,
    );
  }

  /// DTO para ACTUALIZAR empleado
  EmpleadoUpdateApiModel toUpdateApiModelDto() {
    return EmpleadoUpdateApiModel(
      idEmpleado: idEmpleado!, // obligatorio en update
      codigoEmpleado: codigoEmpleado,
      nombre: nombre,
      apellidos: apellidos,
      email: email,
      telefono: telefono,
      direccion: direccion,
      ciudad: ciudad,
      provincia: provincia,
      codigoPostal: codigoPostal,
      fechaNacimiento: fechaNacimiento,
      salarioBase: salarioBase,
      tipoContrato: tipoContrato,
      jornada: jornada,
      observaciones: observaciones,
      imagenUrl: imagenUrl,
      puesto: puesto,
      dniNie: dniNie,
      fechaAlta: fechaAlta,
      fechaBaja: fechaBaja,
      saldoVacaciones: saldoVacaciones,
      isActivo: isActivo,
      idDepartamento: idDepartamento,
      idEmpresa: idEmpresa,
      idUsuario: idUsuario,
      departamentoNombre: departamentoNombre,
    );
  }
}


extension EmpleadoApiModelX on EmpleadoApiModel {
        Empleado toDomain() {
          return Empleado(
            idEmpleado: idEmpleado,
            codigoEmpleado: codigoEmpleado ?? '',
            nombre: nombre ?? '',
            apellidos: apellidos ?? '',
            email: email ?? '',
            telefono: telefono ?? '',
            puesto: puesto ?? '',
            dniNie: dniNie ?? '',
            fechaAlta: fechaAlta ?? DateTime.now(),         // Valor por defecto si es null
            fechaBaja: fechaBaja,
            saldoVacaciones: saldoVacaciones ?? 0,
            imagenUrl: imagenUrl ?? '',
            isActivo: isActivo ?? true,                     // Valor por defecto
            direccion: direccion ?? '',
            ciudad: ciudad ?? '',
            provincia: provincia ?? '',
            codigoPostal: codigoPostal ?? '',
            fechaNacimiento: fechaNacimiento ?? DateTime(2000,1,1), // Default
            salarioBase: salarioBase ?? 0,
            tipoContrato: tipoContrato ?? '',
            jornada: jornada ?? '',
            observaciones: observaciones ?? '',
            idUsuario: idUsuario ?? 0,
            idEmpresa: idEmpresa ?? 0,
            idDepartamento: idDepartamento ?? 0,
            departamentoNombre: departamentoNombre ?? '',

            // No mapear entidades que no vienen
            empresa: null,
            usuario: null,
            departamentoEntity: null,
          );
        }
      }


extension EmpleadoDomainX on Empleado {
  EmpleadoApiModel toApiModel() {
    return EmpleadoApiModel(
      idEmpleado: idEmpleado,
      codigoEmpleado: codigoEmpleado,
      nombre: nombre,
      apellidos: apellidos,
      email: email,
      telefono: telefono,
      puesto: puesto,
      dniNie: dniNie,
      fechaAlta: fechaAlta,
      fechaBaja: fechaBaja,
      saldoVacaciones: saldoVacaciones,
      imagenUrl: imagenUrl,
      idUsuario: idUsuario,
      idEmpresa: idEmpresa,
      isActivo: isActivo,
       direccion: direccion,
        ciudad: ciudad,
         provincia: provincia,
          codigoPostal: codigoPostal,
           fechaNacimiento: fechaNacimiento,
            salarioBase: salarioBase,
             tipoContrato: tipoContrato,
              jornada: jornada,
               observaciones: observaciones, 
               idDepartamento: idDepartamento,
                departamentoNombre: departamentoNombre, 
    );
  }
}




// Para Create
extension EmpleadoCreateMapper on EmpleadoCreateApiModel {
  EmpleadoApiModel createEmpleadoToApiModel() {
    return EmpleadoApiModel(
      idEmpleado: null, // aún no existe
      codigoEmpleado: codigoEmpleado,
      nombre: nombre,
      apellidos: apellidos,
      email: email,
      telefono: telefono,
      direccion: direccion,
      ciudad: ciudad,
      provincia: provincia,
      codigoPostal: codigoPostal,
      fechaNacimiento: fechaNacimiento,
      salarioBase: salarioBase,
      tipoContrato: tipoContrato,
      jornada: jornada,
      observaciones: observaciones,
      imagenUrl: imagenUrl,
      puesto: puesto,
      dniNie: dniNie,
      fechaAlta: fechaAlta,
      fechaBaja: fechaBaja,
      saldoVacaciones: saldoVacaciones,
      isActivo: isActivo,
      idDepartamento: idDepartamento,
      idEmpresa: idEmpresa,
      idUsuario: idUsuario,
      departamentoNombre: departamentoNombre,
    );
  }
}

// Para Update
extension EmpleadoUpdateMapper on EmpleadoUpdateApiModel {
  EmpleadoApiModel updateEmpleadoToApiModel() {
    return EmpleadoApiModel(
      idEmpleado: idEmpleado,
      codigoEmpleado: codigoEmpleado,
      nombre: nombre,
      apellidos: apellidos,
      email: email,
      telefono: telefono,
      direccion: direccion,
      ciudad: ciudad,
      provincia: provincia,
      codigoPostal: codigoPostal,
      fechaNacimiento: fechaNacimiento,
      salarioBase: salarioBase,
      tipoContrato: tipoContrato,
      jornada: jornada,
      observaciones: observaciones,
      imagenUrl: imagenUrl,
      puesto: puesto,
      dniNie: dniNie,
      fechaAlta: fechaAlta,
      fechaBaja: fechaBaja,
      saldoVacaciones: saldoVacaciones,
      isActivo: isActivo,
      idDepartamento: idDepartamento,
      idEmpresa: idEmpresa,
      idUsuario: idUsuario,
      departamentoNombre: departamentoNombre,
    );
  }
}

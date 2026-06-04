import '../../domain/models/departamento/dominio/departamento.dart';
import '../services/api/model/departamento/departamento_api_model.dart';
import '../services/api/model/departamento/create/departamento_create_api_model.dart';
import '../services/api/model/departamento/update/departamento_update_api_model.dart';


extension DepartamentoApiModelX on DepartamentoApiModel {
  Departamento toDomain() {
    return Departamento(
      idDepartamento: idDepartamento,
      codigoDepartamento: codigoDepartamento ?? '',
      nombre: nombre ?? '',
      descripcion: descripcion ?? '',
      emailContacto: emailContacto ?? '',
      telefonoContacto: telefonoContacto, // nullable
      activo: activo ?? true,
      fechaCreacion: fechaCreacion,
      fechaActualizacion: fechaActualizacion,
      idEmpresa: idEmpresa,
      idResponsableEmpleado: idResponsableEmpleado, // nullable
    );
  }
}

extension DepartamentoDomainCreateX on Departamento {
  DepartamentoCreateApiModel toCreateApiModelDto() {
    return DepartamentoCreateApiModel(
      idEmpresa: idEmpresa!,
      codigoDepartamento: codigoDepartamento,
      nombre: nombre,
      descripcion: descripcion,
      idResponsableEmpleado: idResponsableEmpleado,
      emailContacto: emailContacto,
      telefonoContacto: telefonoContacto,
      activo: activo ?? true,
      fechaCreacion: fechaCreacion!,
      fechaActualizacion: fechaActualizacion!,
    );
  }
}



extension DepartamentoDomainX on Departamento {
  DepartamentoApiModel toCreateApiModel() {
    final now = DateTime.now();

    return DepartamentoApiModel(
       idEmpresa: idEmpresa!,
      codigoDepartamento: codigoDepartamento,
      nombre: nombre,
      descripcion: descripcion,
      idResponsableEmpleado: idResponsableEmpleado,
      emailContacto: emailContacto,
      telefonoContacto: telefonoContacto,
      activo: activo!,
      fechaCreacion: now,
      fechaActualizacion: now,
    );
  }


  DepartamentoUpdateApiModel toUpdateApiModel() {
    return DepartamentoUpdateApiModel(
      idDepartamento: idDepartamento!,
      idEmpresa: idEmpresa!,
      codigoDepartamento: codigoDepartamento,
      nombre: nombre,
      descripcion: descripcion,
      idResponsableEmpleado: idResponsableEmpleado,
      emailContacto: emailContacto,
      telefonoContacto: telefonoContacto,
      activo: activo!,
      fechaCreacion: fechaCreacion!,
      fechaActualizacion: DateTime.now(), 
    );
  }
}

extension DepartamentoCreateMapper on DepartamentoCreateApiModel {
  /// Create DTO a API Model
  DepartamentoApiModel createApiModel({int? idDepartamento}) {
    final now = DateTime.now();
    return DepartamentoApiModel(
      idDepartamento: idDepartamento,
      idEmpresa: idEmpresa,
      codigoDepartamento: codigoDepartamento,
      nombre: nombre,
      descripcion: descripcion,
      idResponsableEmpleado: idResponsableEmpleado,
      emailContacto: emailContacto,
      telefonoContacto: telefonoContacto,
      activo: activo,
      fechaCreacion: now,
      fechaActualizacion: now,
    );
  }
}

extension DepartamentoUpdateMapper on DepartamentoUpdateApiModel {
  /// Update DTO a API Model
  DepartamentoApiModel updateToApiModel() {
    return DepartamentoApiModel(
      idDepartamento: idDepartamento,
      idEmpresa: idEmpresa,
      codigoDepartamento: codigoDepartamento,
      nombre: nombre,
      descripcion: descripcion,
      idResponsableEmpleado: idResponsableEmpleado,
      emailContacto: emailContacto,
      telefonoContacto: telefonoContacto,
      activo: activo,
      fechaCreacion: fechaCreacion,
      fechaActualizacion: DateTime.now(),
    );
  }
}

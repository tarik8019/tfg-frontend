import '../../domain/models/empresa/dominio/empresa.dart';
import '../../domain/models/empresa/summary/empresa_summary.dart';
import '../services/api/model/empresa/empresa_api_model.dart';

extension EmpresaApiModelX on EmpresaApiModel {
  /// API a Domain
  Empresa toDomain() {
    return Empresa(
      idEmpresa: idEmpresa,
      nombre: nombre,
      cif: cif,
      direccion: direccion,
      ciudad: ciudad,
      pais: pais,
      fechaCreacion: fechaCreacion,
      cantidadUsuarios: cantidadUsuarios,
      cantidadEmpleados: cantidadEmpleados,
      codigoEmpresa: codigoEmpresa,
    );
  }

  /// API a Summary (DTO resumido)
  EmpresaSummary toSummary() {
    return EmpresaSummary(
      idEmpresa: idEmpresa,
      nombre: nombre,
      ciudad: ciudad,
    );
  }
}

extension EmpresaDomainX on Empresa {
  /// Domain a API
  EmpresaApiModel toApiModel() {
    return EmpresaApiModel(
      idEmpresa: idEmpresa,
      codigoEmpresa: codigoEmpresa,
      nombre: nombre,
      cif: cif,
      direccion: direccion,
      ciudad: ciudad,
      pais: pais,
      fechaCreacion: fechaCreacion,
      cantidadUsuarios: cantidadUsuarios,
      cantidadEmpleados: cantidadEmpleados, 
    );
  }
}

import 'package:mijornada/data/mappers/departamento_mapper.dart';
import 'package:mijornada/domain/models/departamento/dominio/departamento.dart';
import 'package:mijornada/domain/models/empresa/dominio/empresa.dart';
import 'package:mijornada/domain/models/responsable_empleado/dominio/responsable_empleado.dart';

final kEmpresa = Empresa(
  idEmpresa: 4,
  nombre: 'Empresa Demo',
  codigoEmpresa: 'K54285636',
  cif: 'J52846532',
);

final kResponsable = ResponsableEmpleado(
  idResponsable: 1,
idResponsableEmpleado: 2,
idEmpleado: 2,
idEmpresa: 4,
fechaInicio: DateTime.now(),
fechaFin: DateTime.now(), 
tipoResponsabilidad: '',
observaciones: '',
activo: true,
createdAt: DateTime.now(), 
updatedAt: DateTime.now(),
);

// --- Dominio Departamento ---
final kDepartamento = Departamento(
  idDepartamento: 1,
  idEmpresa: kEmpresa.idEmpresa,
  empresa: kEmpresa,
  codigoDepartamento: 'DEP001',
  nombre: 'Venta',
  descripcion: 'Departamento de producción',
  idResponsableEmpleado: kResponsable.idResponsable,
  responsableEmpleado: kResponsable,
  emailContacto: 'produccion@empresa.com',
  telefonoContacto: '123456789',
  activo: true,
  fechaCreacion: DateTime(2024, 01, 01),
  fechaActualizacion: DateTime(2024, 01, 01),
);

// --- API Read Model (lo que devuelve el backend) ---
final kDepartamentoApiModel = kDepartamento.toCreateApiModel();

// --- API Create Model (lo que se envía al backend para crear) ---
final kDepartamentoCreateApiModel = kDepartamento.toCreateApiModelDto();

// --- API Update Model (lo que se envía al backend para actualizar) ---
final kDepartamentoUpdateApiModel = kDepartamento.toUpdateApiModel();

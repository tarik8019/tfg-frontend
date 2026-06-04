import 'package:mijornada/data/mappers/empleado_mapper.dart';
import 'package:mijornada/domain/models/empleado/dominio/empleado.dart';

final kEmpleado = Empleado(
  idEmpleado: 0,
  nombre: 'Tarik',
  apellidos: 'Salahi',
  email: 'tarik@example.com',
  telefono: '600123456',
  codigoEmpleado: 'EMP001',
  direccion: 'Calle Falsa 123',
  ciudad: 'Madrid',
  provincia: 'Madrid',
  codigoPostal: '28001',
  fechaNacimiento: DateTime(1979, 5, 1),
  salarioBase: 2500.0,
  tipoContrato: 'Indefinido',
  jornada: 'Completa',
  observaciones: 'Empleado de pruebas',
  puesto: 'Desarrollador',
  dniNie: 'Y9642008P',
  fechaAlta: DateTime(2020, 1, 1),
  fechaBaja: null,
  saldoVacaciones: 25,
  imagenUrl: null,
  usuario: null,
  empresa: null,
  departamentoEntity: null,
  idUsuario: 1,
  idEmpresa: 4,
  idDepartamento: 1,
  departamentoNombre: 'Desarrollo',
  isActivo: true,
);

final kEmpleadoApiModel = kEmpleado.toApiModel();

final kEmpleadoCreateApiModel = kEmpleado.toCreateApiModelDto();

final kEmpleadoUpdateApiModel = kEmpleado.toUpdateApiModelDto();

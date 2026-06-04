import 'package:mijornada/data/repositories/empleado/empleado_repository.dart';
import 'package:mijornada/domain/models/empleado/dominio/empleado.dart';
import 'package:mijornada/utils/result.dart';


class FakeEmpleadoRepository implements EmpleadoRepository {
  final Map<int, Empleado> _empleados = {};
  int _sequentialId = 1; // Generar IDs en memoria
   List<Empleado> get empleados => _empleados.values.toList();
  FakeEmpleadoRepository() {
    // Datos iniciales de prueba
    _empleados[1] = Empleado(
      idEmpleado: 1,
      nombre: 'Juan',
      apellidos: 'Perez',
      email: 'juan@test.com',
      isActivo: true,
       telefono: '652847596',
        codigoEmpleado: 'K65231548',
         direccion: '', 
         ciudad: 'Logrono',
          provincia: 'la rioja',
           codigoPostal: '26006',
           fechaNacimiento: DateTime.now(),
            salarioBase: 1200,
             tipoContrato: 'partial',
              jornada: 'completa', 
              puesto: 'bhj', 
              dniNie: 'Y9642004P', 
              fechaAlta: DateTime.now(),
               saldoVacaciones: 0, 
               idUsuario: 0,
                idEmpresa: 0, 
                idDepartamento: 0,
                 departamentoNombre: '', 
                
    );

    _empleados[2] = Empleado(
      idEmpleado: 2,
      nombre: 'Ana',
      apellidos: 'Gomez',
      email: 'ana@test.com',
      isActivo: true,
       telefono: '',
        codigoEmpleado: '',
         direccion: '', 
         ciudad: '', 
         provincia: '', 
         codigoPostal: '', 
         fechaNacimiento: DateTime.now(), 
         salarioBase: 0,
          tipoContrato: '',
           jornada: '',
            puesto: '',
             dniNie: '',
              fechaAlta: DateTime.now(), 
              saldoVacaciones: 0,
               idUsuario: 0, 
               idEmpresa: 0,
                idDepartamento: 0, 
                departamentoNombre: '',
           
    );

    _sequentialId = _empleados.length + 1;
  }

  @override
  Future<Result<List<Empleado>>> getAll() async {
    await Future.delayed(const Duration(milliseconds: 50));
    return Result.ok(_empleados.values.toList());
  }

  @override
  Future<Result<Empleado>> getById(int id) async {
    await Future.delayed(const Duration(milliseconds: 50));
    final empleado = _empleados[id];
    if (empleado != null) {
      return Result.ok(empleado);
    } else {
      return Result.error(Exception('Empleado no encontrado'));
    }
  }

  @override
  Future<Result<Empleado>> create(Empleado empleado) async {
    await Future.delayed(const Duration(milliseconds: 50));
    final newEmpleado = empleado.copyWith(idEmpleado: _sequentialId++);
    _empleados[newEmpleado.idEmpleado!] = newEmpleado;
    return Result.ok(newEmpleado);
  }

  @override
  Future<Result<Empleado>> update(Empleado empleado) async {
    await Future.delayed(const Duration(milliseconds: 50));
    if (empleado.idEmpleado == null || !_empleados.containsKey(empleado.idEmpleado)) {
      return Result.error(Exception('Empleado no encontrado'));
    }
    _empleados[empleado.idEmpleado!] = empleado;
    return Result.ok(empleado);
  }

  @override
  Future<Result<void>> delete(int id) async {
    await Future.delayed(const Duration(milliseconds: 50));
    if (_empleados.containsKey(id)) {
      _empleados.remove(id);
      return const Result.ok(null);
    } else {
      return Result.error(Exception('Empleado no encontrado'));
    }
  }

  @override
  Future<Result<void>> setActivo(int idEmpleado, bool activo) async {
    await Future.delayed(const Duration(milliseconds: 50));
    final empleado = _empleados[idEmpleado];
    if (empleado == null) return Result.error(Exception('Empleado no encontrado'));
    _empleados[idEmpleado] = empleado.copyWith(isActivo: activo);
    return const Result.ok(null);
  }

    @override
  Future<Result<Empleado>> getByEmail(String email) async {
    await Future.delayed(const Duration(milliseconds: 50));

    try {
      // Buscar empleado por email (case-insensitive)
      final empleado = _empleados.values.firstWhere(
        (e) => e.email.toLowerCase() == email.toLowerCase(),
        orElse: () => throw Exception('Empleado no encontrado'),
      );

      return Result.ok(empleado);
    } catch (e) {
      return Result.error(Exception('Empleado no encontrado'));
    }
  }
  
  @override
  Future<Result<Empleado>> getByUsuario(int idUsuario) {
    // TODO: implement getByUsuario
    throw UnimplementedError();
  }

}

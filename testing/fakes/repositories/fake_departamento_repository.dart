import 'package:mijornada/data/repositories/departamento/departamento_repository.dart';
import 'package:mijornada/domain/models/departamento/dominio/departamento.dart';
import 'package:mijornada/utils/result.dart';

class FakeDepartamentoRepository implements DepartamentoRepository {
  final Map<int, Departamento> _departamentos = {};
  int _sequentialId = 1;
List<Departamento> get departamentos => _departamentos.values.toList();
  FakeDepartamentoRepository() {
    // Datos iniciales de prueba
    _departamentos[1] = Departamento(
      idDepartamento: 1,
      idEmpresa: 1,
      nombre: 'RecursosHumanos',
      activo: true, 
      codigoDepartamento: 'F84596578',
       descripcion: 'asddwdfd', 
       emailContacto: 'dafdf@gmail.com',
        telefonoContacto: '845653242',
    );

    _departamentos[2] = Departamento(
      idDepartamento: 2,
      idEmpresa: 1,
      nombre: 'Informatica',
      activo: true, 
      codigoDepartamento: 'K54321008',
       descripcion: 'wdfaa',
        emailContacto: 'asas@gmail.com', 
        telefonoContacto: '652653298',
    );

    _sequentialId = _departamentos.length + 1;
  }

  // GET ALL
  @override
  Future<Result<List<Departamento>>> getAll() async {
    return Result.ok(_departamentos.values.toList());
  }

  // GET BY ID
  @override
  Future<Result<Departamento>> getById(int id) async {
    final departamento = _departamentos[id];
    if (departamento != null) {
      return Result.ok(departamento);
    }
    return Result.error(Exception('Departamento no encontrado'));
  }

  // GET BY NOMBRE
  @override
  Future<Result<Departamento>> getByNombre(int idEmpresa, String nombre) async {
    try {
      final departamento = _departamentos.values.firstWhere(
        (d) =>
            d.idEmpresa == idEmpresa &&
            d.nombre.toLowerCase() == nombre.toLowerCase(),
      );
      return Result.ok(departamento);
    } catch (_) {
      return Result.error(Exception('Departamento no encontrado'));
    }
  }

  // CREATE
  @override
  Future<Result<Departamento>> create(Departamento dep) async {
    final newDep = dep.copyWith(idDepartamento: _sequentialId);
    _departamentos[_sequentialId] = newDep;
    _sequentialId++;

    return Result.ok(newDep);
  }

  // UPDATE
  @override
  Future<Result<Departamento>> updateDepartamento(Departamento dep) async {
    if (dep.idDepartamento == null) {
      return Result.error(Exception('ID de departamento requerido'));
    }

    if (!_departamentos.containsKey(dep.idDepartamento)) {
      return Result.error(Exception('Departamento no encontrado'));
    }

    _departamentos[dep.idDepartamento!] = dep;
    return Result.ok(dep);
  }

  // DELETE
  @override
  Future<Result<void>> delete(int id) async {
    if (_departamentos.containsKey(id)) {
      _departamentos.remove(id);
      return const Result.ok(null);
    }
    return Result.error(Exception('Departamento no encontrado'));
  }
}

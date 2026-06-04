import 'package:mijornada/domain/models/empresa/dominio/empresa.dart';
import 'package:mijornada/utils/result.dart';
import 'package:mijornada/data/repositories/empresa/empresa_repository.dart';

class FakeEmpresaRepository implements EmpresaRepository {
  final Map<int, Empresa> _empresas = {};
  int _sequentialId = 1;

  FakeEmpresaRepository() {
    // Datos iniciales de prueba
    _empresas[1] = Empresa(
      idEmpresa: 1,
      nombre: 'Empresa Uno',
      cif: 'A12345678',
      direccion: 'Calle Falsa 123',
      ciudad: 'Madrid',
      codigoEmpresa: 'K54212254',
    );

    _empresas[2] = Empresa(
      idEmpresa: 2,
      nombre: 'Empresa Dos',
      cif: 'B87654321',
      direccion: 'Avenida Siempre Viva 456',
      ciudad: 'Barcelona',
      codigoEmpresa: 'H52485631',
    );

    _sequentialId = _empresas.length + 1;
  }

  // GET ALL
  @override
  Future<Result<List<Empresa>>> getAll() async {
    return Result.ok(_empresas.values.toList());
  }

  // GET BY ID
  @override
  Future<Result<Empresa>> getById(int id) async {
    final empresa = _empresas[id];
    if (empresa != null) {
      return Result.ok(empresa);
    }
    return Result.error(Exception('Empresa no encontrada'));
  }

  // CREATE
  @override
  Future<Result<void>> create(Empresa empresa) async {
    final newEmpresa = empresa.copyWith(idEmpresa: _sequentialId);
    _empresas[_sequentialId] = newEmpresa;
    _sequentialId++;
    return const Result.ok(null);
  }

  // UPDATE
  @override
  Future<Result<void>> update(Empresa empresa) async {
    if (empresa.idEmpresa == null || !_empresas.containsKey(empresa.idEmpresa)) {
      return Result.error(Exception('Empresa no encontrada'));
    }

    _empresas[empresa.idEmpresa!] = empresa;
    return const Result.ok(null);
  }

  // DELETE
  @override
  Future<Result<void>> delete(int id) async {
    if (_empresas.containsKey(id)) {
      _empresas.remove(id);
      return const Result.ok(null);
    }
    return Result.error(Exception('Empresa no encontrada'));
  }

  // GET BY EMPLEADO (opcional para tests)
  @override
  Future<Result<Empresa>> getEmpresaByEmpleado(int idEmpleado) async {
    // Para pruebas se puede devolver la primera empresa siempre
    if (_empresas.isNotEmpty) {
      return Result.ok(_empresas.values.first);
    }
    return Result.error(Exception('Empresa no encontrada para el empleado'));
  }
}

import '../../../domain/models/departamento/dominio/departamento.dart';

import '../../../utils/result.dart';
abstract class DepartamentoRepository {
  Future<Result<List<Departamento>>> getAll();
  Future<Result<Departamento>> getById(int id);
  Future<Result<Departamento>> getByNombre(int idEmpresa, String nombre);
  Future<Result<Departamento>> create(Departamento dep);
  Future<Result<void>> updateDepartamento(Departamento dep);
  Future<Result<void>> delete(int id);

}
import '../../../domain/models/empresa/dominio/empresa.dart';
import '../../../../utils/result.dart';

abstract class EmpresaRepository {
  Future<Result<List<Empresa>>> getAll();
  Future<Result<Empresa>> getById(int id);
  Future<Result<void>> create(Empresa empresa);
  Future<Result<void>> update(Empresa empresa);
  Future<Result<void>> delete(int id);
   Future<Result<Empresa>> getEmpresaByEmpleado(int idEmpleado);
}

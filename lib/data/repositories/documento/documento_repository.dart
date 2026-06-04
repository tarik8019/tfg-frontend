import '../../../../domain/models/documento_empleado/documento_empleado.dart';
import '../../../../utils/result.dart';

abstract class DocumentoEmpleadoRepository {
  Future<Result<List<DocumentoEmpleado>>> getAll();
  Future<Result<DocumentoEmpleado>> getById(int id);
  Future<Result<DocumentoEmpleado>> create(DocumentoEmpleado documento);
  Future<Result<DocumentoEmpleado>> update(DocumentoEmpleado documento);
  Future<Result<void>> delete(int id);
  Future<Result<List<DocumentoEmpleado>>> getByEmpleado(int idEmpleado);
}

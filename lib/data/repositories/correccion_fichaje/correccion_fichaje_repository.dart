import '../../../domain/models/correccion_fichaje/dominio/correccion_fichaje.dart';
import '../../../../utils/result.dart';
import '../../../domain/models/correccion_fichaje/summary/correccion_fichaje_summary.dart';

abstract class CorreccionFichajeRepository {
  Future<Result<List<CorreccionFichajeSummary>>> getAll();
  Future<Result<CorreccionFichaje>> getById(int id);
  Future<Result<CorreccionFichaje>> create(CorreccionFichaje correccion);
  Future<Result<CorreccionFichaje>> update(CorreccionFichaje correccion);
  Future<Result<void>> delete(int id);
  Future<Result<List<CorreccionFichaje>>> getByEmpleado(int idEmpleado);
}

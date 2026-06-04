import '../../../domain/models/turno/dominio/turno.dart';
import '../../../../utils/result.dart';

abstract class TurnoRepository {
  Future<Result<List<Turno>>> getAll();
  Future<Result<Turno>> getById(int id);
  Future<Result<Turno>> create(Turno dep);
  Future<Result<void>> updateTurno(Turno dep);
  Future<Result<void>> delete(int id);
}

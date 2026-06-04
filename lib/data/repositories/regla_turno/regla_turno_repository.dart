import '../../../../domain/models/regla_turno/regla_turno.dart';
import '../../../../utils/result.dart';

abstract class ReglaTurnoRepository {
  Future<Result<List<ReglaTurno>>> getAll();
  Future<Result<ReglaTurno>> getById(int id);
  Future<Result<ReglaTurno>> create(ReglaTurno regla);
  Future<Result<ReglaTurno>> update(ReglaTurno regla);
  Future<Result<void>> delete(int id);
  Future<Result<List<ReglaTurno>>> getByTipo(String tipo);
}

import 'package:mijornada/domain/models/asignacion_turno/summary/asignacion_turno_summary.dart';

import '../../../domain/models/asignacion_turno/dominio/asignacion_turno.dart';
import '../../../../utils/result.dart';

abstract class AsignacionTurnoRepository {
  Future<Result<List<AsignacionTurno>>> getAll();
  Future<Result<AsignacionTurno>> getById(int id);
  Future<Result<List<AsignacionTurno>>> getByEmpleado(int idEmpleado);
  Future<Result<AsignacionTurno>> create(AsignacionTurno dep);
  Future<Result<void>> updateAsignacionTurno(AsignacionTurno dep);
  Future<Result<void>> delete(int id);
}



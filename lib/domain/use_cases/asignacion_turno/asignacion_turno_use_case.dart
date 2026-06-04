import 'package:mijornada/domain/models/asignacion_turno/dominio/asignacion_turno.dart';
import '../../../data/repositories/asignacion_turno/asignacion_turno_repository.dart';
import '../../../utils/result.dart';

class AsignacionTurnoUseCase {

  AsignacionTurnoUseCase( {required AsignacionTurnoRepository repository}):
  _repository = repository;
  final AsignacionTurnoRepository _repository;

  

  // GET ALL
  Future<Result<List<AsignacionTurno>>> getAllAsignaciones() async {
    return await _repository.getAll();
  }

  // CREATE
  
Future<Result<AsignacionTurno>> crearAsignacion(AsignacionTurno asignacion) async {
  return await _repository.create(asignacion);
}

  // UPDATE
  Future<Result<void>> editarAsignacion(
      AsignacionTurno asignacion) async {
    return await _repository.updateAsignacionTurno(asignacion);
  }

  // DELETE
  Future<Result<void>> borrarAsignacion(int idAsignacion) async {
    return await _repository.delete(idAsignacion);
  }
}

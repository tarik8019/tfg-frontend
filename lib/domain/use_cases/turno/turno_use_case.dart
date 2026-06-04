import '../../../data/repositories/turno/turno_repository.dart';
import '../../../utils/result.dart';
import '../../models/turno/dominio/turno.dart';
import '../../validators/validator.dart';

class TurnoUseCase {

  TurnoUseCase({required TurnoRepository turnoRepository}):
_turnoRepository = turnoRepository;
  final TurnoRepository _turnoRepository;



  // GET ALL
  Future<Result<List<Turno>>> getAllTurnos() async {
    return await _turnoRepository.getAll();
  }

  // CREATE
  Future<Result<Turno>> crearTurno(Turno turno) async {
    final validation = _validateTurno(turno);
    if (validation is Error<void>) {
      return Result.error(validation.error);
    }
    return await _turnoRepository.create(turno);
  }

  // UPDATE
  Future<Result<void>> editarTurno(Turno turno) async {
    final validation = _validateTurno(turno);
    if (validation is Error<void>) {
      return Result.error(validation.error);
    }
    return await _turnoRepository.updateTurno(turno);
  }

  // DELETE
  Future<Result<void>> borrarTurno(int idTurno) async {
    return await _turnoRepository.delete(idTurno);
  }


   Result<void> _validateTurno(Turno turno) {
    final inicio = turno.horaInicio;
    final fin = turno.horaFin;

    if (!Validator.isValidHora(inicio)) {
      return Result.error(Exception('La hora de inicio no es válida (HH:mm)'));
    }

    if (!Validator.isValidHora(fin)) {
      return Result.error(Exception('La hora de fin no es válida (HH:mm)'));
    }

    if (!Validator.isFinMayorQueInicio(inicio, fin)) {
      return Result.error(Exception('La hora de fin debe ser mayor que la de inicio'));
    }
    return const Result.ok(null);
  }
}

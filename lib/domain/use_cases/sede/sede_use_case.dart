import '../../../data/repositories/sede/sede_repository.dart';
import '../../../utils/result.dart';
import '../../models/sede/dominio/sede.dart';
import '../../validators/validator.dart';

class SedeUseCase {
  final SedeRepository _repository;

  SedeUseCase({required SedeRepository repository})
      : _repository = repository;

  /// Obtener todas las sedes
  Future<Result<List<Sede>>> getAllSedes() async {
    return await _repository.getAll();
  }

  /// Crear una nueva sede
  Future<Result<Sede>> crearSede(Sede sede) async {
    final validation = _validateSede(sede);
    if (validation is Error<void>) {
    return Result.error(validation.error);
    }

    return await _repository.create(sede);
  }

  /// Editar una sede existente
  Future<Result<void>> editarSede(Sede sede) async {
    final validation = _validateSede(sede);
    if (validation is Error<void>) {
    return Result.error(validation.error);
    }

    return await _repository.updateSede(sede);
  }

  /// Eliminar una sede
  Future<Result<void>> borrarSede(int idSede) async {
    return await _repository.delete(idSede);
  }


  Result<void> _validateSede(Sede s) {
  if (!Validator.isValidLatitud(s.latitud!)) {
    return Result.error(Exception('Latitud fuera de rango'));
  }

  if (!Validator.isValidLongitud(s.longitud!)) {
    return Result.error(Exception('Longitud fuera de rango'));
  }

  if (!Validator.isValidRadio(s.radioGeofencing!)) {
    return Result.error(Exception('El radio debe ser mayor que 0 y menor o igual a 10 km'));
  }

  return const Result.ok(null);
}

}

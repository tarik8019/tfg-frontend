import '../../../../domain/models/departamento/dominio/departamento.dart';
import '../../../../data/repositories/departamento/departamento_repository.dart';
import '../../../../utils/result.dart';
import '../../validators/validator.dart';

class DepartamentoUseCase {
  DepartamentoUseCase({required DepartamentoRepository departamentoRepository})
      : _departamentoRepository = departamentoRepository;

  final DepartamentoRepository _departamentoRepository;

  /// Obtener todos los departamentos
  Future<Result<List<Departamento>>> getAllDepartamentos() async {
    try {
      final result = await _departamentoRepository.getAll();
      if (result is Ok<List<Departamento>>) return Result.ok(result.value);
      if (result is Error<List<Departamento>>) return Result.error(result.error);
      return Result.error(Exception('Error desconocido al cargar departamentos'));
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  /// Crear un departamento
  Future<Result<Departamento>> crearDepartamento(Departamento departamento) async {
       final validation = _validateDepartamento(departamento);
    if (validation is Error<void>) {
      return Result.error(validation.error);
    }
    try {
      
      final result = await _departamentoRepository.create(departamento);
      if (result is Ok<Departamento>) return Result.ok(result.value);
      if (result is Error<Departamento>) return Result.error(result.error);
      return Result.error(Exception('Error desconocido al crear departamento'));
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  /// Editar un departamento existente
  Future<Result<Departamento>> editarDepartamento(Departamento departamento) async {
         final validation = _validateDepartamento(departamento);
    if (validation is Error<void>) {
      return Result.error(validation.error);
    }
    try {
      final result = await _departamentoRepository.updateDepartamento(departamento);
      if (result is Ok<Departamento>) return Result.ok(result.value);
      if (result is Error<Departamento>) return Result.error(result.error);
      return Result.error(Exception('Error desconocido al editar departamento'));
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  /// Borrar un departamento por id
  Future<Result<void>> borrarDepartamento(int idDepartamento) async {
    try {
      final result = await _departamentoRepository.delete(idDepartamento);
      if (result is Ok<void>) return const Result.ok(null);
      if (result is Error<void>) return Result.error(result.error);
      return Result.error(Exception('Error desconocido al borrar departamento'));
    } on Exception catch (e) {
      return Result.error(e);
    }
  }


  Result<void> _validateDepartamento(Departamento dep) {
    // Campos obligatorios
    if (dep.codigoDepartamento.isEmpty) {
      return Result.error(Exception('El código del departamento es obligatorio'));
    }

    if (dep.emailContacto.isEmpty) {
      return Result.error(Exception('El email es obligatorio'));
    }
    if (dep.telefonoContacto.isEmpty) {
      return Result.error(Exception('El teléfono es obligatorio'));
    }

    // Validaciones específicas usando EmpleadoValidator
    if (!Validator.isValidEmail(dep.emailContacto)) {
      return Result.error(Exception('El email no es válido'));
    }

    if (!Validator.isValidTelefono(dep.telefonoContacto)) {
      return Result.error(Exception('El teléfono no es válido'));
    }

      if (!Validator.isValidCodigoEntity(dep.codigoDepartamento)) {
      return Result.error(Exception('El código de departamento no es válido'));
    }
    return const Result.ok(null);
  }
}

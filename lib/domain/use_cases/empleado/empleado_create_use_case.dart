import 'package:logging/logging.dart';

import '../../../data/repositories/departamento/departamento_repository.dart';
import '../../../data/repositories/empresa/empresa_repository.dart';
import '../../../data/repositories/empleado/empleado_repository.dart';
import '../../../data/repositories/user/user_repository.dart';
import '../../../utils/result.dart';
import '../../models/empleado/dominio/empleado.dart';
import '../../validators/validator.dart';

class EmpleadoCreateUseCase {
  EmpleadoCreateUseCase({
    required EmpresaRepository empresaRepository,
    required UserRepository userRepository,
    required EmpleadoRepository empleadoRepository,
    required DepartamentoRepository departamentoRepository,
  })  : _empresaRepository = empresaRepository,
        _userRepository = userRepository,
        _departamentoRepository = departamentoRepository,
        _empleadoRepository = empleadoRepository;

  final EmpresaRepository _empresaRepository;
  final UserRepository _userRepository;
  final DepartamentoRepository _departamentoRepository;
  final EmpleadoRepository _empleadoRepository;

  final _log = Logger('EmpleadoCreateUseCase');

  // CREATE EMPLEADO
  Future<Result<Empleado>> create(Empleado empleado) async {
    _log.fine('Creating empleado');

    // VALIDACIONES COMPLETAS
    final validation = _validateEmpleado(empleado);
    if (validation is Error<void>) {
      return Result.error(validation.error);
    }

    // Obtener usuario por email
    final usuarioResult = await _userRepository.getByEmail(empleado.email);
    if (usuarioResult is! Ok) {
      return Result.error(Exception('No se encontró usuario para este email'));
    }

    final user = usuarioResult.value;

    // Obtener departamento por nombre
    final depResult = await _departamentoRepository.getByNombre(
      user!.idEmpresa,
      empleado.departamentoNombre,
    );

    if (depResult is! Ok) {
      return Result.error(Exception('Departamento no válido'));
    }

    final departamento = depResult.value;

    // Construir empleado final
    final empleadoFinal = empleado.copyWith(
      idUsuario: user.idUsuario!,
      idEmpresa: user.idEmpresa,
      idDepartamento: departamento!.idDepartamento!,
    );

    // Guardar empleado
    final createResult = await _empleadoRepository.create(empleadoFinal);

    return switch (createResult) {
      Ok<Empleado>() => Result.ok(empleadoFinal),
      Error<Empleado>() => Result.error(createResult.error),
    };
  }

  // VALIDACIONES
  Result<void> _validateEmpleado(Empleado e) {
    // Campos obligatorios
    if (e.codigoEmpleado.isEmpty) {
      return Result.error(Exception('El código de empleado es obligatorio'));
    }
    if (e.nombre.isEmpty) {
      return Result.error(Exception('El nombre es obligatorio'));
    }
    if (e.apellidos.isEmpty) {
      return Result.error(Exception('Los apellidos son obligatorios'));
    }
    if (e.email.isEmpty) {
      return Result.error(Exception('El email es obligatorio'));
    }
    if (e.telefono.isEmpty) {
      return Result.error(Exception('El teléfono es obligatorio'));
    }
    if (e.direccion.isEmpty) {
      return Result.error(Exception('La dirección es obligatoria'));
    }
    if (e.ciudad.isEmpty) {
      return Result.error(Exception('La ciudad es obligatoria'));
    }
    if (e.provincia.isEmpty) {
      return Result.error(Exception('La provincia es obligatoria'));
    }
    if (e.codigoPostal.isEmpty) {
      return Result.error(Exception('El código postal es obligatorio'));
    }
    if (e.puesto.isEmpty) {
      return Result.error(Exception('El puesto es obligatorio'));
    }
    if (e.dniNie.isEmpty) {
      return Result.error(Exception('El DNI/NIE es obligatorio'));
    }
    if (e.fechaAlta == 0) {
      return Result.error(Exception('La fecha de alta es obligatoria'));
    }

    // Validaciones específicas usando EmpleadoValidator
    if (!Validator.isValidEmail(e.email)) {
      return Result.error(Exception('El email no es válido'));
    }

    if (!Validator.isValidTelefono(e.telefono)) {
      return Result.error(Exception('El teléfono no es válido'));
    }

      if (!Validator.isValidCodigoEntity(e.codigoEmpleado)) {
      return Result.error(Exception('El código de empleado no es válido'));
    }

    if (!Validator.isValidCodigoPostal(e.codigoPostal)) {
      return Result.error(Exception('El código postal no es válido'));
    }

    if (!Validator.isValidDniNie(e.dniNie)) {
      return Result.error(Exception('El DNI/NIE no es válido'));
    }

  

    return const Result.ok(null);
  }
}

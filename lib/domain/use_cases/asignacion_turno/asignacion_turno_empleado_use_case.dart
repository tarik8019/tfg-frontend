import 'package:mijornada/data/repositories/asignacion_turno/asignacion_turno_repository.dart';
import 'package:mijornada/data/repositories/auth/auth_repository.dart';
import 'package:mijornada/data/repositories/empleado/empleado_repository.dart';
import 'package:mijornada/domain/models/empleado/dominio/empleado.dart';
import '../../../domain/models/asignacion_turno/dominio/asignacion_turno.dart';
import '../../../utils/result.dart';

class AsignacionTurnoEmpleadoUseCase {
  AsignacionTurnoEmpleadoUseCase({
    required AsignacionTurnoRepository repository,
    required AuthRepository authRepository,
    required EmpleadoRepository empleadoRepository,
  })  : _repository = repository,
        _authRepository = authRepository,
        _empleadoRepository = empleadoRepository;

  final AsignacionTurnoRepository _repository;
  final AuthRepository _authRepository;
  final EmpleadoRepository _empleadoRepository;

  Future<Result<List<AsignacionTurno>>> getMisAsignaciones() async {
    try {
      final user = _authRepository.currentUser;
      if (user == null) {
        return Result.error(Exception('Usuario no autenticado'));
      }

      final idEmpleado = await _obtenerIdEmpleado(user.idUsuario!);
      if (idEmpleado == null) {
        return Result.error(Exception('Empleado no encontrado para este usuario'));
      }

      return await _repository.getByEmpleado(idEmpleado);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> confirmarTurno(AsignacionTurno asignacion) async {
    if (!_puedeModificar(asignacion)) {
      return Result.error(
        Exception('Solo se pueden confirmar turnos pendientes'),
      );
    }

    final actualizado = asignacion.copyWith(estado: 'Confirmado');

    return await _repository.updateAsignacionTurno(actualizado);
  }

  Future<Result<void>> cancelarTurno(AsignacionTurno asignacion) async {
    if (!_puedeModificar(asignacion)) {
      return Result.error(
        Exception('Solo se pueden cancelar turnos pendientes'),
      );
    }

    final actualizado = asignacion.copyWith(estado: 'Cancelado');

    return await _repository.updateAsignacionTurno(actualizado);
  }

  bool _puedeModificar(AsignacionTurno asignacion) {
    return asignacion.estado == 'Pendiente';
  }

Future<int?> _obtenerIdEmpleado(int idUsuario) async {
  final result = await _empleadoRepository.getByUsuario(idUsuario);

  if (result is Ok<Empleado>) {
    return result.value.idEmpleado;
  }

  return null; 
}

}

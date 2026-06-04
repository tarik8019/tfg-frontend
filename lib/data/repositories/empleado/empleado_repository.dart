import '../../../domain/models/empleado/dominio/empleado.dart';
import '../../../../utils/result.dart';
import '../../../domain/models/empleado/summary/empleado_summary.dart';
import '../../../domain/models/user/dominio/user.dart';

abstract class EmpleadoRepository {
  Future<Result<List<Empleado>>> getAll();
  Future<Result<Empleado>> getById(int id);
  Future<Result<Empleado>> create(Empleado empleado);
  Future<Result<void>> update(Empleado empleado);
  Future<Result<void>> delete(int id);
  Future<Result<void>> setActivo(int idEmpleado, bool activo);
  Future<Result<Empleado>> getByEmail(String email);
  Future<Result<Empleado>> getByUsuario(int idUsuario);


}

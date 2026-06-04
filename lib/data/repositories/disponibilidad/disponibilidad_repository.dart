import '../../../../domain/models/disponibilidad/disponibilidad.dart';
import '../../../../utils/result.dart';

abstract class DisponibilidadRepository {
  Future<Result<List<Disponibilidad>>> getAll();
  Future<Result<Disponibilidad>> getById(int id);
  Future<Result<Disponibilidad>> create(Disponibilidad disponibilidad);
  Future<Result<Disponibilidad>> update(Disponibilidad disponibilidad);
  Future<Result<void>> delete(int id);
  Future<Result<List<Disponibilidad>>> getByEmpleado(int idEmpleado);
}

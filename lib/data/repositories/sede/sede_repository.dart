import '../../../domain/models/sede/dominio/sede.dart';
import '../../../../utils/result.dart';

abstract class SedeRepository {
  Future<Result<List<Sede>>> getAll();
  Future<Result<Sede>> getById(int id);
  Future<Result<Sede>> create(Sede sede);
  Future<Result<void>> updateSede(Sede sede);
  Future<Result<void>> delete(int id);
}

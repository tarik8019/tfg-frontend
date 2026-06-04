import '../../../domain/models/user/dominio/user.dart';
import '../../../utils/result.dart';
abstract class UserRepository {
  Future<Result<List<User>>> getAll();
  Future<Result<User>> getById(int id);
  Future<Result<User>> getByEmail(String email);
  Future<Result<User>> create(User user);
  Future<Result<void>> updateUsuario(User user);
  Future<Result<void>> setUserActivo(int idUsuario, bool activo);
  Future<Result<void>> delete(int id);
  Future<Result<void>> asignarRolUsuario(int idUsuario, String rol) ;
}
import 'package:mijornada/data/repositories/user/user_repository.dart';
import 'package:mijornada/domain/models/user/dominio/user.dart';
import 'package:mijornada/utils/result.dart';


class FakeUserRepository implements UserRepository {
  final Map<int, User> _users = {};
  int _sequentialId = 1;
  List<User> get users => _users.values.toList();
  FakeUserRepository() {
    // Datos iniciales de prueba
    _users[1] = User(
      idUsuario: 1,
      nombre: 'Tarik',
      apellidos: 'Salahi',
      email: 'tarik@test.com',
      rol: 'admin',
       idEmpresa: 4,
        isActivo: true,
         createdAt: DateTime.now(),
    
    );

    _users[2] = User(
      idUsuario: 2,
      nombre: 'Ana',
      apellidos: 'Gomez',
      email: 'ana@test.com',
      rol: 'user', 
      idEmpresa: 0,
       isActivo: true,
        createdAt: DateTime.now(),
     
    );

    _sequentialId = _users.length + 1;
  }

  @override
  Future<Result<List<User>>> getAll() async {
    return Result.ok(_users.values.toList());
  }

  @override
  Future<Result<User>> getById(int id) async {
    final user = _users[id];
    if (user != null) {
      return Result.ok(user);
    }
    return Result.error(Exception('Usuario no encontrado'));
  }

  @override
  Future<Result<User>> getByEmail(String email) async {
    try {
      final user = _users.values.firstWhere((u) => u.email == email);
      return Result.ok(user);
    } catch (_) {
      return Result.error(Exception('Usuario no encontrado'));
    }
  }

  @override
  Future<Result<User>> create(User user) async {
    final newUser = user.copyWith(
      idUsuario: _sequentialId,
    );

    _users[_sequentialId] = newUser;
    _sequentialId++;

    return Result.ok(newUser);
  }

  @override
  Future<Result<void>> updateUsuario(User user) async {
    if (user.idUsuario == null) {
      return Result.error(Exception('ID de usuario requerido'));
    }

    final id = user.idUsuario!;
    if (id <= 0 || !_users.containsKey(id)) {
      return Result.error(Exception('Usuario no encontrado'));
    }

    _users[id] = user;
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> delete(int id) async {
    if (_users.containsKey(id)) {
      _users.remove(id);
      return const Result.ok(null);
    }
    return Result.error(Exception('Usuario no encontrado'));
  }

  @override
  Future<Result<void>> setUserActivo(int idUsuario, bool activo) async {
    final user = _users[idUsuario];
    if (user == null) {
      return Result.error(Exception('Usuario no encontrado'));
    }

    _users[idUsuario] = user.copyWith(isActivo: activo);
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> asignarRolUsuario(int idUsuario, String rol) async {
    final user = _users[idUsuario];
    if (user == null) {
      return Result.error(Exception('Usuario no encontrado'));
    }

    _users[idUsuario] = user.copyWith(rol: rol);
    return const Result.ok(null);
  }
}

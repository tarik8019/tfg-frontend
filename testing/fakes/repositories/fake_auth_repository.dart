import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mijornada/domain/models/user/dominio/user.dart';
import 'package:mijornada/utils/result.dart';
import 'package:mijornada/data/repositories/auth/auth_repository.dart';

/// Fake repository para tests
class FakeAuthRepository extends AuthRepository{
  bool _isAuthenticated = true;
  User? _currentUser;


  /// Lista de usuarios simulados
  final List<User> _fakeUsers = [
    User(
      idUsuario: 1,
      nombre: 'Tarik',
      apellidos: 'Salahi',
      email: 'tarik@test.com',
      rol: 'admin',
       idEmpresa: 4,
        isActivo: true,
         createdAt: DateTime.now(),
    ),
    User(
      idUsuario: 2,
      nombre: 'Ana',
      apellidos: 'Gomez',
      email: 'ana@test.com',
      rol: 'user',
       idEmpresa: 4,
        isActivo: true,
         createdAt: DateTime.now(),
    ),
  ];

  @override
  User? get currentUser => _currentUser;

  @override
  Future<bool> get isAuthenticated async => _isAuthenticated;

  @override
  Future<Result<void>> login({
    required String email,
    required String password,
  }) async {
    // Simula retardo de API
    await Future.delayed(const Duration(milliseconds: 100));

    // Buscamos usuario
    final user = _fakeUsers.firstWhere(
      (u) => u.email == email,
      orElse: () => User(
        idUsuario: 0,
        nombre: '',
        apellidos: '',
        email: '',
        rol: '', 
        idEmpresa: 0,
         isActivo: false,
          createdAt: DateTime.now(),
      ),
    );

    if (user.idUsuario!>0) {
      // Login exitoso
      _currentUser = user;
      _isAuthenticated = true;
      notifyListeners();
      return Result.ok(null);
    } else {
      // Login fallido
      return Result.error(Exception('Usuario no encontrado'));
    }
  }

  @override
  Future<Result<void>> logout() async {
    _currentUser = null;
    _isAuthenticated = false;
    notifyListeners();
    return Result.ok(null);
  }

    void setUserRole(String rol) {
    _currentUser = User(
      idUsuario: 999,
      nombre: 'Test',
      apellidos: 'User',
      email: 'test@example.com',
      rol: rol,
      idEmpresa: 1,
      isActivo: true,
      createdAt: DateTime.now(),
    );
    notifyListeners();
  }
}

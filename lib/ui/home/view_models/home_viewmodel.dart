import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:mijornada/data/repositories/user/user_repository.dart';
import '../../../data/repositories/auth/auth_repository.dart';
import '../../../domain/models/user/dominio/user.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({
    required this.authRepository, required UserRepository userRepository,
  });

  final AuthRepository authRepository;
  final _log = Logger('HomeViewModel');

  User? get currentUser => authRepository.currentUser;

  String? get userRole => currentUser?.rol.toLowerCase();

  bool get isAdmin => userRole == 'administrador';
  bool get isEmpleado => userRole == 'empleado';

  /// Refresca estado de autenticación y usuario
  Future<void> refreshData() async {
    try {
      final authenticated = await authRepository.isAuthenticated;
      if (!authenticated) {
        _log.warning('User is not authenticated');
      } else {
        _log.fine('User is authenticated: ${currentUser?.nombre} ${currentUser?.apellidos}, role: $userRole');
      }
      notifyListeners();
    } catch (e, stack) {
      _log.severe('Error al refrescar datos en HomeViewModel', e, stack);
    }
  }

  Future<void> logout() async {
    try {
      await authRepository.logout();
      _log.info('User logged out successfully');
      notifyListeners();
    } catch (e, stack) {
      _log.severe('Error during logout', e, stack);
    }
  }
}

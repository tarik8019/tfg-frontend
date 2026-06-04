import 'package:flutter/foundation.dart';
import 'package:mijornada/data/repositories/auth/auth_repository.dart';
import 'package:mijornada/data/services/api/model/user/user_api_model.dart';
import 'package:mijornada/domain/models/user/dominio/user.dart';
import 'package:mijornada/utils/result.dart';

import '../../services/api/model/login_response/login_response.dart';

class AuthRepositoryWeb implements AuthRepository {
  @override
  Future<bool> get isAuthenticated async => false; 
  @override
  User? getCurrentUser() => null;
  @override
  void addListener(VoidCallback listener) {}
  @override
  void removeListener(VoidCallback listener) {}
  @override
  void notifyListeners() {}
  @override
  void dispose() {}
  @override
  String? getCurrentUserRole() => null;
  @override
  Future<Result<void>> login({required String email, required String password}) async => Result.error(Exception());
  @override
  Future<Result<void>> logout() async => Result.error(Exception());
  @override
  bool get hasListeners => false;
  
  @override
  // TODO: implement currentUser
  User? get currentUser => throw UnimplementedError();
  
  @override
  // TODO: implement isAuthenticatedCached
  bool get isAuthenticatedCached => throw UnimplementedError();
}


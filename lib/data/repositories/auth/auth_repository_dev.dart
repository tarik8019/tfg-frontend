import 'package:mijornada/data/services/api/model/user/user_api_model.dart';
import 'package:mijornada/domain/models/user/dominio/user.dart';

import '../../../utils/result.dart';
import '../../services/api/model/login_response/login_response.dart';
import 'auth_repository.dart';

class AuthRepositoryDev extends AuthRepository {
  @override
  Future<bool> get isAuthenticated => Future.value(true);
  @override
  Future<Result<void>> login({
    required String email,
    required String password,
  }) async {
    return const Result.ok(null);
  }
  @override
  Future<Result<void>> logout() async {
    return const Result.ok(null);
  }

@override
String? getCurrentUserRole() => null;

  @override
  User? getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }
  
  @override
  // TODO: implement currentUser
  User? get currentUser => throw UnimplementedError();

}
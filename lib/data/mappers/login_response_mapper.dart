import '../../domain/models/empresa/dominio/empresa.dart';
import '../../domain/models/user/dominio/user.dart';
import '../services/api/model/login_response/login_api_response.dart';
import '../services/api/model/login_response/login_response.dart';

extension LoginResponseX on LoginResponse {
  User toDomain() {
    return User(
      idUsuario: id,
      nombre: nombre,
      apellidos: apellidos,
      email: email,
      rol: rol,
      pictureUrl: pictureUrl,
      isActivo: true,
      createdAt: DateTime.now(),
      updatedAt: null,
      idEmpresa: idEmpresa,
    );
  }
}

// extension LoginApiResponseX on LoginApiResponse {
//   User toDomainUser(Empresa empresa) {
//     return result.toDomain(empresa);
//   }
// }

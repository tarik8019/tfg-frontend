import '../../domain/models/empresa/dominio/empresa.dart';
import '../../domain/models/user/dominio/user.dart';
import '../services/api/model/user/user_api_model.dart';

extension UserApiModelX on UserApiModel {
  User toDomain() {
    return User(
      idUsuario: id,
      nombre: nombre,
      apellidos: apellidos,
      email: email,
      password: password ?? '',  
      pictureUrl: pictureUrl,
      rol: rol,
      idEmpresa: idEmpresa,
      idAppUser: idAppUser!,
      isActivo: isActivo!,
      createdAt: createdAt ?? DateTime.now(),
      updatedAt: updatedAt,
    );
  }
   
  /// Create DTO → API Read Model
  UserApiModel createToApiModel() {
    return UserApiModel(
      id: null,
      nombre: nombre,
      apellidos: apellidos,
      email: email,
      password: password,
      pictureUrl: pictureUrl,
      rol: rol,
      idEmpresa: idEmpresa,
      idAppUser: idAppUser ?? '',
      isActivo: isActivo ?? true,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }



  /// Update DTO → API Read Model
  UserApiModel updateToApiModel() {
    return UserApiModel(
      id: id,
      nombre: nombre,
      apellidos: apellidos,
      email: email,
      password: password,
      pictureUrl: pictureUrl,
      rol: rol,
      idEmpresa: idEmpresa,
      idAppUser: idAppUser ?? '',
      isActivo: isActivo ?? true,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }
}

extension UserDomainX on User {
 
  /// Para CREAR usuario
  UserApiModel toCreateApiModel() {
     final now = DateTime.now();
    return UserApiModel(
      id: null,
      nombre: nombre,
      apellidos: apellidos,
      email: email,
      password: password ?? '',  
      pictureUrl: pictureUrl,
      rol: rol,
      idEmpresa: idEmpresa,
      idAppUser: idAppUser,
      isActivo: isActivo,
      createdAt: now,
      updatedAt: now,

    );
  }

  /// Para UPDATE usuario
  UserApiModel toUpdateApiModel() {
    return UserApiModel(
      id: idUsuario!, 
      nombre: nombre,
      apellidos: apellidos,
      email: email,
      password: password ?? '',  
      pictureUrl: pictureUrl,
      rol: rol,
      idEmpresa: idEmpresa,
      idAppUser: idAppUser ?? '',
      isActivo: isActivo ,
      createdAt: createdAt ?? DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }
}





import 'package:mijornada/data/services/api/model/user/user_api_model.dart';
import 'package:mijornada/domain/models/user/dominio/user.dart';



/// Instancia de dominio User
final kUser = User(
  idUsuario: 1,
  nombre: 'Juan',
  apellidos: 'Pérez',
  email: 'juan.perez@example.com',
  rol: 'ADMIN',
  isActivo: true,
  idEmpresa: 1,
  pictureUrl: null,
  createdAt: DateTime(2026, 1, 7),
  updatedAt: DateTime(2026, 1, 7),
);

/// Instancia API model (respuesta backend)
final kUserApiModel = UserApiModel(
  id: kUser.idUsuario,
  nombre: kUser.nombre,
  apellidos: kUser.apellidos,
  email: kUser.email,
  rol: kUser.rol,
  isActivo: kUser.isActivo,
  idEmpresa: kUser.idEmpresa,
  pictureUrl: kUser.pictureUrl,
  createdAt: kUser.createdAt,
  updatedAt: kUser.updatedAt,
  token: 'fake-jwt-token', // solo para pruebas
);

/// Instancia para enviar al backend al crear un usuario
final kUserCreateApiModel = kUserApiModel.copyWith(id: null, token: null);

/// Instancia para enviar al backend al actualizar un usuario
final kUserUpdateApiModel = kUserApiModel.copyWith();

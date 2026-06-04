import 'package:freezed_annotation/freezed_annotation.dart';

import '../../empresa/dominio/empresa.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
sealed class User with _$User {
  const factory User({

    int? idUsuario,
    required String nombre,
    required String apellidos,
    required String email,
    required String rol,
    String? password,  
    String? token,
    String? pictureUrl,
    required int idEmpresa,
    Empresa? empresa,
    String? idAppUser,
    required bool isActivo,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
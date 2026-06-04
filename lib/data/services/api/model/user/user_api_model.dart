import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_api_model.freezed.dart';
part 'user_api_model.g.dart';

@freezed
abstract class UserApiModel with _$UserApiModel {
  const factory UserApiModel({
    int? id,
    required String nombre,
    required String apellidos,
    required String email,
    String? password,
    required String rol,
    bool? isActivo,
    required int idEmpresa,
    String? idAppUser,
    String? pictureUrl,
   @JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime)
    DateTime? createdAt,
    @JsonKey(fromJson: _fromJsonDateTime, toJson: _toJsonDateTime)
    DateTime? updatedAt,
    // solo para respuestas
    String? token,
  }) = _UserApiModel;

  factory UserApiModel.fromJson(Map<String, Object?> json) =>
      _$UserApiModelFromJson(json);
}

// Helpers para convertir fechas
DateTime _fromJsonDateTime(String date) => DateTime.parse(date);
String _toJsonDateTime(DateTime? date) =>
    date?.toUtc().toIso8601String() ?? '';


    
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sede_update_api_model.freezed.dart';
part 'sede_update_api_model.g.dart';

@freezed
sealed class SedeUpdateApiModel with _$SedeUpdateApiModel {
  const factory SedeUpdateApiModel({
    required int idSede,
    required String nombre,
    String? direccion,
    double? latitud,
    double? longitud,
    int? radioGeofencing,
  }) = _SedeUpdateApiModel;

  factory SedeUpdateApiModel.fromJson(Map<String, dynamic> json) =>
      _$SedeUpdateApiModelFromJson(json);
}

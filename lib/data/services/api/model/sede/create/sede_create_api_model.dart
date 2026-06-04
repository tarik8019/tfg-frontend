import 'package:freezed_annotation/freezed_annotation.dart';

part 'sede_create_api_model.freezed.dart';
part 'sede_create_api_model.g.dart';

@freezed
sealed class SedeCreateApiModel with _$SedeCreateApiModel {
  const factory SedeCreateApiModel({
    required String nombre,
    String? direccion,
    double? latitud,
    double? longitud,
    int? radioGeofencing,
  }) = _SedeCreateApiModel;

  factory SedeCreateApiModel.fromJson(Map<String, dynamic> json) =>
      _$SedeCreateApiModelFromJson(json);
}

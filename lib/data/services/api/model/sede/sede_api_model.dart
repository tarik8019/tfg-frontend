import 'package:freezed_annotation/freezed_annotation.dart';

part 'sede_api_model.freezed.dart';
part 'sede_api_model.g.dart';

@freezed
abstract class SedeApiModel with _$SedeApiModel {
  const factory SedeApiModel({
    int? idSede,
    required String nombre,
    String? direccion,
    double? latitud,
    double? longitud,
    int? radioGeofencing,
  }) = _SedeApiModel;

  factory SedeApiModel.fromJson(Map<String, Object?> json) =>
      _$SedeApiModelFromJson(json);
}

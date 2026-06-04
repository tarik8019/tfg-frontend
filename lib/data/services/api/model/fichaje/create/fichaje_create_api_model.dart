import 'package:freezed_annotation/freezed_annotation.dart';


part 'fichaje_create_api_model.freezed.dart';
part 'fichaje_create_api_model.g.dart';

@freezed
abstract class FichajeCreateApiModel with _$FichajeCreateApiModel {
  const factory FichajeCreateApiModel({
    required int idEmpleado,
    required String tipoFichaje,
    required DateTime timestamp,
    double? latitud,
    double? longitud,
    required bool validadoFacial,
    required String fuenteFichaje,
  }) = _FichajeCreateApiModel;

  factory FichajeCreateApiModel.fromJson(Map<String, Object?> json) =>
      _$FichajeCreateApiModelFromJson(json);
}



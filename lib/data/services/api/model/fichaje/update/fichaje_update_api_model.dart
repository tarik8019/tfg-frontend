

import 'package:freezed_annotation/freezed_annotation.dart';

part 'fichaje_update_api_model.freezed.dart';
part 'fichaje_update_api_model.g.dart';

@freezed
abstract class FichajeUpdateApiModel with _$FichajeUpdateApiModel {
  const factory FichajeUpdateApiModel({
    required int idFichaje,
    required int idEmpleado,
    required String tipoFichaje,
    required DateTime timestamp,
    double? latitud,
    double? longitud,
    required bool validadoFacial,
    required String fuenteFichaje,
  }) = _FichajeUpdateApiModel;

  factory FichajeUpdateApiModel.fromJson(Map<String, Object?> json) =>
      _$FichajeUpdateApiModelFromJson(json);
}



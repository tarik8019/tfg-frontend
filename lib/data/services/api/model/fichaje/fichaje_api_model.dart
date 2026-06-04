import 'package:freezed_annotation/freezed_annotation.dart';

part 'fichaje_api_model.freezed.dart';
part 'fichaje_api_model.g.dart';

@freezed
abstract class FichajeApiModel with _$FichajeApiModel {
  const factory FichajeApiModel({
    int? idFichaje,
    int? idEmpleado,
    String? nombre,       
    String? apellidos, 
    String? tipoFichaje,
    DateTime? timestamp,
    double? latitud,
    double? longitud,
    bool? validadoFacial,
    String? fuenteFichaje, // online/ offlin
  }) = _FichajeApiModel;

  factory FichajeApiModel.fromJson(Map<String, Object?> json) =>
      _$FichajeApiModelFromJson(json);
}

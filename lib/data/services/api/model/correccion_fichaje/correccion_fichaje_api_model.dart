import 'package:freezed_annotation/freezed_annotation.dart';

part 'correccion_fichaje_api_model.freezed.dart';
part 'correccion_fichaje_api_model.g.dart';

@freezed
abstract class CorreccionFichajeApiModel with _$CorreccionFichajeApiModel {
  const factory CorreccionFichajeApiModel({
     int? idCorreccion,
    required int idEmpleado,
    required int idFichaje,
    String? motivo,
    required String estado,
  }) = _CorreccionFichajeApiModel;

  factory CorreccionFichajeApiModel.fromJson(Map<String, Object?> json) =>
      _$CorreccionFichajeApiModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'regla_turno_api_model.freezed.dart';
part 'regla_turno_api_model.g.dart';

@freezed
abstract class ReglaTurnoApiModel with _$ReglaTurnoApiModel {
  const factory ReglaTurnoApiModel({
    int? idRegla,
    String? descripcion,
    required String tipo,
    required String parametros,
  }) = _ReglaTurnoApiModel;

  factory ReglaTurnoApiModel.fromJson(Map<String, Object?> json) =>
      _$ReglaTurnoApiModelFromJson(json);
}

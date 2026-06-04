import 'package:freezed_annotation/freezed_annotation.dart';

part 'disponibilidad_api_model.freezed.dart';
part 'disponibilidad_api_model.g.dart';

@freezed
abstract class DisponibilidadApiModel with _$DisponibilidadApiModel {
  const factory DisponibilidadApiModel({
     int? idDisponibilidad,
    required int idEmpleado,
    String? diaSemana,
    String? horaInicio,
    String? horaFin,
  }) = _DisponibilidadApiModel;

  factory DisponibilidadApiModel.fromJson(Map<String, Object?> json) =>
      _$DisponibilidadApiModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'turno_update_api_model.freezed.dart';
part 'turno_update_api_model.g.dart';

@freezed
sealed class TurnoUpdateApiModel with _$TurnoUpdateApiModel {
  const factory TurnoUpdateApiModel({
    required int idTurno,
    required int idSede,
    required String nombre,
    required bool esNocturno,
    required DateTime fecha,
    required String horaInicio,
    required String horaFin,
  }) = _TurnoUpdateApiModel;

  factory TurnoUpdateApiModel.fromJson(Map<String, dynamic> json) =>
      _$TurnoUpdateApiModelFromJson(json);
}

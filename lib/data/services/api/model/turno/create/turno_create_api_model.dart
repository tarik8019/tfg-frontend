import 'package:freezed_annotation/freezed_annotation.dart';

part 'turno_create_api_model.freezed.dart';
part 'turno_create_api_model.g.dart';

@freezed
sealed class TurnoCreateApiModel with _$TurnoCreateApiModel {
  const factory TurnoCreateApiModel({
    required int idSede,
    required String nombre,
    required bool esNocturno,
    required DateTime fecha,
    required String horaInicio,
    required String horaFin,
  }) = _TurnoCreateApiModel;

  factory TurnoCreateApiModel.fromJson(Map<String, dynamic> json) =>
      _$TurnoCreateApiModelFromJson(json);
}

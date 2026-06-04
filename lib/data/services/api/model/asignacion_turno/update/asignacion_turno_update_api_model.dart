import 'package:freezed_annotation/freezed_annotation.dart';

part 'asignacion_turno_update_api_model.freezed.dart';
part 'asignacion_turno_update_api_model.g.dart';

@freezed
sealed class AsignacionTurnoUpdateApiModel with _$AsignacionTurnoUpdateApiModel {
  const factory AsignacionTurnoUpdateApiModel({
    required int idAsignacion,
    required String estado,
    required int idTurno,
    required List<int> idEmpleados,
  }) = _AsignacionTurnoUpdateApiModel;

  factory AsignacionTurnoUpdateApiModel.fromJson(Map<String, dynamic> json) =>
      _$AsignacionTurnoUpdateApiModelFromJson(json);
}

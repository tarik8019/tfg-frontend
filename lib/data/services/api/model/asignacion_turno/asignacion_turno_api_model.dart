import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mijornada/data/services/api/model/turno/turno_api_model.dart';
part 'asignacion_turno_api_model.freezed.dart';
part 'asignacion_turno_api_model.g.dart';

@freezed
sealed class AsignacionTurnoApiModel with _$AsignacionTurnoApiModel {
  const factory AsignacionTurnoApiModel({
    int? idAsignacion,
    required String estado,
    // Cada asignación tiene solo un turno
    required int idTurno,
    // Ese turno se aplica a muchos empleados
    required int idEmpleado,
    TurnoApiModel? turno,
  }) = _AsignacionTurnoApiModel;

  factory AsignacionTurnoApiModel.fromJson(Map<String, Object?> json) =>
      _$AsignacionTurnoApiModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'asignacion_turno_create_api_model.freezed.dart';
part 'asignacion_turno_create_api_model.g.dart';

@freezed
sealed class AsignacionTurnoCreateApiModel with _$AsignacionTurnoCreateApiModel {
  const factory AsignacionTurnoCreateApiModel({
    required String estado,
    required int idTurno,
    required List<int> idEmpleados,
  }) = _AsignacionTurnoCreateApiModel;

  factory AsignacionTurnoCreateApiModel.fromJson(Map<String, dynamic> json) =>
      _$AsignacionTurnoCreateApiModelFromJson(json);
}

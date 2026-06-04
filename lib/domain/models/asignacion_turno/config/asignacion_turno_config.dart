import 'package:freezed_annotation/freezed_annotation.dart';

part 'asignacion_turno_config.freezed.dart';
part 'asignacion_turno_config.g.dart';

@freezed
sealed class AsignacionTurnoConfig with _$AsignacionTurnoConfig {
  const factory AsignacionTurnoConfig({
    String? estado,
    int? idTurno,
    @Default([]) List<int> idEmpleados,
  }) = _AsignacionTurnoConfig;

  factory AsignacionTurnoConfig.fromJson(Map<String, Object?> json) =>
      _$AsignacionTurnoConfigFromJson(json);
}




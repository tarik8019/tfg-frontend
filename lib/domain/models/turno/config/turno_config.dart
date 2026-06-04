import 'package:freezed_annotation/freezed_annotation.dart';

import '../../sede/dominio/sede.dart';

part 'turno_config.freezed.dart';
part 'turno_config.g.dart';

@freezed
sealed class TurnoConfig with _$TurnoConfig {
  const factory TurnoConfig({
    String? nombre,
    DateTime? horaInicio,
    DateTime? horaFin,
    bool? esNocturno,
    DateTime? fecha,
    int? idSede,
  }) = _TurnoConfig;

  factory TurnoConfig.fromJson(Map<String, Object?> json) =>
      _$TurnoConfigFromJson(json);
}

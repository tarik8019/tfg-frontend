import 'package:freezed_annotation/freezed_annotation.dart';

import '../../sede/dominio/sede.dart';

part 'turno.freezed.dart';
part 'turno.g.dart';

@freezed
sealed class Turno with _$Turno {
  const factory Turno({
    int? idTurno,
    required String nombre,
    int? idSede,
    Sede? sede,
    required DateTime fecha,
    required String horaInicio,
    required String horaFin,
    required bool esNocturno,
  }) = _Turno;

  factory Turno.fromJson(Map<String, dynamic> json) =>
      _$TurnoFromJson(json);
}


import 'package:freezed_annotation/freezed_annotation.dart';

part 'regla_turno.freezed.dart';
part 'regla_turno.g.dart';

@freezed
sealed class ReglaTurno with _$ReglaTurno {
  const factory ReglaTurno({
    int? idRegla,
    String? descripcion,

    required String tipo,
    required String parametros,
  }) = _ReglaTurno;

  factory ReglaTurno.fromJson(Map<String, Object?> json) =>
      _$ReglaTurnoFromJson(json);
}

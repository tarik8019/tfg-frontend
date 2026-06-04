import 'package:freezed_annotation/freezed_annotation.dart';

import '../../empleado/dominio/empleado.dart';
import '../../fichaje/fichaje.dart';

part 'correccion_fichaje.freezed.dart';
part 'correccion_fichaje.g.dart';

@freezed
sealed class CorreccionFichaje with _$CorreccionFichaje {
  const factory CorreccionFichaje({
    int? idCorreccion,
    required Empleado empleado,
    required Fichaje fichaje,
    String? motivo,
    required String estado,
  }) = _CorreccionFichaje;

  factory CorreccionFichaje.fromJson(Map<String, Object?> json) =>
      _$CorreccionFichajeFromJson(json);
}

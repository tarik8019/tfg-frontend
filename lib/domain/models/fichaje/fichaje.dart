import 'package:freezed_annotation/freezed_annotation.dart';

import '../empleado/dominio/empleado.dart';

part 'fichaje.freezed.dart';
part 'fichaje.g.dart';

@freezed
sealed class Fichaje with _$Fichaje {
  const factory Fichaje({
    int? idFichaje,
    required int idEmpleado,
    Empleado? empleado,
    required String tipoFichaje,
    DateTime? timestamp,
    double? latitud,
    double? longitud,
    required bool validadoFacial,
    required String fuenteFichaje,
  }) = _Fichaje;

  factory Fichaje.fromJson(Map<String, Object?> json) =>
      _$FichajeFromJson(json);
}

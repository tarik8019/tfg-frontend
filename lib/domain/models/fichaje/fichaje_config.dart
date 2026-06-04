import 'package:freezed_annotation/freezed_annotation.dart';

import '../empleado/dominio/empleado.dart';

part 'fichaje_config.freezed.dart';
part 'fichaje_config.g.dart';

@freezed
sealed class FichajeConfig with _$FichajeConfig {
  const factory FichajeConfig({
    int? idEmpleado,
    String? tipo,
    DateTime? timestamp,
    double? latitud,
    double? longitud,
    bool? validadoFacial,
    String? fuente,
  }) = _FichajeConfig;

  factory FichajeConfig.fromJson(Map<String, Object?> json) =>
      _$FichajeConfigFromJson(json);
}

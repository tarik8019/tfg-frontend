import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/dominio/user.dart';

part 'notificacion_config.freezed.dart';
part 'notificacion_config.g.dart';

@freezed
sealed class NotificacionConfig with _$NotificacionConfig {
  const factory NotificacionConfig({
    int? idUsuario,
    String? titulo,
    String? mensaje,
    DateTime? fecha,
    @Default(false) bool leida,
  }) = _NotificacionConfig;

  factory NotificacionConfig.fromJson(Map<String, Object?> json) =>
      _$NotificacionConfigFromJson(json);
}

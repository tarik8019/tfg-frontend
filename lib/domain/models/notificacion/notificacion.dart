import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/dominio/user.dart';

part 'notificacion.freezed.dart';
part 'notificacion.g.dart';

@freezed
sealed class Notificacion with _$Notificacion {
  const factory Notificacion({
    int? idNotificacion,
    required User usuario,
    String? titulo,
    String? mensaje,
    required String tipo,
    required DateTime fechaEnvio,
    required String estado,
  }) = _Notificacion;

  factory Notificacion.fromJson(Map<String, Object?> json) =>
      _$NotificacionFromJson(json);
}

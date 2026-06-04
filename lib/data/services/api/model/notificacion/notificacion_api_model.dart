import 'package:freezed_annotation/freezed_annotation.dart';

part 'notificacion_api_model.freezed.dart';
part 'notificacion_api_model.g.dart';

@freezed
abstract class NotificacionApiModel with _$NotificacionApiModel {
  const factory NotificacionApiModel({
    int? idNotificacion,
    required int idUsuario,
    String? titulo,
    String? mensaje,
    required String tipo,
    required DateTime fechaEnvio,
    required String estado,
  }) = _NotificacionApiModel;

  factory NotificacionApiModel.fromJson(Map<String, Object?> json) =>
      _$NotificacionApiModelFromJson(json);
}

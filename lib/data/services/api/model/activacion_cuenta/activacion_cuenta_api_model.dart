import 'package:freezed_annotation/freezed_annotation.dart';

part 'activacion_cuenta_api_model.freezed.dart';
part 'activacion_cuenta_api_model.g.dart';

@freezed
sealed class ActivacionCuentaApiModel with _$ActivacionCuentaApiModel {
  const factory ActivacionCuentaApiModel({
  
  required String email ,
  required String token ,
  required String password ,

  }) = _ActivacionCuentaApiModel;

  factory ActivacionCuentaApiModel.fromJson(Map<String, Object?> json) =>
      _$ActivacionCuentaApiModelFromJson(json);
}

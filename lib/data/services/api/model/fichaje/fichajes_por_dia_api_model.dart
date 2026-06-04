import 'package:freezed_annotation/freezed_annotation.dart';
import 'fichaje_api_model.dart';
import 'fichajes_empleado_api_model.dart';

part 'fichajes_por_dia_api_model.freezed.dart';
part 'fichajes_por_dia_api_model.g.dart';

@freezed
abstract class FichajesPorDiaApiModel with _$FichajesPorDiaApiModel {
  const factory FichajesPorDiaApiModel({

    required String fecha,
    required List<FichajesEmpleadoApiModel> empleados,
  }) = _FichajesPorDiaApiModel;

  factory FichajesPorDiaApiModel.fromJson(Map<String, dynamic> json) =>
      _$FichajesPorDiaApiModelFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';
import 'fichaje_api_model.dart';
import '../empleado/empleado_api_model.dart';

part 'fichajes_empleado_api_model.freezed.dart';
part 'fichajes_empleado_api_model.g.dart';

@freezed
abstract class FichajesEmpleadoApiModel with _$FichajesEmpleadoApiModel {
  const factory FichajesEmpleadoApiModel({
    required int idEmpleado,
    required String nombre,
    required String apellidos,
    required List<FichajeApiModel> fichajes,
  }) = _FichajesEmpleadoApiModel;

  factory FichajesEmpleadoApiModel.fromJson(Map<String, dynamic> json) =>
      _$FichajesEmpleadoApiModelFromJson(json);
}
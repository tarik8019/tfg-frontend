import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mijornada/data/services/api/model/sede/sede_api_model.dart';

part 'turno_api_model.freezed.dart';
part 'turno_api_model.g.dart';

@freezed
abstract class TurnoApiModel with _$TurnoApiModel {
  const factory TurnoApiModel({
    int? idTurno,
    int? idSede,
    SedeApiModel? sede,
    String? nombre ,
    bool? esNocturno ,
    DateTime? fecha,
    String? horaInicio,
    String? horaFin,
  }) = _TurnoApiModel;

  factory TurnoApiModel.fromJson(Map<String, dynamic> json) =>
      _$TurnoApiModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sede.freezed.dart';
part 'sede.g.dart';

@freezed
sealed class Sede with _$Sede {
  const factory Sede({
    int? idSede,
    required String nombre,
    String? direccion,
    double? latitud,
    double? longitud,
    int? radioGeofencing,
  }) = _Sede;

  factory Sede.fromJson(Map<String, Object?> json) =>
      _$SedeFromJson(json);
}


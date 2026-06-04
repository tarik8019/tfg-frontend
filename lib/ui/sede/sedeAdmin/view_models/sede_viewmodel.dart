import 'package:flutter/material.dart';
import '../../../../domain/models/sede/dominio/sede.dart';
import '../../../../domain/use_cases/sede/sede_use_case.dart';
import '../../../../utils/command.dart';
import '../../../../utils/result.dart';

class SedeAdminViewModel extends ChangeNotifier {
  SedeAdminViewModel({
    required SedeUseCase sedeUseCase,
  }) : _sedeUseCase = sedeUseCase {
    loadSedes = Command0<void>(_loadSedes);
    createSede = Command1<Sede, Sede>(_create);
    updateSede = Command1<void, Sede>(_update);
    deleteSede = Command1<void, Sede>(_delete);
  }

  final SedeUseCase _sedeUseCase;

  List<Sede> _sedes = [];
  List<Sede> get sedes => _sedes;

  late final Command0<void> loadSedes;
  late final Command1<Sede, Sede> createSede;
  late final Command1<void, Sede> updateSede;
  late final Command1<void, Sede> deleteSede;

  // LOAD
  Future<Result<void>> _loadSedes() async {
    final result = await _sedeUseCase.getAllSedes();

    if (result is Ok<List<Sede>>) {
      _sedes = result.value;
      notifyListeners();
      return const Result.ok(null);
    }

    return Result.error((result as Error).error);
  }

  // CREATE
  Future<Result<Sede>> _create(Sede sede) async {
    debugPrint("=== CREANDO SEDE ===");
    debugPrint("Nombre: ${sede.nombre}");
    debugPrint("Dirección: ${sede.direccion}");
    debugPrint("Latitud: ${sede.latitud}");
    debugPrint("Longitud: ${sede.longitud}");
    debugPrint("RadioGeofencing: ${sede.radioGeofencing}");
    debugPrint("=====================");
    final result = await _sedeUseCase.crearSede(sede);

    if (result is Ok<Sede>) {
      _sedes.add(result.value);
      notifyListeners();
      return Result.ok(result.value);
    }

    return Result.error((result as Error).error);
  }

  // UPDATE
  Future<Result<void>> _update(Sede sede) async {
    final result = await _sedeUseCase.editarSede(sede);

    if (result is Ok<Sede>) {
      final index = _sedes.indexWhere((s) => s.idSede == sede.idSede);
      if (index != -1) {
        _sedes[index] = result.value;
        notifyListeners();
      }
      return const Result.ok(null);
    }

    return Result.error((result as Error).error);
  }

  // DELETE
  Future<Result<void>> _delete(Sede sede) async {
    final result = await _sedeUseCase.borrarSede(sede.idSede!);

    if (result is Ok<void>) {
      _sedes.removeWhere((s) => s.idSede == sede.idSede);
      notifyListeners();
      return const Result.ok(null);
    }

    return Result.error((result as Error).error);
  }
}

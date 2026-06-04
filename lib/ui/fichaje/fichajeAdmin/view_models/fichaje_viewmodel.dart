import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:mijornada/domain/use_cases/fichaje/fichaje_use_case.dart';

import '../../../../domain/models/fichaje/fichajes_empleado.dart';
import '../../../../domain/models/fichaje/fichajes_por_dia.dart';
import '../../../../utils/command.dart';
import '../../../../utils/result.dart';

class FichajeAdminViewModel extends ChangeNotifier {
  FichajeAdminViewModel({required FichajeUseCase fichajeUseCase})
      : _useCase = fichajeUseCase {
    loadFichajes = Command0(_load);
  }

  final FichajeUseCase _useCase;
  final Logger _logger = Logger('FichajeAdminViewModel');

  late final Command0<void> loadFichajes;

  // NUEVO MODELO
  List<FichajesPorDia> _data = [];
  List<FichajesPorDia> get data => _data;

  String _search = '';
  DateTime? _selectedDate;

  Timer? _debounce;

  // LOAD
  Future<Result<void>> _load() async {
    final result = await _useCase.getFichajesFiltrados(
      nombre: null,
      apellidos: null,
      fecha: null,
    );

    if (result is Ok<List<FichajesPorDia>>) {
      _data = result.value;
      notifyListeners();
      return const Result.ok(null);
    }

    return Result.error(Exception('Error cargando fichajes'));
  }

  // SEARCH
  void setSearch(String value) {
    _search = value;

    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 400), () {
      _fetchFiltered();
    });
  }

  Future<void> setDateFilter(DateTime? date) async {
    _selectedDate = date;
    await _fetchFiltered();
  }

  Future<void> _fetchFiltered() async {
    final parts = _search.trim().split(' ');

    final nombre = parts.isNotEmpty ? parts.first : null;
    final apellidos =
        parts.length > 1 ? parts.sublist(1).join(' ') : null;

    final result = await _useCase.getFichajesFiltrados(
      nombre: nombre?.isEmpty == true ? null : nombre,
      apellidos: apellidos?.isEmpty == true ? null : apellidos,
      fecha: _selectedDate,
    );

    if (result is Ok<List<FichajesPorDia>>) {
      _data = result.value;
    } else {
      _data = [];
    }

    notifyListeners();
  }

  // CLEAR
  void clearFilters() {
    _search = '';
    _selectedDate = null;
    loadFichajes.execute();
    notifyListeners();
  }
}
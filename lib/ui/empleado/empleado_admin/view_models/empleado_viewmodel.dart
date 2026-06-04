import 'package:flutter/foundation.dart';

import '../../../../domain/models/empleado/dominio/empleado.dart';
import '../../../../domain/use_cases/empleado/empleado_use_case.dart';
import '../../../../utils/command.dart';
import '../../../../utils/result.dart';

class EmpleadoViewModel extends ChangeNotifier {
  EmpleadoViewModel({
    required EmpleadoUseCase empleadoUseCase,
  }) : _empleadoUseCase = empleadoUseCase {
    loadEmpleados = Command0(_load);

  }

  final EmpleadoUseCase _empleadoUseCase;

  /// LISTAS
  List<Empleado> _empleados = [];
  List<Empleado> _empleadosFiltrados = [];

  List<Empleado> get empleados => _empleadosFiltrados;

  /// FILTRO
  String _dniFiltro = '';

  void setFiltroDni(String value) {
    _dniFiltro = value.trim().toLowerCase();
    _filtrar();
  }

  void _filtrar() {
    _empleadosFiltrados = _dniFiltro.isEmpty
        ? _empleados
        : _empleados.where(
            (e) => e.dniNie.toLowerCase().contains(_dniFiltro),
          ).toList();

    notifyListeners();
  }

  /// COMMANDS
  late final Command0 loadEmpleados;

  // LOAD
  Future<Result<void>> _load() async {
    final result = await _empleadoUseCase.getAll();

    if (result is Ok<List<Empleado>>) {
      _empleados = result.value;
      _empleadosFiltrados = result.value;
      notifyListeners();
      return const Result.ok(null);
    }

    return Result.error((result as Error).error);
  }

}

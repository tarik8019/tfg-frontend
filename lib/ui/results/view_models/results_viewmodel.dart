import 'package:flutter/cupertino.dart';
import 'package:logging/logging.dart';
import 'package:mijornada/domain/models/empleado/summary/empleado_summary.dart';
import '../../../data/repositories/empleado/empleado_repository.dart';
import '../../../domain/models/empleado/dominio/empleado.dart';
import '../../../utils/command.dart';
import '../../../utils/result.dart';

/// ViewModel para la pantalla de resultados de MiJornada
/// Maneja la búsqueda y filtrado de empleados.
class ResultsViewModel extends ChangeNotifier {
  ResultsViewModel({
    required EmpleadoRepository empleadoRepository,
  }) : _empleadoRepository = empleadoRepository {
    search = Command0(_search)..execute();
  }

  final _log = Logger('ResultsViewModel');

  final EmpleadoRepository _empleadoRepository;

  List<Empleado> _empleados = [];

  /// Lista de empleados filtrados
  List<Empleado> get empleados => _empleados;

  /// Comando para realizar la búsqueda
  late final Command0 search;

  Future<Result<void>> _search() async {
    final result = await _empleadoRepository.getAll();
    switch (result) {
      case Ok<List<Empleado>>():
        _empleados = result.value;
        _log.fine('Empleados (${_empleados.length}) cargados');
      case Error():
        _log.warning('Error al cargar empleados', result.error);
    }

    notifyListeners();
    return result;
  }

  /// Filtrar empleados por nombre o puesto
  void filter(String query) {
    if (query.isEmpty) {
      // recargar todos
      search.execute(); 
      return;
    }

    _empleados = _empleados
        .where((e) =>
            e.nombre.toLowerCase().contains(query.toLowerCase()) ||
            e.puesto.toLowerCase().contains(query.toLowerCase()))
        .toList();

    notifyListeners();
  }
}

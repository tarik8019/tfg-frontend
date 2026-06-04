import 'package:flutter/material.dart';
import '../../../../domain/use_cases/fichaje/fichaje_use_case.dart';
import '../../../../utils/command.dart';
import '../../../../utils/result.dart';

class FichajeEmpleadoViewModel extends ChangeNotifier {
  FichajeEmpleadoViewModel({required FichajeUseCase fichajeUseCase})
      : _fichajeUseCase = fichajeUseCase {
    ficharEntrada = Command0<void>(() => _fichar('entrada'));
    ficharSalida = Command0<void>(() => _fichar('salida'));
    ficharPausaInicio = Command0<void>(() => _fichar('pausa_inicio'));
    ficharPausaFin = Command0<void>(() => _fichar('pausa_fin'));
  }

  final FichajeUseCase _fichajeUseCase;

  // Comandos públicos para la UI
  late final Command0<void> ficharEntrada;
  late final Command0<void> ficharSalida;
  late final Command0<void> ficharPausaInicio;
  late final Command0<void> ficharPausaFin;

  // Método genérico para fichar cualquier tipo
  Future<Result<void>> _fichar(String tipo) async {
    try {
      final result = await _fichajeUseCase.fichar(tipo: tipo);

      // Notificar cambios de estado de comando
      notifyListeners();
      return result;
    } catch (e) {
      return Result.error(Exception('Error al fichar: $e'));
    }
  }
}

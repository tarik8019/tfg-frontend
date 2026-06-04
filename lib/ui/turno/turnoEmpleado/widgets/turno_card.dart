import 'package:flutter/material.dart';
import 'package:mijornada/ui/turno/turnoEmpleado/view_models/turno_viewmodel.dart';
import '../../../../domain/models/asignacion_turno/dominio/asignacion_turno.dart';

class TurnoCard extends StatelessWidget {
  const TurnoCard({
    super.key,
    required this.asignacion,
    required this.viewModel,
  });

  final AsignacionTurno asignacion;
  final TurnoEmpleadoViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final puedeConfirmar = asignacion.estado == 'Pendiente';
    final puedeCancelar = asignacion.estado != 'Cancelado';

    final loading =
        viewModel.confirmarTurno.running || viewModel.cancelarTurno.running;

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text(
              'Turno asignado: ${asignacion.turno?.nombre ?? 'Turno no disponible'}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Hora inicio: ${asignacion.turno?.horaInicio ?? 'Hora inicio no disponible'}',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              'Hora fin: ${asignacion.turno?.horaFin ?? 'Hora fin no disponible'}',
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 8),

            Text('Estado: ${asignacion.estado}'),

            const SizedBox(height: 16),

            Row(
              children: [
                if (puedeConfirmar)
                  Expanded(
                    child: ElevatedButton(
                      onPressed: loading
                          ? null
                          : () => viewModel.confirmarTurno.execute(asignacion),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: loading
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : const Text('Confirmar'),
                    ),
                  ),

                if (puedeConfirmar) const SizedBox(width: 12),

                if (puedeCancelar)
                  Expanded(
                    child: ElevatedButton(
                      onPressed: loading
                          ? null
                          : () => viewModel.cancelarTurno.execute(asignacion),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: loading
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : const Text('Cancelar'),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

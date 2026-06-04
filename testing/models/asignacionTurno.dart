import 'package:mijornada/data/mappers/asignacion_turno_mapper.dart';
import 'package:mijornada/domain/models/asignacion_turno/dominio/asignacion_turno.dart';

import 'empleado.dart';
import 'turno.dart';

// --- Dominio AsignacionTurno ---
final kAsignacionTurno = AsignacionTurno(
  idAsignacion: 1,
  estado: 'confirmado',
  idTurno: kTurno.idTurno,
  turno: kTurno,
  idEmpleados: [kEmpleado.idEmpleado!],
  empleados: [kEmpleado],
);

// --- API Read Model (lo que devuelve el backend) ---
final kAsignacionTurnoApiModel = kAsignacionTurno.toApiModel();

// --- API Create Model (lo que se envía al backend para crear) ---
final kAsignacionTurnoCreateApiModel = kAsignacionTurno.toCreateApiModel();

// --- API Update Model (lo que se envía al backend para actualizar) ---
final kAsignacionTurnoUpdateApiModel = kAsignacionTurno.toUpdateApiModel();

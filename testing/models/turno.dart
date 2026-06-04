

import 'package:mijornada/data/mappers/turno_mapper.dart';
import 'package:mijornada/domain/models/turno/dominio/turno.dart';

/// Instancia de dominio Turno
final kTurno = Turno(
  idTurno: 0,
  nombre: 'Manana',
  idSede: 1,
  sede: null,
  fecha: DateTime(2026, 1, 7),
  horaInicio: '08:00',
  horaFin: '16:00',
  esNocturno: false,
);

/// Instancia API model (para respuestas del backend)
final kTurnoApiModel = kTurno.toApiModel();

/// Instancia para enviar al backend al crear un Turno
final kTurnoCreateApiModel = kTurno.toCreateApiModelDto();

/// Instancia para enviar al backend al actualizar un Turno
final kTurnoUpdateApiModel = kTurno.toUpdateApiModel();

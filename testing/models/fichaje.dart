
import 'package:mijornada/data/mappers/fichaje_mapper.dart';
import 'package:mijornada/domain/models/fichaje/fichaje.dart';

import 'empleado.dart';

// --- Dominio Fichaje ---
final kFichaje = Fichaje(
  idFichaje: 1,
  idEmpleado: kEmpleado.idEmpleado!,
  empleado: kEmpleado,
   tipoFichaje: 'entrada', // puede ser 'entrada' o 'salida'
   timestamp:  DateTime.now(),
    validadoFacial: false,
     fuenteFichaje: 'salida',
);

// --- API Read Model (lo que devuelve el backend) ---
final kFichajeApiModel = kFichaje.toApiModel();

// --- API Create Model (lo que se envía al backend para crear) ---
final kFichajeCreateApiModel = kFichaje.dominioToCreateApiModel();

// --- API Update Model (lo que se envía al backend para actualizar) ---
final kFichajeUpdateApiModel = kFichaje.toUpdateApiModel();

import 'package:mijornada/data/services/api/model/fichaje/create/fichaje_create_api_model.dart';
import 'package:mijornada/data/services/api/model/fichaje/fichaje_api_model.dart';
import 'package:mijornada/data/services/api/model/fichaje/update/fichaje_update_api_model.dart';
import 'package:mijornada/domain/models/empleado/summary/empleado_summary.dart';
import 'package:mijornada/domain/models/fichaje/fichaje.dart';

import '../../domain/models/empleado/dominio/empleado.dart';
import '../../domain/models/fichaje/fichajes_empleado.dart';
import '../../domain/models/fichaje/fichajes_por_dia.dart';
import '../services/api/model/fichaje/fichajes_empleado_api_model.dart';
import '../services/api/model/fichaje/fichajes_por_dia_api_model.dart';


extension FichajeCreateX on FichajeApiModel {
  FichajeCreateApiModel toCreateApiModel() {
    return FichajeCreateApiModel(
      idEmpleado: idEmpleado!,
      tipoFichaje: tipoFichaje!,
      timestamp: timestamp!,
      latitud: latitud,
      longitud: longitud,
      validadoFacial: validadoFacial!,
      fuenteFichaje: fuenteFichaje!,
    );
  }
}


extension FichajeApiModelMapper on FichajeApiModel {
  Fichaje toDomain() {
    return Fichaje(
      idFichaje: idFichaje,
      idEmpleado: idEmpleado!,
      tipoFichaje: tipoFichaje!,
       timestamp: timestamp?.toLocal(),
      latitud: latitud,
      longitud: longitud,
      validadoFacial: validadoFacial!,
      fuenteFichaje: fuenteFichaje!,
    );
  }
}
extension FichajeDomainToApiModel on Fichaje {
  FichajeApiModel toApiModel() {
    return FichajeApiModel(
      idFichaje: idFichaje, // puede ser null si es un fichaje nuevo
      idEmpleado: idEmpleado,
      tipoFichaje: tipoFichaje,
      timestamp: timestamp,
      latitud: latitud,
      longitud: longitud,
      validadoFacial: validadoFacial , // por si es null en dominio
      fuenteFichaje: fuenteFichaje,
    );
  }

  FichajeCreateApiModel toCreateApiModel() {
    return FichajeCreateApiModel(
      idEmpleado: idEmpleado,
      tipoFichaje: tipoFichaje,
      timestamp: timestamp!,
      latitud: latitud,
      longitud: longitud,
      validadoFacial: validadoFacial,
      fuenteFichaje: fuenteFichaje,
    );
  }

  FichajeUpdateApiModel toUpdateApiModel() {
    return FichajeUpdateApiModel(
      idFichaje: idFichaje!,
      idEmpleado: idEmpleado,
      tipoFichaje: tipoFichaje,
      timestamp: timestamp!,
      latitud: latitud,
      longitud: longitud,
      validadoFacial: validadoFacial ,
      fuenteFichaje: fuenteFichaje,
    );
  }
}

extension FichajeUpdateX on FichajeApiModel {
  FichajeUpdateApiModel toUpdateApiModel() {
    return FichajeUpdateApiModel(
      idFichaje: idFichaje!,
      idEmpleado: idEmpleado!,
      tipoFichaje: tipoFichaje!,
      timestamp: timestamp!,
      latitud: latitud,
      longitud: longitud,
      validadoFacial: validadoFacial!,
      fuenteFichaje: fuenteFichaje!,
    );
  }
}

extension FichajeMapper on Fichaje {
  FichajeCreateApiModel dominioToCreateApiModel() {
    return FichajeCreateApiModel(
      idEmpleado: idEmpleado,
      tipoFichaje: tipoFichaje,
      timestamp: timestamp!,
      latitud: latitud,
      longitud: longitud,
      validadoFacial: validadoFacial, // por si es null
      fuenteFichaje: fuenteFichaje,
    );
  }
}


extension FichajeCreateToApiModel on FichajeCreateApiModel {
  FichajeApiModel createToApiModel({int? idFichaje}) {
    return FichajeApiModel(
      idFichaje: idFichaje,
      idEmpleado: idEmpleado,
      tipoFichaje: tipoFichaje,
      timestamp: timestamp,
      latitud: latitud,
      longitud: longitud,
      validadoFacial: validadoFacial,
      fuenteFichaje: fuenteFichaje,
    );
  }
}

extension FichajesEmpleadoMapper on FichajesEmpleadoApiModel {
  FichajesEmpleado toDomain() {
    return FichajesEmpleado(
      idEmpleado: idEmpleado,
      nombre: nombre,
      apellidos: apellidos,
      fichajes: fichajes.map((f) => f.toDomain()).toList(),
    );
  }
}


extension FichajesPorDiaMapper on FichajesPorDiaApiModel {
  FichajesPorDia toDomain() {
    return FichajesPorDia(
      fecha: DateTime.parse(fecha).toLocal(),
      empleados: empleados.map((e) => e.toDomain()).toList(),
    );
  }
}
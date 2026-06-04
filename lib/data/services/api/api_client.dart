import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mijornada/data/services/api/model/empleado/update/empleado_update_api_model.dart';
import 'package:mijornada/data/services/api/model/fichaje/create/fichaje_create_api_model.dart';
import '../../../utils/result.dart';
import 'model/asignacion_turno/create/asignacion_turno_create_api_model.dart';
import 'model/asignacion_turno/update/asignacion_turno_update_api_model.dart';
import 'model/correccion_fichaje/correccion_fichaje_api_model.dart';
import 'model/departamento/departamento_api_model.dart';
import 'model/departamento/create/departamento_create_api_model.dart';
import 'model/departamento/update/departamento_update_api_model.dart';
import 'model/disponibilidad/disponibilidad_api_model.dart';
import 'model/documento_empleado/documento_empleado_api_model.dart';
import 'model/empleado/create/empleado_create_api_model.dart';
import 'model/empleado/empleado_api_model.dart';
import 'model/asignacion_turno/asignacion_turno_api_model.dart';
import 'model/empresa/empresa_api_model.dart';
import 'model/fichaje/fichaje_api_model.dart';
import 'model/fichaje/fichajes_empleado_api_model.dart';
import 'model/fichaje/fichajes_por_dia_api_model.dart';
import 'model/notificacion/notificacion_api_model.dart';
import 'model/regla_turno/regla_turno_api_model.dart';
import 'model/reporte/reporte_api_model.dart';
import 'model/responsable/dominio/responsable_api_model.dart';
import 'model/responsable_empleado/dominio/responsable_empleado_api_model.dart';
import 'model/sede/create/sede_create_api_model.dart';
import 'model/sede/sede_api_model.dart';
import 'model/sede/update/sede_update_api_model.dart';
import 'model/solicitud_ausencia/solicitud_ausencia_api_model.dart';
import 'model/turno/create/turno_create_api_model.dart';
import 'model/turno/turno_api_model.dart';
import 'model/turno/update/turno_update_api_model.dart';
import 'model/user/user_api_model.dart';

typedef AuthHeaderProvider = String? Function();

class ApiClient {
  ApiClient({String? host, int? port, HttpClient Function()? clientFactory})
      : _host = host ?? '10.0.2.2',
        _port = port ?? 5072,
        _clientFactory = clientFactory ?? HttpClient.new;

  final String _host;
  final int _port;
  final HttpClient Function() _clientFactory;

  AuthHeaderProvider? _authHeaderProvider;

  set authHeaderProvider(AuthHeaderProvider authHeaderProvider) {
    _authHeaderProvider = authHeaderProvider;
  }

  Future<void> _authHeader(HttpHeaders headers) async {
    final header = _authHeaderProvider?.call();
    if (header != null) {
      headers.add(HttpHeaders.authorizationHeader, header);
    }
  }


  // ----------------- ASIGNACION TURNO -----------------
// corregida
 Future<Result<AsignacionTurnoApiModel>> createAsignacionTurno(
  AsignacionTurnoCreateApiModel dto,
) async {
  final client = _clientFactory();

  try {
    final request =
        await client.post(_host, _port, '/api/asignacion_turno');

    request.headers
        .set(HttpHeaders.contentTypeHeader, 'application/json');
    await _authHeader(request.headers);

    request.write(jsonEncode(dto.toJson()));

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200 || response.statusCode == 201) {
     final jsonMap = jsonDecode(body);
     final list = (jsonMap['result'] as List)
      .map((e) => AsignacionTurnoApiModel.fromJson(e))
      .toList();

return Result.ok(list.first);

    }

    return Result.error(HttpException(body));
  } finally {
    client.close();
  }
}



Future<Result<List<AsignacionTurnoApiModel>>> getAsignacionTurnos() async {
  final client = _clientFactory();

  try {
    final request = await client.get(
      _host,
      _port,
      '/api/asignacion_turno/con-turno',
    );

    await _authHeader(request.headers);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final decoded = jsonDecode(body);

      final list = (decoded as List)
          .map((e) => AsignacionTurnoApiModel.fromJson(e))
          .toList();

      return Result.ok(list);
    }

    return Result.error(HttpException('Error ${response.statusCode}: $body'));
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<List<AsignacionTurnoApiModel>>> getAsignacionesPorEmpleado(
  int idEmpleado,
) async {
  final client = _clientFactory();

  try {
    final request = await client.get(
      _host,
      _port,
      '/api/asignacion_turno/empleado/$idEmpleado',
    );

    await _authHeader(request.headers);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final Map<String, dynamic> decoded =
          jsonDecode(body) as Map<String, dynamic>;

      final List<dynamic> list = decoded['result'] as List<dynamic>;

      final asignaciones = list
          .map(
            (json) => AsignacionTurnoApiModel.fromJson(
              json as Map<String, dynamic>,
            ),
          )
          .toList();

      return Result.ok(asignaciones);
    }

    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}


Future<Result<AsignacionTurnoApiModel>> getAsignacionTurnoById(int id) async {
  final client = _clientFactory();

  try {
    final request = await client.get(_host, _port, '/api/asignacion_turno/$id',);
    await _authHeader(request.headers);
    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final decoded = jsonDecode(body);
      return Result.ok(AsignacionTurnoApiModel.fromJson(decoded));
    }

    return Result.error(HttpException('Error ${response.statusCode}: $body'));
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<AsignacionTurnoApiModel?>> updateAsignacionTurno(
  AsignacionTurnoUpdateApiModel turnoApi,
) async {
  final client = _clientFactory();

  try {
    // Validación básica
    if (turnoApi.idAsignacion == 0) {
      return Result.error(
        Exception('El asignacion turno debe tener idAsignacion para actualizar'),
      );
    }

    // Preparar request
    final request = await client.put(
      _host,
      _port,
      '/api/asignacion_turno/sin-turno',
    );

    request.headers.set(
      HttpHeaders.contentTypeHeader,
      'application/json',
    );

    await _authHeader(request.headers);

    // Enviar body
    request.write(jsonEncode(turnoApi.toJson()));

    // Recibir respuesta
    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      if (body.isEmpty) return Result.ok(null);

      // Decodificar la lista de asignaciones
      final decodedList = jsonDecode(body) as List<dynamic>;

      if (decodedList.isEmpty) {
        return Result.error(Exception('API retornó lista vacía'));
      }

      // Tomar el primer elemento
      final apiModel = AsignacionTurnoApiModel.fromJson(
        decodedList[0] as Map<String, dynamic>,
      );

      return Result.ok(apiModel);
    }

    // Manejo de errores HTTP
    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}



Future<Result<void>> deleteAsignacionTurno(int id) async {
  final client = _clientFactory();

  try {
    final request = await client.delete(_host, _port, '/api/asignacion_turno/$id',);

    await _authHeader(request.headers);
    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200 || response.statusCode == 204) {
      return Result.ok(null);
    }

    return Result.error(HttpException('Error ${response.statusCode}: $body'));
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}
// corregida
Future<Result<List<AsignacionTurnoApiModel>>> getAsignacionTurnosBySede(int idSede) async {
  final client = _clientFactory();
  try {
    final request = await client.get(_host, _port, '/asignacion_turno/sede/$idSede');
    await _authHeader(request.headers);
    final response = await request.close();

    if (response.statusCode == 200) {
      final stringData = await response.transform(utf8.decoder).join();
      final json = jsonDecode(stringData) as List<dynamic>;
       final turnos = json
            .map((element) => AsignacionTurnoApiModel.fromJson(element))
            .toList();
        return Result.ok(turnos);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

  // ----------------- CORRECCION FICHAJE -----------------
// corregida
  Future<Result<List<CorreccionFichajeApiModel>>> getCorreccionesFichaje() async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/correccion_fichaje');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 200) {
        final data = await response.transform(utf8.decoder).join();
        final correccionFichajes = (jsonDecode(data) as List<dynamic>)
            .map((e) => CorreccionFichajeApiModel.fromJson(e))
            .toList();
        return Result.ok(correccionFichajes);
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
 // correjida
  Future<Result<CorreccionFichajeApiModel>> getCorreccionFichajeById(int id) async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/correccion_fichaje/$id');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 200) {
        final data = await response.transform(utf8.decoder).join();
        return Result.ok (CorreccionFichajeApiModel.fromJson(jsonDecode(data)));
        
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
// corregida
  Future<Result<CorreccionFichajeApiModel>> postCorreccionFichaje(
      CorreccionFichajeApiModel apiModel) async {
    final client = _clientFactory();
    try {
      final request = await client.post(_host, _port, '/correccion_fichaje');
      await _authHeader(request.headers);
      request.write(jsonEncode(apiModel));
      final response = await request.close();

      if (response.statusCode == 201) {
        final data = await response.transform(utf8.decoder).join();
        final obj = CorreccionFichajeApiModel.fromJson(jsonDecode(data));
        return Result.ok(obj);
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
// corregida
  Future<Result<CorreccionFichajeApiModel>> updateCorreccionFichaje(
      CorreccionFichajeApiModel apiModel) async {
    final client = _clientFactory();
    try {
      final request = await client.put(
          _host, _port, '/correccion_fichaje/${apiModel.idCorreccion}');
      await _authHeader(request.headers);
      request.write(jsonEncode(apiModel));
      final response = await request.close();

      if (response.statusCode == 200) {
        final data = await response.transform(utf8.decoder).join();
        final obj = CorreccionFichajeApiModel.fromJson(jsonDecode(data));
        return Result.ok(obj);
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

  Future<Result<void>> deleteCorreccionFichaje(int id) async {
    final client = _clientFactory();
    try {
      final request =
          await client.delete(_host, _port, '/correccion_fichaje/$id');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 204) {
        return const Result.ok(null);
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
// corregida
  Future<Result<List<CorreccionFichajeApiModel>>> getCorreccionFichajesByEmpleado(
      int idEmpleado) async {
    final client = _clientFactory();
    try {
      final request =
          await client.get(_host, _port, '/correccion_fichaje/empleado/$idEmpleado');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
        return Result.ok(json
        .map((e) => CorreccionFichajeApiModel.fromJson(e))
        .toList());
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

  // ----------------- DISPONIBILIDAD -----------------
// corregida
  Future<Result<List<DisponibilidadApiModel>>> getDisponibilidades() async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/disponibilidad');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 200) {
        final data = await response.transform(utf8.decoder).join();
        final disponibilidades = (jsonDecode(data) as List<dynamic>)
            .map((e) => DisponibilidadApiModel.fromJson(e))
            .toList();
        return Result.ok(disponibilidades);
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
// corregida
  Future<Result<DisponibilidadApiModel>> getDisponibilidadById(int id) async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/disponibilidad/$id');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 200) {
        final data = await response.transform(utf8.decoder).join();
        return Result.ok(DisponibilidadApiModel.fromJson(jsonDecode(data)));
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
// corregida
  Future<Result<DisponibilidadApiModel>> postDisponibilidad(
      DisponibilidadApiModel apiModel) async {
    final client = _clientFactory();
    try {
      final request = await client.post(_host, _port, '/disponibilidad');
      await _authHeader(request.headers);
      request.write(jsonEncode(apiModel));
      final response = await request.close();

      if (response.statusCode == 201) {
        final data = await response.transform(utf8.decoder).join();
        final obj = DisponibilidadApiModel.fromJson(jsonDecode(data));
        return Result.ok(obj);
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
// corregida
  Future<Result<DisponibilidadApiModel>> updateDisponibilidad(
      DisponibilidadApiModel apiModel) async {
    final client = _clientFactory();
    try {
      final request =
          await client.put(_host, _port, '/disponibilidad/${apiModel.idDisponibilidad}');
      await _authHeader(request.headers);
      request.write(jsonEncode(apiModel));
      final response = await request.close();

      if (response.statusCode == 200) {
        final data = await response.transform(utf8.decoder).join();
        final obj = DisponibilidadApiModel.fromJson(jsonDecode(data));
        return Result.ok(obj);
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

  Future<Result<void>> deleteDisponibilidad(int id) async {
    final client = _clientFactory();
    try {
      final request = await client.delete(_host, _port, '/disponibilidad/$id');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 204) {
        return const Result.ok(null);
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
// corregida
  Future<Result<List<DisponibilidadApiModel>>> getDisponibilidadesByEmpleado(
      int idEmpleado) async {
    final client = _clientFactory();
    try {
      final request =
          await client.get(_host, _port, '/disponibilidad/empleado/$idEmpleado');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
        final list = json
            .map((e) => DisponibilidadApiModel.fromJson(e))
            .toList();
        return Result.ok(list);
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

  // ---------------- DOCUMENTO EMPLEADO ----------------
// corregida
  Future<Result<List<DocumentoEmpleadoApiModel>>> getDocumentoEmpleados() async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/documento_empleado');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 200) {
        final data = await response.transform(utf8.decoder).join();
        final list = (jsonDecode(data) as List<dynamic>)
            .map((e) => DocumentoEmpleadoApiModel.fromJson(e))
            .toList();
        return Result.ok(list);
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
// corregida
  Future<Result<DocumentoEmpleadoApiModel>> getDocumentoEmpleadoById(int id) async {
    final client = _clientFactory();
    try {
      final request =
          await client.get(_host, _port, '/documento_empleado/$id');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 200) {
        final data = await response.transform(utf8.decoder).join();
         final documentoEmpleado = DocumentoEmpleadoApiModel.fromJson(jsonDecode(data));
        return Result.ok(documentoEmpleado);
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
// corregida
  Future<Result<DocumentoEmpleadoApiModel>> postDocumentoEmpleado(
      DocumentoEmpleadoApiModel apiModel) async {
    final client = _clientFactory();
    try {
      final request =
          await client.post(_host, _port, '/documento_empleado');
      await _authHeader(request.headers);
      request.write(jsonEncode(apiModel));
      final response = await request.close();

      if (response.statusCode == 201) {
        final data = await response.transform(utf8.decoder).join();
        final obj = DocumentoEmpleadoApiModel.fromJson(jsonDecode(data));
        return Result.ok(obj);
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
// corregida
  Future<Result<DocumentoEmpleadoApiModel>> updateDocumentoEmpleado(
      DocumentoEmpleadoApiModel apiModel) async {
    final client = _clientFactory();
    try {
      final request = await client.put(
          _host, _port, '/documento_empleado/${apiModel.idDocumento}');
      await _authHeader(request.headers);
      request.write(jsonEncode(apiModel));
      final response = await request.close();

      if (response.statusCode == 200) {
        final data = await response.transform(utf8.decoder).join();
        final obj = DocumentoEmpleadoApiModel.fromJson(jsonDecode(data));
        return Result.ok(obj);
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

  Future<Result<void>> deleteDocumentoEmpleado(int id) async {
    final client = _clientFactory();
    try {
      final request =
          await client.delete(_host, _port, '/documento_empleado/$id');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 204) {
        return const Result.ok(null);
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
// corregida
  Future<Result<List<DocumentoEmpleadoApiModel>>> getDocumentosByEmpleado(
      int idEmpleado) async {
    final client = _clientFactory();
    try {
      final request = await client
          .get(_host, _port, '/documento_empleado/empleado/$idEmpleado');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 200) {
        final data = await response.transform(utf8.decoder).join();
        final list = (jsonDecode(data) as List<dynamic>)
            .map((e) => DocumentoEmpleadoApiModel.fromJson(e))
            .toList();
        return Result.ok(list);
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

    // ---------------- EMPLEADOS ----------------

//Corrigida
  Future<Result<List<EmpleadoApiModel>>> getEmpleados() async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/api/empleados');
      await _authHeader(request.headers);
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
        return Result.ok(
          json.map((element) => EmpleadoApiModel.fromJson(element)).toList(),
        );
        
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }


  Future<Result<EmpleadoApiModel>> getEmpleadoByEmail(String email) async {
    final client = _clientFactory();

    try {
      final request = await client.get(
        _host,
        _port,
        '/api/empleados/by-email/$email',
      );

      await _authHeader(request.headers);

      final response = await request.close();
      final stringData = await response.transform(utf8.decoder).join();

      if (response.statusCode == 200) {
        final Map<String, dynamic> json =
            jsonDecode(stringData) as Map<String, dynamic>;

        final Map<String, dynamic> resultJson =
            json['result'] as Map<String, dynamic>;

        final empleado = EmpleadoApiModel.fromJson(resultJson);

        return Result.ok(empleado);
      } else {
        return Result.error(
          HttpException('Error ${response.statusCode}: $stringData'),
        );
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

Future<Result<EmpleadoApiModel>> getEmpleadoByUsuario(int idUsuario) async {
  final client = _clientFactory();

  try {
    final request = await client.get(
      _host,
      _port,
      '/api/empleados/by-usuario/$idUsuario',
    );

    await _authHeader(request.headers);

    final response = await request.close();
    final stringData = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final Map<String, dynamic> json =
          jsonDecode(stringData) as Map<String, dynamic>;

      final Map<String, dynamic> resultJson =
          json['result'] as Map<String, dynamic>;

      final empleado = EmpleadoApiModel.fromJson(resultJson);

      return Result.ok(empleado);
    } else {
      return Result.error(
        HttpException('Error ${response.statusCode}: $stringData'),
      );
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

// corrigida
  Future<Result<EmpleadoApiModel>> getEmpleadoById(int id) async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/api/empleados/$id');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final empleado = EmpleadoApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(empleado);
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

// corrigida
  // Future<Result<EmpleadoApiModel>> postEmpleado(EmpleadoApiModel empleadoApi) async {
  //   final client = _clientFactory();
  //   try {
  //     final request = await client.post(_host, _port, '/api/empleado');
  //     await _authHeader(request.headers);
  //     request.write(jsonEncode(empleadoApi));
  //     final response = await request.close();
  //     debugPrint('RESPUESTA BACKEND: ${response.statusCode}');


  //     if (response.statusCode == 201) {
  //       final stringData = await response.transform(utf8.decoder).join();
  //       final empleado = EmpleadoApiModel.fromJson(jsonDecode(stringData));
  //       return Result.ok(empleado);
  //     } else {
  //       return const Result.error(HttpException('Invalid response'));
  //     }
  //   } on Exception catch (e) {
  //     return Result.error(e);
  //   } finally {
  //     client.close();
  //   }
  // }
// corregida
  Future<Result<EmpleadoApiModel>> updateEmpleado(EmpleadoUpdateApiModel empleadoApi) async {
    final client = _clientFactory();
    try {
          final request = await client.put(_host, _port, '/api/empleados/${empleadoApi.idEmpleado}');
          request.headers.set(HttpHeaders.contentTypeHeader, 'application/json');
          await _authHeader(request.headers);
          request.write(jsonEncode(empleadoApi.toJson()));

      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final obj = EmpleadoApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(obj);
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

// revisada
  Future<Result<void>> deleteEmpleado(int id) async {
    final client = _clientFactory();
    try {
      final request = await client.delete(_host, _port, '/api/empleados/$id');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 204) {
        return const Result.ok(null);
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
   // corregida
  Future<Result<EmpleadoApiModel>> setEmpleadoActivo(int idEmpleado, bool activo) async {
    final client = _clientFactory();
    try {
      final request = await client.put( _host, _port, '/empleado/$idEmpleado/estado',);
      await _authHeader(request.headers);
      request.write(jsonEncode({'activo': activo}));

      final response = await request.close();
    if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final obj = EmpleadoApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(obj);
      } else {
        return Result.error(
          HttpException('Error al actualizar estado del empleado'),
        );
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

  Future<Result<EmpleadoApiModel>> createEmpleado(EmpleadoCreateApiModel dto,) async {
  final client = _clientFactory();

  try {
    final request =
        await client.post(_host, _port, '/api/empleado');

    request.headers
        .set(HttpHeaders.contentTypeHeader, 'application/json');
    await _authHeader(request.headers);

    request.write(jsonEncode(dto.toJson()));

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200 || response.statusCode == 201) {
      final jsonMap = jsonDecode(body);
      final apiModel = EmpleadoApiModel.fromJson(jsonMap);
      return Result.ok(apiModel);
    }

    return Result.error(HttpException(body));
  } finally {
    client.close();
  }
}

  // ---------------- EMPRESAS ----------------
// corrigida
  Future<Result<List<EmpresaApiModel>>> getEmpresas() async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/api/empresa');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final jsonList = jsonDecode(stringData) as List<dynamic>;
        final empresas = jsonList.map((element) => EmpresaApiModel.fromJson(element)).toList();
        return Result.ok(empresas);
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
// corregida
  Future<Result<EmpresaApiModel>> getEmpresaById(int id) async {
  final client = _clientFactory();
  try {
    final request = await client.get(_host, _port, '/api/Empresa/$id');
    await _authHeader(request.headers);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final decoded = jsonDecode(body);

      // AQUÍ: el backend devuelve directamente el DTO
      final empresa = EmpresaApiModel.fromJson(decoded);

      return Result.ok(empresa);
    }

    if (response.statusCode == 404) {
      return Result.error(HttpException("Empresa no encontrada"));
    }

    return Result.error(HttpException("Error ${response.statusCode}: $body"));
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

// corregida
  Future<Result<EmpresaApiModel>> postEmpresa(EmpresaApiModel apiModel) async {
    final client = _clientFactory();
    try {
      final request = await client.post(_host, _port, '/api/empresa');
      await _authHeader(request.headers);
      request.write(jsonEncode(apiModel.toJson()));
      final response = await request.close();

      if (response.statusCode == 201) {
        final stringData = await response.transform(utf8.decoder).join();
        final obj = EmpresaApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(obj);
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
// corregida
  Future<Result<EmpresaApiModel>> updateEmpresa(EmpresaApiModel apiModel) async {
    final client = _clientFactory();
    try {
      final request =
          await client.put(_host, _port, '/api/empresa/${apiModel.idEmpresa}');
      await _authHeader(request.headers);
      request.write(jsonEncode(apiModel.toJson()));
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final obj = EmpresaApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(obj);
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

  Future<Result<void>> deleteEmpresa(int id) async {
    final client = _clientFactory();
    try {
      final request = await client.delete(_host, _port, '/api/empresa/$id');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 204) {
        return const Result.ok(null);
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

  Future<Result<EmpresaApiModel>> getEmpresaByEmpleado(int idEmpleado) async {
  final client = _clientFactory();
  try {
    final request = await client.get(_host, _port, '/api/empresa/empleado/$idEmpleado');
    await _authHeader(request.headers);

    final response = await request.close();

    if (response.statusCode == 200) {
      final stringData = await response.transform(utf8.decoder).join();
      final empresa = EmpresaApiModel.fromJson(jsonDecode(stringData));
      return Result.ok(empresa);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}


    // ---------------- FICHAJES ----------------
// corregida
  Future<Result<List<FichajeApiModel>>> getFichajes() async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/fichaje');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
         final list = json
            .map((element) => FichajeApiModel.fromJson(element))
            .toList();
        return Result.ok(list);
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
// corregida
  Future<Result<FichajeApiModel>> getFichajeById(int id) async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/fichaje/$id');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
         final ficha = FichajeApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(ficha);
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

  Future<Result<FichajeApiModel?>> getUltimoFichaje(int idEmpleado) async {
  final client = _clientFactory();

  try {
    final request = await client.get(
      _host,
      _port,
      '/api/fichaje/empleado/$idEmpleado/ultimo',
    );

    await _authHeader(request.headers);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    // NO HAY FICHAJES
    if (response.statusCode == 204 || body.isEmpty) {
      return const Result.ok(null);
    }

    if (response.statusCode == 200) {
      final decoded = jsonDecode(body);
      return Result.ok(FichajeApiModel.fromJson(decoded));
    }

    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

// corregida
Future<Result<FichajeApiModel>> createFichaje(
  FichajeApiModel dto,
) async {
  final client = _clientFactory();

  try {
    final request =
        await client.post(_host, _port, '/api/fichaje');

    request.headers.set(HttpHeaders.contentTypeHeader, 'application/json');
    await _authHeader(request.headers);

    final jsonBody = jsonEncode(dto.toJson());

    request.write(jsonBody);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200 || response.statusCode == 201) {
      final jsonMap = jsonDecode(body);
      final apiModel = FichajeApiModel.fromJson(jsonMap);
      return Result.ok(apiModel);
    }

    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } catch (e) {
    return Result.error(Exception(e));
  } finally {
    client.close();
  }
}
// corregida
  Future<Result<FichajeApiModel>> updateFichaje(FichajeApiModel apiModel) async {
    final client = _clientFactory();
    try {
      final request = await client.put(_host, _port, '/fichaje/${apiModel.idFichaje}');
      await _authHeader(request.headers);
      request.write(jsonEncode(apiModel.toJson()));
      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final obj = FichajeApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(obj);
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

  Future<Result<void>> deleteFichaje(int id) async {
    final client = _clientFactory();
    try {
      final request = await client.delete(_host, _port, '/fichaje/$id');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 204) {
        return const Result.ok(null);
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
// corregida
Future<Result<List<FichajesEmpleadoApiModel>>> getFichajesByEmpleado(int idEmpleado) async {
  final client = _clientFactory();
  try {
    final request = await client.get(_host, _port, '/fichaje/empleado/$idEmpleado');
    await _authHeader(request.headers);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(body) as List<dynamic>;
      final list = jsonList.map((e) => FichajesEmpleadoApiModel.fromJson(e)).toList();
      return Result.ok(list);
    }

    if (response.statusCode == 204) {
      return Result.ok([]); // sin datos
    }

    return Result.error(HttpException('Error ${response.statusCode}: $body'));
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<List<FichajesEmpleadoApiModel>>> getFichajesHoyAgrupados() async {
  final client = _clientFactory();
  try {
    final request = await client.get(_host, _port, '/api/Fichaje/hoy/agrupados');
    await _authHeader(request.headers);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(body) as List<dynamic>;
      final list = jsonList.map((e) => FichajesEmpleadoApiModel.fromJson(e)).toList();
      return Result.ok(list);
    }

    if (response.statusCode == 204) {
      // Lista vacía si no hay fichajes
      return Result.ok([]);
    }

    // Para cualquier otro código HTTP
    return Result.error(HttpException('Error ${response.statusCode}: $body'));
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}
Future<Result<List<FichajesPorDiaApiModel>>> getFichajesFiltrados({
  String? nombre,
  String? apellidos,
  DateTime? fecha,
}) async {
  final client = _clientFactory();

  try {
    final queryParams = <String, String>{};

    String clean(String? value) => value?.trim() ?? '';

    final nombreClean = clean(nombre);
    final apellidosClean = clean(apellidos);

    if (nombreClean.isNotEmpty) {
      queryParams['nombre'] = nombreClean;
    }

    if (apellidosClean.isNotEmpty) {
      queryParams['apellidos'] = apellidosClean;
    }

    if (fecha != null) {
      final f = fecha.toLocal(); 
      queryParams['fecha'] =
          "${f.year.toString().padLeft(4, '0')}-"
          "${f.month.toString().padLeft(2, '0')}-"
          "${f.day.toString().padLeft(2, '0')}";
    }

    final uri = Uri.http(
      '$_host:$_port',
      '/api/Fichaje/buscar/agrupados-por-dia', 
      queryParams.isEmpty ? null : queryParams,
    );

    debugPrint('REQUEST URL: $uri');

    final request = await client.getUrl(uri);
    await _authHeader(request.headers);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    debugPrint(' STATUS CODE: ${response.statusCode}');
    debugPrint(' RAW BODY: $body');

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(body) as List<dynamic>;

      final list = jsonList
          .map((e) => FichajesPorDiaApiModel.fromJson(e))
          .toList();

      return Result.ok(list);
    }

    if (response.statusCode == 204) {
      return Result.ok([]);
    }

    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } catch (e) {
    return Result.error(Exception('Error en getFichajesFiltrados: $e'));
  } finally {
    client.close();
  }
}

Future<Result<List<FichajeApiModel>>> getFichajesHoyPorEmpleado(int idEmpleado) async {
  final client = _clientFactory();

  try {
    final request = await client.get(
      _host,
      _port,
      '/api/Fichaje/hoy/empleado/$idEmpleado',
    );

    // Cabecera auth
    await _authHeader(request.headers);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    debugPrint(' Status code (hoyEmpleado): ${response.statusCode}');
    debugPrint(' Body (hoyEmpleado): $body');

    // OK
    if (response.statusCode == 200) {
      final jsonList = jsonDecode(body) as List<dynamic>;

      final list = jsonList
          .map((e) => FichajeApiModel.fromJson(e))
          .toList();

      return Result.ok(list);
    }

    //Sin contenido (normal)
    if (response.statusCode == 204) {
      return Result.ok([]);
    }

    // Error
    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } on Exception catch (e, stack) {
    debugPrint(' Error en getFichajesHoyPorEmpleado: $e');
    debugPrintStack(stackTrace: stack);
    return Result.error(e);
  } finally {
    client.close();
  }
}


  // ---------------- NOTIFICACIONES ----------------
// corregida
  Future<Result<List<NotificacionApiModel>>> getNotificaciones() async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/notificacion');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
        final notificaciones = json
            .map((element) => NotificacionApiModel.fromJson(element))
            .toList();
        return Result.ok(notificaciones);
        
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

// corregida
  Future<Result<NotificacionApiModel>> getNotificacionById(int id) async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/notificacion/$id');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
         final notificacion = NotificacionApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(notificacion);
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }


// corregida
  Future<Result<NotificacionApiModel>> postNotificacion(NotificacionApiModel apiModel) async {
    final client = _clientFactory();
    try {
      final request = await client.post(_host, _port, '/notificacion');
      await _authHeader(request.headers);
      request.write(jsonEncode(apiModel.toJson()));
      final response = await request.close();

      if (response.statusCode == 201) {
        final stringData = await response.transform(utf8.decoder).join();
        final obj = NotificacionApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(obj);
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
// corregida
  Future<Result<NotificacionApiModel>> updateNotificacion(NotificacionApiModel apiModel) async {
    final client = _clientFactory();
    try {
      final request = await client.put(_host, _port, '/notificacion/${apiModel.idNotificacion}');
      await _authHeader(request.headers);
      request.write(jsonEncode(apiModel.toJson()));
      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final obj = NotificacionApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(obj);
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

  Future<Result<void>> deleteNotificacion(int id) async {
    final client = _clientFactory();
    try {
      final request = await client.delete(_host, _port, '/notificacion/$id');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 204) {
        return const Result.ok(null);
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }
// corrigida
  Future<Result<List<NotificacionApiModel>>> getNotificacionesByUsuario(int idUsuario) async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/notificacion/usuario/$idUsuario');
      await _authHeader(request.headers);
      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
         final notificaciones = json
            .map((element) => NotificacionApiModel.fromJson(element))
            .toList();
        return Result.ok(notificaciones);
        
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

  // ---------------- REGLA TURNO ----------------
// corregida
Future<Result<List<ReglaTurnoApiModel>>> getReglasTurno() async {
  final client = _clientFactory();
  try {
    final request = await client.get(_host, _port, '/regla-turno');
    await _authHeader(request.headers);
    final response = await request.close();

    if (response.statusCode == 200) {
      final stringData = await response.transform(utf8.decoder).join();
      final json = jsonDecode(stringData) as List<dynamic>;
      final reglas = json
            .map((element) => ReglaTurnoApiModel.fromJson(element))
            .toList();
        return Result.ok(reglas);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}
// corregida
Future<Result<ReglaTurnoApiModel>> getReglaTurnoById(int id) async {
  final client = _clientFactory();
  try {
    final request = await client.get(_host, _port, '/regla-turno/$id');
    await _authHeader(request.headers);
    final response = await request.close();

    if (response.statusCode == 200) {
      final stringData = await response.transform(utf8.decoder).join();
       final regla = ReglaTurnoApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(regla);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}
// corregida
Future<Result<ReglaTurnoApiModel>> postReglaTurno(ReglaTurnoApiModel apiModel) async {
  final client = _clientFactory();
  try {
    final request = await client.post(_host, _port, '/regla-turno');
    await _authHeader(request.headers);
    request.write(jsonEncode(apiModel.toJson()));
    final response = await request.close();

    if (response.statusCode == 201) {
      final stringData = await response.transform(utf8.decoder).join();
      final obj = ReglaTurnoApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(obj);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}
// corregida
Future<Result<ReglaTurnoApiModel>> updateReglaTurno(ReglaTurnoApiModel apiModel) async {
  final client = _clientFactory();
  try {
    final request = await client.put(_host, _port, '/regla-turno/${apiModel.idRegla}');
    await _authHeader(request.headers);
    request.write(jsonEncode(apiModel.toJson()));
    final response = await request.close();

    if (response.statusCode == 200) {
      final stringData = await response.transform(utf8.decoder).join();
      final obj = ReglaTurnoApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(obj);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<void>> deleteReglaTurno(int id) async {
  final client = _clientFactory();
  try {
    final request = await client.delete(_host, _port, '/regla-turno/$id');
    await _authHeader(request.headers);
    final response = await request.close();

    if (response.statusCode == 204) {
      return const Result.ok(null);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}
// corregida
Future<Result<List<ReglaTurnoApiModel>>> getReglasByTipo(String tipo) async {
  final client = _clientFactory();
  try {
    final request = await client.get(_host, _port, '/regla-turno/tipo/$tipo');
    await _authHeader(request.headers);
    final response = await request.close();

    if (response.statusCode == 200) {
      final stringData = await response.transform(utf8.decoder).join();
      final json = jsonDecode(stringData) as List<dynamic>;
      final reglas = json
            .map((element) => ReglaTurnoApiModel.fromJson(element))
            .toList();
        return Result.ok(reglas);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

// ---------------- REPORTE ----------------
// corregida
Future<Result<List<ReporteApiModel>>> getReportes() async {
  final client = _clientFactory();
  try {
    final request = await client.get(_host, _port, '/reporte');
    await _authHeader(request.headers);
    final response = await request.close();

    if (response.statusCode == 200) {
      final stringData = await response.transform(utf8.decoder).join();
      final json = jsonDecode(stringData) as List<dynamic>;
       final reportes = json
            .map((element) => ReporteApiModel.fromJson(element))
            .toList();
        return Result.ok(reportes);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}
// corrigida
Future<Result<ReporteApiModel>> getReporteById(int id) async {
  final client = _clientFactory();
  try {
    final request = await client.get(_host, _port, '/reporte/$id');
    await _authHeader(request.headers);
    final response = await request.close();

    if (response.statusCode == 200) {
      final stringData = await response.transform(utf8.decoder).join();
       final reporte = ReporteApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(reporte);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}
// corregida
Future<Result<ReporteApiModel>> postReporte(ReporteApiModel apiModel) async {
  final client = _clientFactory();
  try {
    final request = await client.post(_host, _port, '/reporte');
    await _authHeader(request.headers);
    request.write(jsonEncode(apiModel.toJson()));
    final response = await request.close();

    if (response.statusCode == 201) {
      final stringData = await response.transform(utf8.decoder).join();
      final obj = ReporteApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(obj);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}
// corregida
Future<Result<ReporteApiModel>> updateReporte(ReporteApiModel apiModel) async {
  final client = _clientFactory();
  try {
    final request = await client.put(_host, _port, '/reporte/${apiModel.idReporte}');
    await _authHeader(request.headers);
    request.write(jsonEncode(apiModel.toJson()));
    final response = await request.close();

    if (response.statusCode == 200) {
      final stringData = await response.transform(utf8.decoder).join();
      final obj = ReporteApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(obj);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<void>> deleteReporte(int id) async {
  final client = _clientFactory();
  try {
    final request = await client.delete(_host, _port, '/reporte/$id');
    await _authHeader(request.headers);
    final response = await request.close();

    if (response.statusCode == 204) {
      return const Result.ok(null);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}
// corregida
Future<Result<List<ReporteApiModel>>> getReportesByTipo(String tipo) async {
  final client = _clientFactory();
  try {
    final request = await client.get(_host, _port, '/reporte/tipo/$tipo');
    await _authHeader(request.headers);
    final response = await request.close();

    if (response.statusCode == 200) {
      final stringData = await response.transform(utf8.decoder).join();
      final json = jsonDecode(stringData) as List<dynamic>;
       final reportes = json
            .map((element) => ReporteApiModel.fromJson(element))
            .toList();
        return Result.ok(reportes);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

// ---------------- SEDE ----------------
// corregida
// Future<Result<SedeApiModel>> createSede(
//   SedeCreateApiModel dto,
// ) async {
//   final client = _clientFactory();

//   try {
//     final request =
//         await client.post(_host, _port, '/api/sede');

//     request.headers
//         .set(HttpHeaders.contentTypeHeader, 'application/json');
//     await _authHeader(request.headers);

//     request.write(jsonEncode(dto.toJson()));

//     final response = await request.close();
//     final body = await response.transform(utf8.decoder).join();
//     debugPrint('API RESPONSE $body');

//     if (response.statusCode == 200 || response.statusCode == 201) {
//       final jsonMap = jsonDecode(body);
//       final apiModel = SedeApiModel.fromJson(jsonMap);
//       return Result.ok(apiModel);
//     }

//     return Result.error(HttpException(body));
//   } finally {
//     client.close();
//   }
// }

Future<Result<SedeApiModel>> createSede(SedeCreateApiModel dto,) async {
  final client = _clientFactory();

  try {
    final request =
        await client.post(_host, _port, '/api/sede');

    request.headers
        .set(HttpHeaders.contentTypeHeader, 'application/json');
    await _authHeader(request.headers);

    request.write(jsonEncode(dto.toJson()));

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200 || response.statusCode == 201) {
      final jsonMap = jsonDecode(body);
      final apiModel = SedeApiModel.fromJson(jsonMap);
      return Result.ok(apiModel);
    }

    return Result.error(HttpException(body));
  } finally {
    client.close();
  }
}



Future<Result<List<SedeApiModel>>> getSedes() async {
  final client = _clientFactory();

  try {
    final request = await client.get(
      _host,
      _port,
      '/api/sede',
    );

    await _authHeader(request.headers);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final decoded = jsonDecode(body);

      final list = (decoded as List)
          .map((e) => SedeApiModel.fromJson(e))
          .toList();

      return Result.ok(list);
    }

    return Result.error(HttpException('Error ${response.statusCode}: $body'));
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<SedeApiModel>> getSedeById(int id) async {
  final client = _clientFactory();

  try {
    final request = await client.get(_host, _port, '/api/sede/$id',);
    await _authHeader(request.headers);
    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final decoded = jsonDecode(body);
      return Result.ok(SedeApiModel.fromJson(decoded));
    }

    return Result.error(HttpException('Error ${response.statusCode}: $body'));
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}


Future<Result<SedeApiModel?>> updateSede(
  SedeUpdateApiModel sedeApi,
) async {
  final client = _clientFactory();

  try {
    if (sedeApi.idSede == 0) {
      return Result.error(
        Exception('El sedes debe tener idSede para actualizar'),
      );
    }

    final request = await client.put(
      _host,
      _port,
      '/api/sede/${sedeApi.idSede}',
    );

    request.headers.set(
      HttpHeaders.contentTypeHeader,
      'application/json',
    );

    await _authHeader(request.headers);

    request.write(jsonEncode(sedeApi.toJson()));

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      if (body.isEmpty) return Result.ok(null);

      final decoded = jsonDecode(body);
      return Result.ok(SedeApiModel.fromJson(decoded));
    }

    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}



Future<Result<void>> deleteSede(int id) async {
  final client = _clientFactory();

  try {
    final request = await client.delete(_host, _port, '/api/sede/$id',);

    await _authHeader(request.headers);
    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200 || response.statusCode == 204) {
      return Result.ok(null);
    }

    return Result.error(HttpException('Error ${response.statusCode}: $body'));
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}



// ---------------- SOLICITUD AUSENCIA ----------------
// corregida
Future<Result<List<SolicitudAusenciaApiModel>>> getSolicitudesAusencia() async {
  final client = _clientFactory();
  try {
    final request = await client.get(_host, _port, '/solicitud_ausencia');
    await _authHeader(request.headers);
    final response = await request.close();

    if (response.statusCode == 200) {
      final stringData = await response.transform(utf8.decoder).join();
      final json = jsonDecode(stringData) as List<dynamic>;
       final ausencias = json
            .map((element) => SolicitudAusenciaApiModel.fromJson(element))
            .toList();
        return Result.ok(ausencias);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}
// corrigida
Future<Result<SolicitudAusenciaApiModel>> getSolicitudAusenciaById(int id) async {
  final client = _clientFactory();
  try {
    final request = await client.get(_host, _port, '/solicitud_ausencia/$id');
    await _authHeader(request.headers);
    final response = await request.close();

    if (response.statusCode == 200) {
      final stringData = await response.transform(utf8.decoder).join();
       final ausencia = SolicitudAusenciaApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(ausencia);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}
// corregida
Future<Result<SolicitudAusenciaApiModel>> postSolicitudAusencia(SolicitudAusenciaApiModel apiModel) async {
  final client = _clientFactory();
  try {
    final request = await client.post(_host, _port, '/solicitud_ausencia');
    await _authHeader(request.headers);
    request.write(jsonEncode(apiModel.toJson()));
    final response = await request.close();

    if (response.statusCode == 201) {
      final stringData = await response.transform(utf8.decoder).join();
     final obj = SolicitudAusenciaApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(obj);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}
// corregida
Future<Result<SolicitudAusenciaApiModel>> updateSolicitudAusencia(SolicitudAusenciaApiModel apiModel) async {
  final client = _clientFactory();
  try {
    final request = await client.put(_host, _port, '/solicitud_ausencia/${apiModel.idSolicitud}');
    await _authHeader(request.headers);
    request.write(jsonEncode(apiModel.toJson()));
    final response = await request.close();

    if (response.statusCode == 200) {
      final stringData = await response.transform(utf8.decoder).join();
      final obj = SolicitudAusenciaApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(obj);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<void>> deleteSolicitudAusencia(int id) async {
  final client = _clientFactory();
  try {
    final request = await client.delete(_host, _port, '/solicitud_ausencia/$id');
    await _authHeader(request.headers);
    final response = await request.close();

    if (response.statusCode == 204) {
      return const Result.ok(null);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}
// corregida
Future<Result<List<SolicitudAusenciaApiModel>>> getSolicitudesByEmpleado(int idEmpleado) async {
  final client = _clientFactory();
  try {
    final request = await client.get(_host, _port, '/solicitud_ausencia/empleado/$idEmpleado');
    await _authHeader(request.headers);
    final response = await request.close();

    if (response.statusCode == 200) {
      final stringData = await response.transform(utf8.decoder).join();
      final json = jsonDecode(stringData) as List<dynamic>;
       final ausencias = json
            .map((element) => SolicitudAusenciaApiModel.fromJson(element))
            .toList();
        return Result.ok(ausencias);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

// ---------------- TURNOS ----------------
// corregida
Future<Result<TurnoApiModel>> createTurno(
  TurnoCreateApiModel dto,
) async {
  final client = _clientFactory();

  try {
    final request =
        await client.post(_host, _port, '/api/turno');

    request.headers
        .set(HttpHeaders.contentTypeHeader, 'application/json');
    await _authHeader(request.headers);

    request.write(jsonEncode(dto.toJson()));

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200 || response.statusCode == 201) {
      final jsonMap = jsonDecode(body);
      final apiModel = TurnoApiModel.fromJson(jsonMap);
      return Result.ok(apiModel);
    }

    return Result.error(HttpException(body));
  } finally {
    client.close();
  }
}



Future<Result<List<TurnoApiModel>>> getTurnos() async {
  final client = _clientFactory();

  try {
    final request = await client.get(
      _host,
      _port,
      '/api/turno/con-sede',
    );

    await _authHeader(request.headers);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final decoded = jsonDecode(body);

      final list = (decoded as List)
          .map((e) => TurnoApiModel.fromJson(e))
          .toList();

      return Result.ok(list);
    }

    return Result.error(HttpException('Error ${response.statusCode}: $body'));
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<TurnoApiModel>> getTurnoById(int id) async {
  final client = _clientFactory();

  try {
    final request = await client.get(_host, _port, '/api/turno/$id',);
    await _authHeader(request.headers);
    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final decoded = jsonDecode(body);
      return Result.ok(TurnoApiModel.fromJson(decoded));
    }

    return Result.error(HttpException('Error ${response.statusCode}: $body'));
  } on Exception catch (e) {
 
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<TurnoApiModel?>> updateTurno(
  TurnoUpdateApiModel turnoApi,
) async {
  final client = _clientFactory();

  try {
    if (turnoApi.idTurno == 0) {
      return Result.error(
        Exception('El turno debe tener idTurno para actualizar'),
      );
    }

    final request = await client.put(
      _host,
      _port,
      '/api/turno/${turnoApi.idTurno}',
    );

    request.headers.set(
      HttpHeaders.contentTypeHeader,
      'application/json',
    );

    await _authHeader(request.headers);

    request.write(jsonEncode(turnoApi.toJson()));

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      if (body.isEmpty) return Result.ok(null);

      final decoded = jsonDecode(body);
      return Result.ok(TurnoApiModel.fromJson(decoded));
    }

    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}



Future<Result<void>> deleteTurno(int id) async {
  final client = _clientFactory();

  try {
    final request = await client.delete(_host, _port, '/api/turno/$id',);

    await _authHeader(request.headers);
    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200 || response.statusCode == 204) {
      return Result.ok(null);
    }

    return Result.error(HttpException('Error ${response.statusCode}: $body'));
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}
// corregida
Future<Result<List<TurnoApiModel>>> getTurnosBySede(int idSede) async {
  final client = _clientFactory();
  try {
    final request = await client.get(_host, _port, '/turno/sede/$idSede');
    await _authHeader(request.headers);
    final response = await request.close();

    if (response.statusCode == 200) {
      final stringData = await response.transform(utf8.decoder).join();
      final json = jsonDecode(stringData) as List<dynamic>;
       final turnos = json
            .map((element) => TurnoApiModel.fromJson(element))
            .toList();
        return Result.ok(turnos);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

// ---------------- USUARIOS ----------------
// corregida
Future<Result<UserApiModel?>> createUsuario(UserApiModel userApi) async {
  final client = _clientFactory();

  try {
    final request = await client.post(_host, _port, '/api/usuarios/crear',);
    request.headers.set( HttpHeaders.contentTypeHeader, 'application/json',);
    await _authHeader(request.headers);
    request.write(jsonEncode(userApi.toJson()));
    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();
    if (response.statusCode == 200 || response.statusCode == 201) {
      if (body.isEmpty) {
        return Result.ok(null);
      }
      final decoded = jsonDecode(body);
      if (decoded is Map && decoded.containsKey('userId')) {
        return Result.ok(null);
      }
      return Result.ok(UserApiModel.fromJson(decoded));
    }
    return Result.error(
      HttpException(
        'Error ${response.statusCode}: $body',
      ),
    );
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}


// corregida
Future<Result<void>> updateUsuario(UserApiModel userApi) async {
  final client = _clientFactory();
  try {
    final request = await client.put(_host, _port, '/usuarios/${userApi.id}');
    await _authHeader(request.headers);
    request.write(jsonEncode(userApi.toJson()));

    final response = await request.close();

    if (response.statusCode == 200) {
      return const Result.ok(null); // éxito, no devuelve datos
    } else {
      return const Result.error(HttpException('Error al actualizar usuario'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

// corregida
Future<Result<void>> setUsuarioActivo(int idUsuario, bool activo) async {
  final client = _clientFactory();
  try {
    final request = await client.put( _host, _port, '/usuarios/$idUsuario/estado',);
    await _authHeader(request.headers);
    request.write(jsonEncode({'activo': activo}));
    final response = await request.close();
    if (response.statusCode == 200) {
      return const Result.ok(null); 
    } else {
      return Result.error(
        HttpException('Error al actualizar estado del usuario: ${response.statusCode}'),
      );
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

// corrigida
Future<Result<List<UserApiModel>>> getUsuarios() async {
  final client = _clientFactory();
  try {
    final request = await client.get(_host, _port, '/usuarios'); 
    await _authHeader(request.headers);
    final response = await request.close();

    if (response.statusCode == 200) {
      final stringData = await response.transform(utf8.decoder).join();
      final json = jsonDecode(stringData) as List<dynamic>;
      final users = json
            .map((element) => UserApiModel.fromJson(element))
            .toList();
      return Result.ok(users);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}
// corrigida
Future<Result<UserApiModel>> getUsuarioById(int id) async {
  final client = _clientFactory();
  try {
    final request = await client.get(_host, _port, '/usuarios/$id');
    await _authHeader(request.headers);
    final response = await request.close();

    if (response.statusCode == 200) {
      final stringData = await response.transform(utf8.decoder).join();
      final user = UserApiModel.fromJson(jsonDecode(stringData));
      return Result.ok(user);
    } else {
      return const Result.error(HttpException('Invalid response'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<UserApiModel>> getUsuarioByEmail(String email) async {
  final client = _clientFactory();

  try {

    final request = await client.get(
      _host,
      _port,
      '/api/usuarios/by-email/$email',
    );

    await _authHeader(request.headers);

    final response = await request.close();

    final stringData = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final Map<String, dynamic> json =
          jsonDecode(stringData) as Map<String, dynamic>;

      final Map<String, dynamic> resultJson =
          json['result'] as Map<String, dynamic>;

      final user = UserApiModel.fromJson(resultJson);

      return Result.ok(user);
    } else {
      return Result.error(
        HttpException('Error ${response.statusCode}: $stringData'),
      );
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}



Future<Result<void>> deleteUsuario(int id) async {
  final client = _clientFactory();
  try {
    final request = await client.delete(_host, _port, '/usuarios/$id');
    await _authHeader(request.headers);
    final response = await request.close();

    if (response.statusCode == 204) {
      return const Result.ok(null);
    } else {
      return const Result.error(HttpException('Error al eliminar el usuario'));
    }
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

    Future<Result<void>> asignarRolUsuario(int idUsuario, String rol) async {
      final client = _clientFactory();
      try {
        final request = await client.put( _host, _port, '/usuarios/$idUsuario/rol',);
        await _authHeader(request.headers);
        request.write(jsonEncode({'rol': rol,}));
        final response = await request.close();
        if (response.statusCode == 200) {
          return const Result.ok(null); 
        } else {
          return Result.error(
            HttpException("Error asignando rol: ${response.statusCode}"),
          );
        }
      }  on Exception catch (e) {
        return Result.error(e);
      } finally {
        client.close();
      }
    }

// --------------------DEPARTAMENTO-----------------------
// Future<Result<DepartamentoApiModel>> createDepartamento(
//   DepartamentoCreateApiModel dto,
// ) async {
//   final client = _clientFactory();

//   try {
//     final request =
//         await client.post(_host, _port, '/api/departamento');

//     request.headers
//         .set(HttpHeaders.contentTypeHeader, 'application/json');
//     await _authHeader(request.headers);

//     request.write(jsonEncode(dto.toJson()));

//     final response = await request.close();
//     final body = await response.transform(utf8.decoder).join();
//     debugPrint('API RESPONSE $body');

//     if (response.statusCode == 200 || response.statusCode == 201) {
//       final jsonMap = jsonDecode(body);
//       final apiModel = DepartamentoApiModel.fromJson(jsonMap);
//       return Result.ok(apiModel);
//     }

//     return Result.error(HttpException(body));
//   } finally {
//     client.close();
//   }
// }

Future<Result<DepartamentoApiModel>> createDepartamento(DepartamentoCreateApiModel dto,) async {
  final client = _clientFactory();

  try {
    final request =
        await client.post(_host, _port, '/api/departamento');

    request.headers
        .set(HttpHeaders.contentTypeHeader, 'application/json');
    await _authHeader(request.headers);

    request.write(jsonEncode(dto.toJson()));

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200 || response.statusCode == 201) {
      final jsonMap = jsonDecode(body);
      final apiModel = DepartamentoApiModel.fromJson(jsonMap);
      return Result.ok(apiModel);
    }

    return Result.error(HttpException(body));
  } finally {
    client.close();
  }
}


Future<Result<List<DepartamentoApiModel>>> getDepartamentos() async {
  final client = _clientFactory();

  try {
    final request = await client.get(
      _host,
      _port,
      '/api/departamento',
    );

    await _authHeader(request.headers);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final decoded = jsonDecode(body);

      final list = (decoded as List)
          .map((e) => DepartamentoApiModel.fromJson(e))
          .toList();

      return Result.ok(list);
    }

    return Result.error(HttpException('Error ${response.statusCode}: $body'));
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<DepartamentoApiModel>> getDepartamentoById(int id) async {
  final client = _clientFactory();

  try {
    final request = await client.get(_host, _port, '/api/departamento/$id',);
    await _authHeader(request.headers);
    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final decoded = jsonDecode(body);
      return Result.ok(DepartamentoApiModel.fromJson(decoded));
    }

    return Result.error(HttpException('Error ${response.statusCode}: $body'));
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<DepartamentoApiModel>> getDepartamentoByNombre(
  int idEmpresa,
  String nombre,
) async {
  final client = _clientFactory();

  try {
    final encodedNombre = Uri.encodeComponent(nombre);

    final request = await client.get(
      _host,
      _port,
      '/api/departamento/by-nombre/$idEmpresa/$encodedNombre',
    );

    await _authHeader(request.headers);
    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final decoded = jsonDecode(body);
      return Result.ok(DepartamentoApiModel.fromJson(decoded));
    }

    return Result.error(HttpException('Error ${response.statusCode}: $body'));
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}



Future<Result<DepartamentoApiModel?>> updateDepartamento(
  DepartamentoUpdateApiModel departamentoApi,
) async {
  final client = _clientFactory();

  try {
    if (departamentoApi.idDepartamento == 0) {
      return Result.error(
        Exception('El departamento debe tener idDepartamento para actualizar'),
      );
    }

    final request = await client.put(
      _host,
      _port,
      '/api/departamento/${departamentoApi.idDepartamento}',
    );

    request.headers.set(
      HttpHeaders.contentTypeHeader,
      'application/json',
    );

    await _authHeader(request.headers);

    request.write(jsonEncode(departamentoApi.toJson()));

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      if (body.isEmpty) return Result.ok(null);

      final decoded = jsonDecode(body);
      return Result.ok(DepartamentoApiModel.fromJson(decoded));
    }

    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}



Future<Result<void>> deleteDepartamento(int id) async {
  final client = _clientFactory();

  try {
    final request = await client.delete(_host, _port, '/api/departamento/$id',);

    await _authHeader(request.headers);
    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200 || response.statusCode == 204) {
      return Result.ok(null);
    }

    return Result.error(HttpException('Error ${response.statusCode}: $body'));
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}


// ------------------Responsable Empleado---------------------


Future<Result<ResponsableEmpleadoApiModel>> getResponsableEmpleadoById(int id) async {
  final client = _clientFactory();

  try {
    final request = await client.get(_host, _port, '/api/ResponsableEmpleado/$id',);

    await _authHeader(request.headers);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final decoded = jsonDecode(body);
      return Result.ok(ResponsableEmpleadoApiModel.fromJson(decoded));
    }

    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}


Future<Result<ResponsableEmpleadoApiModel?>> createResponsableEmpleado(
  ResponsableEmpleadoApiModel responsableEmpleadoApi,
) async {
  final client = _clientFactory();

  try {
    final request = await client.post(
      _host,
      _port,
      '/api/responsableEmpleado',
    );

    request.headers.set(
      HttpHeaders.contentTypeHeader,
      'application/json',
    );

    await _authHeader(request.headers);

    request.write(jsonEncode(responsableEmpleadoApi.toJson()));

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200 || response.statusCode == 201) {
      if (body.isEmpty) return Result.ok(null);

      final decoded = jsonDecode(body);
      return Result.ok(
        ResponsableEmpleadoApiModel.fromJson(decoded),
      );
    }

    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<List<ResponsableEmpleadoApiModel>>>
    getResponsablesEmpleado() async {
  final client = _clientFactory();

  try {
    final request = await client.get(
      _host,
      _port,
      '/api/responsableEmpleado',
    );

    await _authHeader(request.headers);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final decoded = jsonDecode(body) as List;

      return Result.ok(
        decoded
            .map((e) => ResponsableEmpleadoApiModel.fromJson(e))
            .toList(),
      );
    }

    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<ResponsableEmpleadoApiModel?>> updateResponsableEmpleado(
  ResponsableEmpleadoApiModel responsableEmpleadoApi,
) async {
  final client = _clientFactory();

  try {
if (responsableEmpleadoApi.idResponsableEmpleado == 0) {
  return Result.error(
    Exception('ID inválido'),
  );
}

    final request = await client.put(
      _host,
      _port,
      '/api/responsableEmpleado/${responsableEmpleadoApi.idResponsableEmpleado}',
    );

    request.headers.set(
      HttpHeaders.contentTypeHeader,
      'application/json',
    );

    await _authHeader(request.headers);

    request.write(jsonEncode(responsableEmpleadoApi.toJson()));

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      if (body.isEmpty) return Result.ok(null);

      final decoded = jsonDecode(body);
      return Result.ok(
        ResponsableEmpleadoApiModel.fromJson(decoded),
      );
    }

    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<void>> deleteResponsableEmpleado(int id) async {
  final client = _clientFactory();

  try {
    final request = await client.delete(
      _host,
      _port,
      '/api/responsableEmpleado/$id',
    );

    await _authHeader(request.headers);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200 || response.statusCode == 204) {
      return Result.ok(null);
    }

    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } on Exception catch (e) {

    return Result.error(e);
  } finally {
    client.close();
  }
}


// -------------------------Responsable-------------------

Future<Result<ResponsableApiModel>> getResponsableById(int id) async {
  final client = _clientFactory();

  try {
    final request = await client.get(_host, _port, '/api/responsable/$id',);

    await _authHeader(request.headers);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final decoded = jsonDecode(body);
      return Result.ok(ResponsableApiModel.fromJson(decoded));
    }

    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}


Future<Result<ResponsableApiModel?>> createResponsable(
  ResponsableApiModel responsableApi,
) async {
  final client = _clientFactory();

  try {
    final request =
        await client.post(_host, _port, '/api/responsable');

    request.headers.set(
      HttpHeaders.contentTypeHeader,
      'application/json',
    );

    await _authHeader(request.headers);

    request.write(jsonEncode(responsableApi.toJson()));

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200 || response.statusCode == 201) {
      if (body.isEmpty) return Result.ok(null);

      final decoded = jsonDecode(body);
      return Result.ok(ResponsableApiModel.fromJson(decoded));
    }

    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<List<ResponsableApiModel>>> getResponsables() async {
  final client = _clientFactory();

  try {
    final request =
        await client.get(_host, _port, '/api/responsable');

    await _authHeader(request.headers);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final decoded = jsonDecode(body) as List;

      return Result.ok(
        decoded
            .map((e) => ResponsableApiModel.fromJson(e))
            .toList(),
      );
    }

    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<ResponsableApiModel?>> updateResponsable(
  ResponsableApiModel responsableApi,
) async {
  final client = _clientFactory();

  try {
    if (responsableApi.idResponsable == 0) {
      return Result.error(
        ArgumentError(
          'El responsable debe tener idResponsable para actualizar',
        ) as Exception,
      );
    }

    final request = await client.put(
      _host,
      _port,
      '/api/responsable/${responsableApi.idResponsable}',
    );

    request.headers.set(
      HttpHeaders.contentTypeHeader,
      'application/json',
    );

    await _authHeader(request.headers);

    request.write(jsonEncode(responsableApi.toJson()));

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      if (body.isEmpty) return Result.ok(null);

      final decoded = jsonDecode(body);
      return Result.ok(ResponsableApiModel.fromJson(decoded));
    }

    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}

Future<Result<void>> deleteResponsable(int id) async {
  final client = _clientFactory();

  try {
    final request =
        await client.delete(_host, _port, '/api/responsable/$id');

    await _authHeader(request.headers);

    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200 || response.statusCode == 204) {
      return Result.ok(null);
    }

    return Result.error(
      HttpException('Error ${response.statusCode}: $body'),
    );
  } on Exception catch (e) {
    return Result.error(e);
  } finally {
    client.close();
  }
}



}

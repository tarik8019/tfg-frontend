class Validator {
  // EMAIL
  static bool isValidEmail(String email) {
    final cleaned = email.trim();
    final regex = RegExp(r'^[\w\.-]+@[\w\.-]+\.\w+$');
    return regex.hasMatch(cleaned);
  }

  // TELÉFONO
  static bool isValidTelefono(String telefono) {
    final cleaned = telefono.trim();
    final regex = RegExp(r'^[0-9]{9}$');
    return regex.hasMatch(cleaned);
  }

  // CÓDIGO POSTAL
  static bool isValidCodigoPostal(String cp) {
    final cleaned = cp.trim();
    final regex = RegExp(r'^[0-9]{5}$');
    return regex.hasMatch(cleaned);
  }

  // CÓDIGO EMPLEADO
  static bool isValidCodigoEntity(String codigo) {
    final cleaned = codigo.trim();
    final regex = RegExp(r'^[A-Z0-9]{5,12}$');
    return regex.hasMatch(cleaned);
  }

  // DNI / NIE
  static bool isValidDniNie(String dni) {
    final cleaned = dni.trim();
    final regexDni = RegExp(r'^[0-9]{8}[A-Za-z]$');
    final regexNie = RegExp(r'^[XYZxyz][0-9]{7}[A-Za-z]$');
    return regexDni.hasMatch(cleaned) || regexNie.hasMatch(cleaned);
  }


  /// Valida si la latitud está dentro del rango permitido por el sistema GPS.
  /// Rango válido: -90.0 a 90.0
  static bool isValidLatitud(double lat) {
    return lat >= -90.0 && lat <= 90.0;
  }

  /// Valida si la longitud está dentro del rango permitido por el sistema GPS.
  /// Rango válido: -180.0 a 180.0
  static bool isValidLongitud(double lng) {
    return lng >= -180.0 && lng <= 180.0;
  }

  /// Valida si el radio es un valor positivo y razonable.
  /// Reglas:
  /// - Debe ser mayor que 0
  /// - Máximo recomendado: 10000 metros (10 km)
  static bool isValidRadio(int radio) {
    return radio > 0 && radio <= 10000;
  }

  /// Valida que la hora tenga el formato HH:mm (00:00 a 23:59)
  static bool isValidHora(String hora) {
    final cleaned = hora.trim();
    final regex = RegExp(r'^(?:[01]\d|2[0-3]):[0-5]\d$');
    return regex.hasMatch(cleaned);
  }

  /// Convierte una hora HH:mm a minutos totales desde medianoche
  static int _toMinutes(String hora) {
    final cleaned = hora.trim();
    final parts = cleaned.split(':');
    final h = int.parse(parts[0]);
    final m = int.parse(parts[1]);
    return h * 60 + m;
  }

  /// Valida que la hora de fin sea mayor que la hora de inicio
  static bool isFinMayorQueInicio(String inicio, String fin) {
    final finMin = isValidHora(fin);
    final inicioMin = isValidHora(inicio) ;
    if (!inicioMin || !finMin) return false;
    // Permite aceptar turnos nocturnos que cruzan medianoche
    //_toMinutes("22:00") devuelve: 22 * 60 = 1320
    // _toMinutes(fin) >= 240 , 240 minutos = 04:00.
    // _toMinutes(fin) <= 480 , 480 minutos = 08:00.
    // Si el turno empieza después de las 22:00 Y termina entre las 04:00 y las 08:00 Entonces el turno es válido.
    if (_toMinutes(inicio) >= 1320 && (_toMinutes(fin) >= 240 && _toMinutes(fin) <= 480)) return true;
    return _toMinutes(fin) > _toMinutes(inicio);
  }



}

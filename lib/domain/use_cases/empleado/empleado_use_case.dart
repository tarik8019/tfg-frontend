import 'package:flutter/material.dart';

import '../../../data/repositories/empleado/empleado_repository.dart';
import '../../../utils/result.dart';
import '../../models/empleado/dominio/empleado.dart';
import '../../validators/validator.dart';

class EmpleadoUseCase {
  EmpleadoUseCase({
    required EmpleadoRepository empleadoRepository,
  }) : _empleadoRepository = empleadoRepository;

  final EmpleadoRepository _empleadoRepository;

  // LOAD ALL
  Future<Result<List<Empleado>>> getAll() async {
    return await _empleadoRepository.getAll();
  }

  // UPDATE
  Future<Result<Empleado>> update(Empleado empleado) async {
    debugPrint("=== USECASE UPDATE ===");
    debugPrint("idEmpleado: ${empleado.idEmpleado}");

    if (empleado.idEmpleado == null) {
      return Result.error(Exception('Empleado sin id'));
    }

    // VALIDACIONES COMPLETAS
    final validation = _validateEmpleado(empleado);
    if (validation is Error<void>) {
      return Result.error(validation.error);
    }

    final result = await _empleadoRepository.update(empleado);

    if (result is Ok<Empleado>) {
      return Result.ok(result.value);
    }

    return Result.error((result as Error).error);
  }

  // DELETE
  Future<Result<void>> delete(int idEmpleado) async {
    if (idEmpleado <= 0) {
      return Result.error(Exception('ID inválido'));
    }
    return await _empleadoRepository.delete(idEmpleado);
  }

  // VALIDACIONES
  Result<void> _validateEmpleado(Empleado e) {
    // Campos obligatorios
    if (e.codigoEmpleado.isEmpty) {
      return Result.error(Exception('El código de empleado es obligatorio'));
    }
    if (e.nombre.isEmpty) {
      return Result.error(Exception('El nombre es obligatorio'));
    }
    if (e.apellidos.isEmpty) {
      return Result.error(Exception('Los apellidos son obligatorios'));
    }
    if (e.email.isEmpty) {
      return Result.error(Exception('El email es obligatorio'));
    }
    if (e.telefono.isEmpty) {
      return Result.error(Exception('El teléfono es obligatorio'));
    }
    if (e.direccion.isEmpty) {
      return Result.error(Exception('La dirección es obligatoria'));
    }
    if (e.ciudad.isEmpty) {
      return Result.error(Exception('La ciudad es obligatoria'));
    }
    if (e.provincia.isEmpty) {
      return Result.error(Exception('La provincia es obligatoria'));
    }
    if (e.codigoPostal.isEmpty) {
      return Result.error(Exception('El código postal es obligatorio'));
    }
    if (e.puesto.isEmpty) {
      return Result.error(Exception('El puesto es obligatorio'));
    }
    if (e.dniNie.isEmpty) {
      return Result.error(Exception('El DNI/NIE es obligatorio'));
    }

    // Validaciones específicas usando EmpleadoValidator
    if (!Validator.isValidEmail(e.email)) {
      return Result.error(Exception('El email no es válido'));
    }

    if (!Validator.isValidTelefono(e.telefono)) {
      return Result.error(Exception('El teléfono no es válido'));
    }

    if (!Validator.isValidCodigoPostal(e.codigoPostal)) {
      return Result.error(Exception('El código postal no es válido'));
    }

    if (!Validator.isValidDniNie(e.dniNie)) {
      return Result.error(Exception('El DNI/NIE no es válido'));
    }

    if (!Validator.isValidCodigoEntity(e.codigoEmpleado)) {
      return Result.error(Exception('El código de empleado no es válido'));
    }

    return const Result.ok(null);
  }
}

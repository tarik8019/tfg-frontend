import 'package:flutter/material.dart';

import '../../../../domain/models/departamento/dominio/departamento.dart';
import '../../../../domain/use_cases/departamento/departamento_use_case.dart';
import '../../../../data/repositories/auth/auth_repository.dart';
import '../../../../utils/command.dart';
import '../../../../utils/result.dart';

class DepartamentoViewModel extends ChangeNotifier {
  DepartamentoViewModel({
    required DepartamentoUseCase departamentoUseCase,
    required AuthRepository authRepository,
  })  : _departamentoUseCase = departamentoUseCase,
        _authRepository = authRepository {
    loadDepartamentos = Command0<void>(_load);
    createDepartamento = Command1<Departamento, Departamento>(_create);
    updateDepartamento = Command1<Departamento, Departamento>(_update);
    deleteDepartamento = Command1<void, Departamento>(_delete);
  }

  final DepartamentoUseCase _departamentoUseCase;
  final AuthRepository _authRepository;

  /// LISTADO
  List<Departamento> _departamentos = [];
  List<Departamento> get departamentos => _departamentos;

  /// COMMANDS (como Usuario)
  late final Command1<Departamento, Departamento> createDepartamento;
  late final Command1<Departamento, Departamento> updateDepartamento;
  late final Command1<void, Departamento> deleteDepartamento;
  late final Command0<void> loadDepartamentos;


  // LOAD
    Future<Result<void>> _load() async {
      final result = await _departamentoUseCase.getAllDepartamentos();

      if (result is Ok<List<Departamento>>) {
        _departamentos = result.value;
        notifyListeners();
        return const Result.ok(null);
      }

      if (result is Error<List<Departamento>>) {
        return Result.error(result.error);
      }

      return Result.error(Exception('Error cargando departamentos'));
    }



  // CREATE
  Future<Result<Departamento>> _create(Departamento dep) async {
    try {
      final user = _authRepository.currentUser;

      if (user == null) {
        return Result.error(Exception('Usuario no autenticado'));
      }

      final now = DateTime.now();

      final depFinal = dep.copyWith(
        idEmpresa: user.idEmpresa,
        activo: true,
        idResponsableEmpleado: null,
        fechaCreacion: now,
        fechaActualizacion: now,
      );

      debugPrint('CREATE DEP: $depFinal');

      final result =
          await _departamentoUseCase.crearDepartamento(depFinal);

      if (result is Ok<Departamento>) {
        _departamentos.add(result.value);
        notifyListeners();
        return Result.ok(result.value);
      }

      if (result is Error<Departamento>) {
        return Result.error(result.error);
      }

      return Result.error(Exception('Error desconocido al crear departamento'));
    }  on Exception catch (e) {
      return Result.error(e);
    }
  }

      // UPDATE
    Future<Result<Departamento>> _update(Departamento dep) async {
      try {
        final depFinal = dep.copyWith(
          fechaActualizacion: DateTime.now(),
        );

        final result = await _departamentoUseCase.editarDepartamento(depFinal);

        if (result is Ok<Departamento>) {
          final index = _departamentos.indexWhere(
            (d) => d.idDepartamento == dep.idDepartamento,
          );

          if (index != -1) {
            _departamentos[index] = result.value;
            notifyListeners();
          }

        // devolver el Departamento
          return Result.ok(result.value);
        }

        if (result is Error<Departamento>) {
          return Result.error(result.error);
        }

        return Result.error(Exception('Error desconocido al editar departamento'));
      } on Exception catch (e) {
        return Result.error(e);
      }
    }


  // DELETE
  Future<Result<void>> _delete(Departamento dep) async {
    try {
      final result = await _departamentoUseCase
          .borrarDepartamento(dep.idDepartamento!);

      if (result is Ok<void>) {
        _departamentos.removeWhere(
          (d) => d.idDepartamento == dep.idDepartamento,
        );
        notifyListeners();
        return const Result.ok(null);
      }

      if (result is Error<void>) {
        return Result.error(result.error);
      }

      return Result.error(Exception('Error desconocido al borrar departamento'));
      } catch (e) {
         return Result.error(Exception(e.toString()));
      }

  }
}

import '../../../domain/models/regla_turno/regla_turno.dart';
import '../../../utils/result.dart';
import '../../services/api/api_client.dart';
import '../../services/api/model/regla_turno/regla_turno_api_model.dart';
import 'regla_turno_repository.dart';

class ReglaTurnoRepositoryRemote implements ReglaTurnoRepository {
  ReglaTurnoRepositoryRemote({required ApiClient apiClient})
      : _apiClient = apiClient;

  final ApiClient _apiClient;

  List<ReglaTurno>? _cachedReglas;

  @override
  Future<Result<List<ReglaTurno>>> getAll() async {
    try {
      if (_cachedReglas != null) {
        return Result.ok(_cachedReglas!);
      }

      final result = await _apiClient.getReglasTurno();

      if (result is Ok<List<ReglaTurnoApiModel>>) {
        final data = result as Ok<List<ReglaTurnoApiModel>>;
        final reglas = data.value
            .map((r) => ReglaTurno(
                  idRegla: r.idRegla,
                  descripcion: r.descripcion,
                  tipo: r.tipo,
                  parametros: r.parametros,
                ))
            .toList();

        _cachedReglas = reglas;
        return Result.ok(reglas);
      } else if (result is Error<List<ReglaTurnoApiModel>>) {
        final err = result as Error<List<ReglaTurnoApiModel>>;
        return Result.error(err.error);
      }

      return Result.error(Exception('Respuesta inesperada del servidor'));
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<ReglaTurno>> getById(int id) async {
    try {
      final result = await _apiClient.getReglaTurnoById(id);

      if (result is Ok<ReglaTurnoApiModel>) {
        final r = (result as Ok<ReglaTurnoApiModel>).value;
        return Result.ok(ReglaTurno(
          idRegla: r.idRegla,
          descripcion: r.descripcion,
          tipo: r.tipo,
          parametros: r.parametros,
        ));
      } else if (result is Error<ReglaTurnoApiModel>) {
        final err = result as Error<ReglaTurnoApiModel>;
        return Result.error(err.error);
      }

      return Result.error(Exception('Respuesta inesperada del servidor'));
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<ReglaTurno>> create(ReglaTurno regla) async {
    try {
      final apiModel = ReglaTurnoApiModel(
        descripcion: regla.descripcion,
        tipo: regla.tipo,
        parametros: regla.parametros,
      );

      final result = await _apiClient.postReglaTurno(apiModel);

      if (result is Ok<ReglaTurnoApiModel>) {
        final r = (result as Ok<ReglaTurnoApiModel>).value;
        return Result.ok(ReglaTurno(
          idRegla: r.idRegla,
          descripcion: r.descripcion,
          tipo: r.tipo,
          parametros: r.parametros,
        ));
      } else if (result is Error<ReglaTurnoApiModel>) {
        final err = result as Error<ReglaTurnoApiModel>;
        return Result.error(err.error);
      }

      return Result.error(Exception('Respuesta inesperada del servidor'));
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<ReglaTurno>> update(ReglaTurno regla) async {
    try {
      final apiModel = ReglaTurnoApiModel(
        idRegla: regla.idRegla,
        descripcion: regla.descripcion,
        tipo: regla.tipo,
        parametros: regla.parametros,
      );

      final result = await _apiClient.updateReglaTurno(apiModel);

      if (result is Ok<ReglaTurnoApiModel>) {
        final r = (result as Ok<ReglaTurnoApiModel>).value;
        return Result.ok(ReglaTurno(
          idRegla: r.idRegla,
          descripcion: r.descripcion,
          tipo: r.tipo,
          parametros: r.parametros,
        ));
      } else if (result is Error<ReglaTurnoApiModel>) {
        final err = result as Error<ReglaTurnoApiModel>;
        return Result.error(err.error);
      }

      return Result.error(Exception('Respuesta inesperada del servidor'));
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> delete(int id) async {
    try {
      final result = await _apiClient.deleteReglaTurno(id);

      if (result is Ok<void>) {
        return const Result.ok(null);
      } else if (result is Error<void>) {
        final err = result;
        return Result.error(err.error);
      }

      return Result.error(Exception('Respuesta inesperada del servidor'));
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<List<ReglaTurno>>> getByTipo(String tipo) async {
    try {
      final result = await _apiClient.getReglasByTipo(tipo);

      if (result is Ok<List<ReglaTurnoApiModel>>) {
        final data = result as Ok<List<ReglaTurnoApiModel>>;
        final reglas = data.value
            .map((r) => ReglaTurno(
                  idRegla: r.idRegla,
                  descripcion: r.descripcion,
                  tipo: r.tipo,
                  parametros: r.parametros,
                ))
            .toList();

        return Result.ok(reglas);
      } else if (result is Error<List<ReglaTurnoApiModel>>) {
        final err = result as Error<List<ReglaTurnoApiModel>>;
        return Result.error(err.error);
      }

      return Result.error(Exception('Respuesta inesperada del servidor'));
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}

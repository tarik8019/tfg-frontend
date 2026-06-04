import 'package:mijornada/data/mappers/empresa_mapper.dart';
import 'package:mijornada/domain/models/empleado/dominio/empleado.dart';

import '../../../domain/models/empresa/dominio/empresa.dart';
import '../../../utils/result.dart';
import '../../services/api/api_client.dart';
import '../../services/api/model/empresa/empresa_api_model.dart';
import 'empresa_repository.dart';

class EmpresaRepositoryRemote implements EmpresaRepository {
  EmpresaRepositoryRemote({required ApiClient apiClient}) : _apiClient = apiClient;

  final ApiClient _apiClient;
  Map<int, Empresa>? _cachedEmpresas;

    @override
    Future<Result<List<Empresa>>> getAll() async {
      try {
        final result = await _apiClient.getEmpresas();
        switch (result) {
          case Ok<List<EmpresaApiModel>>():
            final empresasApi = result.value;
            return Result.ok(
              empresasApi
                  .map(
                    (empresaApi) => empresaApi.toDomain())
                  .toList(),
            );
          case Error<List<EmpresaApiModel>>():
            return Result.error(result.error);
        }
      } on Exception catch (e) {
        return Result.error(e);
      }
    }


      @override
      Future<Result<Empresa>> getById(int id) async {
        try {
          //Revisar si ya está cacheado
          if (_cachedEmpresas!.containsKey(id)) {
            return Result.ok(_cachedEmpresas![id]!);
          }

          // Llamar API si no está en caché
          final resultUser = await _apiClient.getEmpresaById(id);

          switch (resultUser) {
            case Error<EmpresaApiModel>():
              return Result.error(resultUser.error);

            case Ok<EmpresaApiModel>():
              final empresa = resultUser.value.toDomain();

              //Guardar en caché
              _cachedEmpresas![id] = empresa;

              return Result.ok(empresa);
          }
        }  on Exception catch (e) {
      return Result.error(e);
    }
      }


    @override
    Future<Result<void>> create(Empresa empresa) async {
      try {
        final apiModel = empresa.toApiModel();   
      return await _apiClient.postEmpresa(apiModel);
        } on Exception catch (e) {
          return Result.error(e);
        }
    }


    @override
    Future<Result<void>> update(Empresa empresa) async {
      try {
        final apiModel = empresa.toApiModel();

        final resultUpdate = await _apiClient.updateEmpresa(apiModel);

        switch (resultUpdate) {
          case Error<EmpresaApiModel>():
            return Result.error(resultUpdate.error);
          case Ok<EmpresaApiModel>():
            return Result.ok(null); // indicar éxito
        }
      } on Exception catch (e) {
        return Result.error(e);
      }
    }


  @override
  Future<Result<void>> delete(int id) async {
    try {
      final result = await _apiClient.deleteEmpresa(id);

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
  Future<Result<Empresa>> getEmpresaByEmpleado(int idEmpleado) async{
  try {
          //Revisar si ya está cacheado
          if (_cachedEmpresas!.containsKey(idEmpleado)) {
            return Result.ok(_cachedEmpresas![idEmpleado]!);
          }

          // Llamar API si no está en caché
          final resultUser = await _apiClient.getEmpresaByEmpleado(idEmpleado);

          switch (resultUser) {
            case Error<EmpresaApiModel>():
              return Result.error(resultUser.error);

            case Ok<EmpresaApiModel>():
              final empresa = resultUser.value.toDomain();

              //Guardar en caché
              _cachedEmpresas![idEmpleado] = empresa;

              return Result.ok(empresa);
          }
        }  on Exception catch (e) {
      return Result.error(e);
    }
  }
}

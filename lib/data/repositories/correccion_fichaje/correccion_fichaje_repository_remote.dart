// import 'package:mijornada/data/mappers/empleado_mapper.dart';

// import '../../../domain/models/correccion_fichaje/dominio/correccion_fichaje.dart';
// import '../../../domain/models/correccion_fichaje/summary/correccion_fichaje_summary.dart';
// import '../../../domain/models/empleado/dominio/empleado.dart';
// import '../../../domain/models/empresa/dominio/empresa.dart';
// import '../../../domain/models/fichaje/fichaje.dart';
// import '../../../domain/models/user/dominio/user.dart';
// import '../../../utils/result.dart';
// import '../../services/api/api_client.dart';
// import '../../services/api/model/correccion_fichaje/correccion_fichaje_api_model.dart';
// import '../../services/api/model/empleado/empleado_api_model.dart';
// import '../../services/api/model/empresa/empresa_api_model.dart';
// import '../../services/api/model/fichaje/fichaje_api_model.dart';
// import '../../services/api/model/user/user_api_model.dart';
// import 'correccion_fichaje_repository.dart';

// class CorreccionFichajeRepositoryRemote implements CorreccionFichajeRepository {
//   CorreccionFichajeRepositoryRemote({required ApiClient apiClient})
//       : _apiClient = apiClient;

      

//   final ApiClient _apiClient;
//   // cachear entidades estáticas
//   // Cachés
//   List<Empleado>? _cachedEmpleados;
//   List<Fichaje>? _cachedFichajes;
//   List<User>? _cachedUsuarios;
//   List<Empresa>? _cachedEmpresas;



//     @override
//     Future<Result<List<CorreccionFichajeSummary>>> getAll() async {
//           try {
//         final result = await _apiClient.getCorreccionesFichaje();
//         switch (result) {
//           case Ok<List<CorreccionFichajeApiModel>>():
//             final correccionFichajeApi = result.value;
//             return Result.ok(
//               correccionFichajeApi
//                   .map(
//                     (correccionApi) => CorreccionFichajeSummary(
//                     idCorreccion: correccionApi.idCorreccion!,
//                     estado: correccionApi.estado,
//                     motivo: correccionApi.motivo!,
//                     ),
//                   )
//                   .toList(),
//             );
//           case Error<List<CorreccionFichajeApiModel>>():
//             return Result.error(result.error);
//         }
//       } on Exception catch (e) {
//         return Result.error(e);
//       }
//     }

//   @override
//   Future<Result<CorreccionFichaje>> getById(int id) async {
//     try {
//       //  Obtener la corrección desde la API
//       final resultCorreccion = await _apiClient.getCorreccionFichajeById(id);
//       switch (resultCorreccion) {
//         case Error<CorreccionFichajeApiModel>():
//           return Result.error(resultCorreccion.error);
//         case Ok<CorreccionFichajeApiModel>():
//       }
//       final api = resultCorreccion.value;

//       //  Cargar empresas en caché si no están
//       if (_cachedEmpresas == null) {
//         final resultEmpresas = await _apiClient.getEmpresas();
//         switch (resultEmpresas) {
//           case Error<List<EmpresaApiModel>>():
//             return Result.error(resultEmpresas.error);
//           case Ok<List<EmpresaApiModel>>():
//         }
//         _cachedEmpresas = resultEmpresas.value.map((e) => e.toDomain()).toList();
//       }

//       //  Cargar usuarios en caché si no están
//       if (_cachedUsuarios == null) {
//         final resultUsuarios = await _apiClient.getUsuarios();
//         switch (resultUsuarios) {
//           case Error<List<UserApiModel>>():
//             return Result.error(resultUsuarios.error);
//           case Ok<List<UserApiModel>>():
//         }
//         _cachedUsuarios = resultUsuarios.value.map((u) => u.toDomain()).toList();
//       }

//       //  Cargar empleados en caché si no están
//       if (_cachedEmpleados == null) {
//         final resultEmpleados = await _apiClient.getEmpleados();
//         switch (resultEmpleados) {
//           case Error<List<EmpleadoApiModel>>():
//             return Result.error(resultEmpleados.error);
//           case Ok<List<EmpleadoApiModel>>():
//         }

//         _cachedEmpleados = resultEmpleados.value.map((apiEmpleado) {
//           final empresa = _cachedEmpresas!
//               .firstWhere((e) => e.idEmpresa == apiEmpleado.empresaRef);
//           final usuario = _cachedUsuarios!
//               .firstWhere((u) => u.idUsuario == apiEmpleado.usuarioRef);
//           return apiEmpleado.toDomain(usuario, empresa);
//         }).toList();
//       }

//       //  Cargar fichajes en caché si no están
//       if (_cachedFichajes == null) {
//         final resultFichajes = await _apiClient.getFichajes();
//         switch (resultFichajes) {
//           case Error<List<FichajeApiModel>>():
//             return Result.error(resultFichajes.error);
//           case Ok<List<FichajeApiModel>>():
//         }
//         _cachedFichajes = resultFichajes.value.map((f) {
//           final empleado = _cachedEmpleados!
//               .firstWhere((e) => e.idEmpleado == f.idEmpleado);
//           return f.toDomain(empleado);
//         }).toList();
//       }

//       //  Buscar empleado y fichaje relacionados
//       final empleado = _cachedEmpleados!
//           .firstWhere((e) => e.idEmpleado == api.idEmpleado);
//       final fichaje = _cachedFichajes!
//           .firstWhere((f) => f.idFichaje == api.idFichaje);

//       //  Devolver modelo de dominio completo
//       return Result.ok(
//         CorreccionFichaje(
//           idCorreccion: api.idCorreccion,
//           empleado: empleado,
//           fichaje: fichaje,
//           motivo: api.motivo,
//           estado: api.estado,
//         ),
//       );
//     } catch (e) {
//       return Result.error(e);
//     }
//   }



//   @override
//   Future<Result<CorreccionFichaje>> create(CorreccionFichaje c) async {
//     try {
//       final apiModel = CorreccionFichajeApiModel(
//         idEmpleado: c.idEmpleado,
//         idFichaje: c.idFichaje,
//         motivo: c.motivo,
//         estado: c.estado,
//       );

//       final result = await _apiClient.postCorreccionFichaje(apiModel);

//       if (result is Ok<CorreccionFichajeApiModel>) {
//         final data = result as Ok<CorreccionFichajeApiModel>;
//         final api = data.value;
//         return Result.ok(
//           CorreccionFichaje(
//             idCorreccion: api.idCorreccion,
//             idEmpleado: api.idEmpleado,
//             idFichaje: api.idFichaje,
//             motivo: api.motivo,
//             estado: api.estado,
//           ),
//         );
//       } else if (result is Error<CorreccionFichajeApiModel>) {
//         final err = result as Error<CorreccionFichajeApiModel>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<CorreccionFichaje>> update(CorreccionFichaje c) async {
//     try {
//       final apiModel = CorreccionFichajeApiModel(
//         idCorreccion: c.idCorreccion,
//         idEmpleado: c.idEmpleado,
//         idFichaje: c.idFichaje,
//         motivo: c.motivo,
//         estado: c.estado,
//       );

//       final result = await _apiClient.updateCorreccionFichaje(apiModel);

//       if (result is Ok<CorreccionFichajeApiModel>) {
//         final data = result as Ok<CorreccionFichajeApiModel>;
//         final api = data.value;
//         return Result.ok(
//           CorreccionFichaje(
//             idCorreccion: api.idCorreccion,
//             idEmpleado: api.idEmpleado,
//             idFichaje: api.idFichaje,
//             motivo: api.motivo,
//             estado: api.estado,
//           ),
//         );
//       } else if (result is Error<CorreccionFichajeApiModel>) {
//         final err = result as Error<CorreccionFichajeApiModel>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<void>> delete(int id) async {
//     try {
//       final result = await _apiClient.deleteCorreccionFichaje(id);

//       if (result is Ok<void>) {
//         return const Result.ok(null);
//       } else if (result is Error<void>) {
//         final err = result;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<List<CorreccionFichaje>>> getByEmpleado(int idEmpleado) async {
//     try {
//       final result = await _apiClient.getCorreccionesByEmpleado(idEmpleado);

//       if (result is Ok<List<CorreccionFichajeApiModel>>) {
//         final data = result as Ok<List<CorreccionFichajeApiModel>>;
//         final correcciones = data.value
//             .map(
//               (c) => CorreccionFichaje(
//                 idCorreccion: c.idCorreccion,
//                 idEmpleado: c.idEmpleado,
//                 idFichaje: c.idFichaje,
//                 motivo: c.motivo,
//                 estado: c.estado,
//               ),
//             )
//             .toList();
//         return Result.ok(correcciones);
//       } else if (result is Error<List<CorreccionFichajeApiModel>>) {
//         final err = result as Error<List<CorreccionFichajeApiModel>>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }
// }

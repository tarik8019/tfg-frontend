// import '../../../domain/models/disponibilidad/disponibilidad.dart';
// import '../../../utils/result.dart';
// import '../../services/api/api_client.dart';
// import '../../services/api/model/disponibilidad/disponibilidad_api_model.dart';
// import 'disponibilidad_repository.dart';

// class DisponibilidadRepositoryRemote implements DisponibilidadRepository {
//   DisponibilidadRepositoryRemote({required ApiClient apiClient})
//       : _apiClient = apiClient;

//   final ApiClient _apiClient;

//   List<Disponibilidad>? _cachedDisponibilidades;

//   @override
//   Future<Result<List<Disponibilidad>>> getAll() async {
//     try {
//       if (_cachedDisponibilidades != null) {
//         return Result.ok(_cachedDisponibilidades!);
//       }

//       final result = await _apiClient.getDisponibilidades();

//       if (result is Ok<List<DisponibilidadApiModel>>) {
//         final data = result as Ok<List<DisponibilidadApiModel>>;
//         final disponibilidades = data.value
//             .map(
//               (d) => Disponibilidad(
//                 idDisponibilidad: d.idDisponibilidad,
//                 idEmpleado: d.idEmpleado,
//                 diaSemana: d.diaSemana,
//                 horaInicio: d.horaInicio,
//                 horaFin: d.horaFin,
//               ),
//             )
//             .toList();
//         _cachedDisponibilidades = disponibilidades;
//         return Result.ok(disponibilidades);
//       } else if (result is Error<List<DisponibilidadApiModel>>) {
//         final err = result as Error<List<DisponibilidadApiModel>>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Disponibilidad>> getById(int id) async {
//     try {
//       final result = await _apiClient.getDisponibilidadById(id);

//       if (result is Ok<DisponibilidadApiModel>) {
//         final data = result as Ok<DisponibilidadApiModel>;
//         final d = data.value;
//         return Result.ok(
//           Disponibilidad(
//             idDisponibilidad: d.idDisponibilidad,
//             idEmpleado: d.idEmpleado,
//             diaSemana: d.diaSemana,
//             horaInicio: d.horaInicio,
//             horaFin: d.horaFin,
//           ),
//         );
//       } else if (result is Error<DisponibilidadApiModel>) {
//         final err = result as Error<DisponibilidadApiModel>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Disponibilidad>> create(Disponibilidad disponibilidad) async {
//     try {
//       final apiModel = DisponibilidadApiModel(
//         idEmpleado: disponibilidad.idEmpleado,
//         diaSemana: disponibilidad.diaSemana,
//         horaInicio: disponibilidad.horaInicio,
//         horaFin: disponibilidad.horaFin,
//       );

//       final result = await _apiClient.postDisponibilidad(apiModel);

//       if (result is Ok<DisponibilidadApiModel>) {
//         final data = result as Ok<DisponibilidadApiModel>;
//         final api = data.value;
//         return Result.ok(
//           Disponibilidad(
//             idDisponibilidad: api.idDisponibilidad,
//             idEmpleado: api.idEmpleado,
//             diaSemana: api.diaSemana,
//             horaInicio: api.horaInicio,
//             horaFin: api.horaFin,
//           ),
//         );
//       } else if (result is Error<DisponibilidadApiModel>) {
//         final err = result as Error<DisponibilidadApiModel>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Disponibilidad>> update(Disponibilidad disponibilidad) async {
//     try {
//       final apiModel = DisponibilidadApiModel(
//         idDisponibilidad: disponibilidad.idDisponibilidad,
//         idEmpleado: disponibilidad.idEmpleado,
//         diaSemana: disponibilidad.diaSemana,
//         horaInicio: disponibilidad.horaInicio,
//         horaFin: disponibilidad.horaFin,
//       );

//       final result = await _apiClient.updateDisponibilidad(apiModel);

//       if (result is Ok<DisponibilidadApiModel>) {
//         final data = result as Ok<DisponibilidadApiModel>;
//         final api = data.value;
//         return Result.ok(
//           Disponibilidad(
//             idDisponibilidad: api.idDisponibilidad,
//             idEmpleado: api.idEmpleado,
//             diaSemana: api.diaSemana,
//             horaInicio: api.horaInicio,
//             horaFin: api.horaFin,
//           ),
//         );
//       } else if (result is Error<DisponibilidadApiModel>) {
//         final err = result as Error<DisponibilidadApiModel>;
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
//       final result = await _apiClient.deleteDisponibilidad(id);

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
//   Future<Result<List<Disponibilidad>>> getByEmpleado(int idEmpleado) async {
//     try {
//       final result = await _apiClient.getDisponibilidadesByEmpleado(idEmpleado);

//       if (result is Ok<List<DisponibilidadApiModel>>) {
//         final data = result as Ok<List<DisponibilidadApiModel>>;
//         final disponibilidades = data.value
//             .map(
//               (d) => Disponibilidad(
//                 idDisponibilidad: d.idDisponibilidad,
//                 idEmpleado: d.idEmpleado,
//                 diaSemana: d.diaSemana,
//                 horaInicio: d.horaInicio,
//                 horaFin: d.horaFin,
//               ),
//             )
//             .toList();
//         return Result.ok(disponibilidades);
//       } else if (result is Error<List<DisponibilidadApiModel>>) {
//         final err = result as Error<List<DisponibilidadApiModel>>;
//         return Result.error(err.error);
//       }

//       return Result.error(Exception('Respuesta inesperada del servidor'));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }
// }

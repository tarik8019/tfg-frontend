import '../../../../domain/models/fichaje/fichaje.dart';
import '../../../../utils/result.dart';
import '../../../domain/models/empleado/dominio/empleado.dart';
import '../../../domain/models/empleado/summary/empleado_summary.dart';
import '../../../domain/models/fichaje/fichajes_empleado.dart';
import '../../../domain/models/fichaje/fichajes_por_dia.dart';
import '../../services/api/model/fichaje/fichajes_por_dia_api_model.dart';

abstract class FichajeRepository {
  //Future<Result<List<Fichaje>>> getAllFichajes();
  //Future<Result<Fichaje>> getFichajeById(int idFichaje);
  //Future<Result<List<Fichaje>>> getFichajesByEmpleado(int idEmpleado);
  Future<Result<Fichaje?>> getUltimoFichaje(int idEmpleado);
  Future<Result<Fichaje>> createFichaje(Fichaje fichaje);
  Future<Result<List<FichajesEmpleado>>> getFichajesHoyAgrupados();
Future<Result<List<FichajesPorDia>>> getFichajesFiltrados({
  String? nombre,
  String? apellidos,
  DateTime? fecha,
}) ;
  Future<Result<List<Fichaje>>> getFichajesHoyPorEmpleado(int idEmpleado);
  //Future<Result<Fichaje>> updateFichaje(Fichaje fichaje);
  //Future<Result<void>> deleteFichaje(int idFichaje);
}

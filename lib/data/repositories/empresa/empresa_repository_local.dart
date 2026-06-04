// import 'dart:async';
// import '../../../domain/models/empresa/dominio/empresa.dart';
// import '../../../utils/result.dart';
// import 'empresa_repository.dart';

// class EmpresaRepositoryLocal implements EmpresaRepository {
//   EmpresaRepositoryLocal();


//   int _sequentialId = 0;

//   final _empresas = List<Empresa>.empty(growable: true);

//   @override
//   Future<Result<List<Empresa>>> getAll() async {
//     try {
//       return Result.ok(List.unmodifiable(_empresas));
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Empresa>> getById(int id) async {
//     try {
//       final empresa = _empresas.where((e) => e.idEmpresa == id).firstOrNull;
//       if (empresa == null) {
//         return Result.error(Exception('Empresa no encontrada'));
//       }
//       return Result.ok(empresa);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Empresa>> create(Empresa empresa) async {
//     try {
//       final nuevaEmpresa = empresa.copyWith(idEmpresa: _sequentialId++);
//       _empresas.add(nuevaEmpresa);
//       return Result.ok(nuevaEmpresa);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<Empresa>> update(Empresa empresa) async {
//     try {
//       final index =
//           _empresas.indexWhere((e) => e.idEmpresa == empresa.idEmpresa);
//       if (index == -1) {
//         return Result.error(Exception('Empresa no encontrada'));
//       }

//       _empresas[index] = empresa;
//       return Result.ok(empresa);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }

//   @override
//   Future<Result<void>> delete(int id) async {
//     try {
//       _empresas.removeWhere((e) => e.idEmpresa == id);
//       return const Result.ok(null);
//     } on Exception catch (e) {
//       return Result.error(e);
//     }
//   }
// }

// import 'package:flutter/material.dart';
// import '../view_models/empleado_admin_viewmodel.dart';
// import 'empleado_admin_header.dart';
// import 'empleado_card.dart';

// class EmpleadoAdminBody extends StatelessWidget {
//   const EmpleadoAdminBody({super.key, required this.viewModel});

//   final EmpleadoAdminViewModel viewModel;

//   @override
//   Widget build(BuildContext context) {
//     return ListenableBuilder(
//       listenable: viewModel,
//       builder: (context, _) {
//         final empleados = viewModel.empleados;
//         if (empleados.isEmpty) return const SizedBox();

//         return CustomScrollView(
//           slivers: [
//             SliverToBoxAdapter(
//               child: EmpleadoAdminHeader(total: empleados.length),
//             ),
//             SliverList(
//               delegate: SliverChildBuilderDelegate(
//                 (context, index) {
//                   final empleado = empleados[index];
//                   return EmpleadoCard(empleado: empleado);
//                 },
//                 childCount: empleados.length,
//               ),
//             ),
//             const SliverToBoxAdapter(child: SizedBox(height: 200)),
//           ],
//         );
//       },
//     );
//   }
// }

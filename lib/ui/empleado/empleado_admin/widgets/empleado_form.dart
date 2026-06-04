// import 'package:flutter/material.dart';
// import '../../../core/localization/applocalization.dart';
// import '../../../../domain/models/empleado/dominio/empleado.dart';

// class EmpleadoForm extends StatefulWidget {
//   const EmpleadoForm({super.key, this.empleado, required Future<Null> Function(dynamic empleadoResult) onSubmit});

//   final Empleado? empleado;

//   @override
//   State<EmpleadoForm> createState() => _EmpleadoFormState();
// }

// class _EmpleadoFormState extends State<EmpleadoForm> {
//   late final TextEditingController nombreCtrl;
//   late final TextEditingController emailCtrl;
//   late final TextEditingController rolCtrl;

//   @override
//   void initState() {
//     super.initState();
//     nombreCtrl = TextEditingController(text: widget.empleado?.nombre);
//     emailCtrl = TextEditingController(text: widget.empleado?.email);
//     rolCtrl = TextEditingController(text: widget.empleado?.usuario.role);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Text(widget.empleado == null
//           ? AppLocalization.of(context).crea
//           : AppLocalization.of(context).editEmployee),
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           TextField(controller: nombreCtrl, decoration: InputDecoration(labelText: AppLocalization.of(context).name)),
//           TextField(controller: emailCtrl, decoration: InputDecoration(labelText: AppLocalization.of(context).email)),
//           TextField(controller: rolCtrl, decoration: InputDecoration(labelText: AppLocalization.of(context).role)),
//         ],
//       ),
//       actions: [
//         TextButton(
//           onPressed: () => Navigator.pop(context),
//           child: Text(AppLocalization.of(context).cancel),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             final result = Empleado(
//               id: widget.empleado?.id ?? "",
//               nombre: nombreCtrl.text,
//               email: emailCtrl.text,
//               rol: rolCtrl.text,
//             );
//             Navigator.pop(context, result);
//           },
//           child: Text(AppLocalization.of(context).save),
//         ),
//       ],
//     );
//   }
// }

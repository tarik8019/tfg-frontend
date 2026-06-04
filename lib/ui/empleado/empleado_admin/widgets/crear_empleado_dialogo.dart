import 'package:flutter/material.dart';
import '../../../../domain/models/empleado/dominio/empleado.dart';
import '../../../core/ui/error_indicator.dart';
import '../../../core/ui/success_indicator.dart';
import '../view_models/empleado_dialogo_viewmodel.dart';

class CrearEmpleadoDialog extends StatefulWidget {
  const CrearEmpleadoDialog({
    super.key,
    required this.viewModel,
     this.empleadoEditar,
  });

  final EmpleadoDialogoViewModel viewModel;
  final Empleado? empleadoEditar;
  bool get isEdit => empleadoEditar != null;
  @override
  State<CrearEmpleadoDialog> createState() => _CrearEmpleadoDialogState();
}

class _CrearEmpleadoDialogState extends State<CrearEmpleadoDialog> {
  final _formKey = GlobalKey<FormState>();

  @override
void initState() {
  super.initState();

  final e = widget.empleadoEditar;
  if (e != null) {
    _nombreController.text = e.nombre;
    _apellidosController.text = e.apellidos;
    _emailController.text = e.email;
    _telefonoController.text = e.telefono;
    _dniNieController.text = e.dniNie;
    _codigoEmpleadoController.text = e.codigoEmpleado;
    _salarioController.text = e.salarioBase.toString();

    _direccionController.text = e.direccion;
    _ciudadController.text = e.ciudad;
    _provinciaController.text = e.provincia;
    _codigoPostalController.text = e.codigoPostal;
    _observacionesController.text = e.observaciones ?? '';
    _imagenUrlController.text = e.imagenUrl ?? '';

    _fechaNacimiento = e.fechaNacimiento;
    _tipoContrato = e.tipoContrato;
    _jornada = e.jornada;
    _puesto = e.puesto;
    _departamento = e.departamentoNombre;
  }
}


  // CONTROLLERS
  final _nombreController = TextEditingController();
  final _apellidosController = TextEditingController();
  final _emailController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _dniNieController = TextEditingController();
  final _codigoEmpleadoController = TextEditingController();
  final _salarioController = TextEditingController();

  final _direccionController = TextEditingController();
  final _ciudadController = TextEditingController();
  final _provinciaController = TextEditingController();
  final _codigoPostalController = TextEditingController();
  final _observacionesController = TextEditingController();
  final _imagenUrlController = TextEditingController();


  // SELECTORES
  DateTime? _fechaNacimiento;
  final DateTime _fechaAlta = DateTime.now();

  String _tipoContrato = 'Indefinido';
  String _jornada = 'Completa';
  String _puesto = 'DirectorRRHH';
  String _departamento = 'Ventas';

  final _departamentos = const [
    'Ventas',
    'Marketing',
    'RecursosHumanos',
    'IT',
    'Administracion',
  ];

  @override
  void dispose() {
    _nombreController.dispose();
    _apellidosController.dispose();
    _emailController.dispose();
    _telefonoController.dispose();
    _dniNieController.dispose();
    _codigoEmpleadoController.dispose();
    _salarioController.dispose();
    _direccionController.dispose();
    _ciudadController.dispose();
    _provinciaController.dispose();
    _codigoPostalController.dispose();
    _observacionesController.dispose();
    _imagenUrlController.dispose();

    super.dispose();
  }

  // SAVE
void _onSave() {
  debugPrint("=== ON SAVE ===");
  debugPrint("isEdit: ${widget.isEdit}");
  debugPrint("empleadoEditar: ${widget.empleadoEditar}");

  final command = widget.isEdit
      ? widget.viewModel.updateEmpleado
      : widget.viewModel.createEmpleado;

  // LIMPIAR ESTADO ANTES DE EJECUTAR
  command.clearResult();

  if (!_formKey.currentState!.validate()) return;

  final salario = double.tryParse(_salarioController.text);
  if (salario == null || salario <= 0) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Salario no válido')),
    );
    return;
  }

  if (_fechaNacimiento == null) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Seleccione fecha de nacimiento')),
    );
    return;
  }

  final empleado = Empleado(
    idEmpleado: widget.empleadoEditar?.idEmpleado,
    nombre: _nombreController.text.trim(),
    apellidos: _apellidosController.text.trim(),
    email: _emailController.text.trim(),
    telefono: _telefonoController.text.trim(),
    dniNie: _dniNieController.text.trim(),
    codigoEmpleado: _codigoEmpleadoController.text.trim(),
    fechaNacimiento: _fechaNacimiento!,
    fechaAlta: widget.empleadoEditar?.fechaAlta ?? _fechaAlta,
    salarioBase: salario,
    tipoContrato: _tipoContrato,
    jornada: _jornada,
    puesto: _puesto,
    departamentoNombre: _departamento,

    direccion: _direccionController.text.trim(),
    ciudad: _ciudadController.text.trim(),
    provincia: _provinciaController.text.trim(),
    codigoPostal: _codigoPostalController.text.trim(),

    idUsuario: widget.empleadoEditar?.idUsuario ?? 0,
    idEmpresa: widget.empleadoEditar?.idEmpresa ?? 0,
    idDepartamento: widget.empleadoEditar?.idDepartamento ?? 0,
    saldoVacaciones: widget.empleadoEditar?.saldoVacaciones ?? 0,
    isActivo: widget.empleadoEditar?.isActivo ?? true,

    observaciones: _observacionesController.text.trim().isEmpty
        ? null
        : _observacionesController.text.trim(),

    imagenUrl: _imagenUrlController.text.trim().isEmpty
        ? null
        : _imagenUrlController.text.trim(),
  );

  //EJECUTAR COMMAND
  command.execute(empleado);
}


  // UI
  @override
  Widget build(BuildContext context) {
    final command = widget.isEdit
    ? widget.viewModel.updateEmpleado
    : widget.viewModel.createEmpleado;


    return AlertDialog(
      title: Text(widget.isEdit ? 'Editar empleado' : 'Crear empleado'),

      content: ListenableBuilder(
        listenable: command,
        builder: (_, __) {
          if (command.running) {
            return const Padding(
              padding: EdgeInsets.all(24),
              child: CircularProgressIndicator(),
            );
          }

          if (command.completed) {
            return SuccessIndicator(
              title: 'Empleado creado correctamente',
              label: 'Aceptar',
              onPressed: () {
                command.clearResult();
                Navigator.of(context).pop(true);
              },
            );
          }

          if (command.error) {
          return ErrorIndicator(
            title: command.result!.error.toString(),
            label: 'Cerrar',
            onPressed: () {
              command.clearResult();
              Navigator.of(context).pop(false);
            },
          );
        }

          return _buildForm();
        },
      ),
      actions: command.running || command.completed
          ? null
          : [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancelar'),
              ),
             ElevatedButton(
              onPressed: _onSave,
              child: Text(widget.isEdit ? 'Actualizar' : 'Guardar'),
            ),

            ],
    );
  }

  // FORM
  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            _section('Datos personales'),
            _text(_nombreController, 'Nombre'),
            _text(_apellidosController, 'Apellidos'),
            _text(_emailController, 'Email'),
            _text(_telefonoController, 'Teléfono'),
            _text(_dniNieController, 'DNI / NIE'),
            _datePicker('Fecha nacimiento', _fechaNacimiento,
                (d) => setState(() => _fechaNacimiento = d)),

            _section('Datos laborales'),
            _text(_codigoEmpleadoController, 'Código empleado'),
            _text(_salarioController, 'Salario', number: true),
            _dropdown('Tipo contrato', _tipoContrato,
                ['Indefinido', 'Temporal'], (v) => setState(() => _tipoContrato = v)),
            _dropdown('Jornada', _jornada,
                ['Completa', 'Parcial'], (v) => setState(() => _jornada = v)),
            _dropdown('Puesto', _puesto,
                ['DirectorRRHH',
                'GerenteRRHH',
                'EspecialistaReclutamiento',
                'CoordinadorCapacitacion',
                'AnalistaCompensaciones',
                'AdministrativoRRHH',
                'EspecialistaBienestar',
                'ResponsableRelacionesLaborales',
                'AsistenteRRHH',
                'InternoRRHH',
                'JefeDepartamento',
                'ConsultorExterno'], (v) => setState(() => _puesto = v)),
            _dropdown('Departamento', _departamento, _departamentos,
                (v) => setState(() => _departamento = v)),

            _section('Dirección'),
            _text(_direccionController, 'Dirección'),
            _text(_ciudadController, 'Ciudad'),
            _text(_provinciaController, 'Provincia'),
            _text(_codigoPostalController, 'Código postal'),

            _section('Otros datos'),
            _text(_observacionesController, 'Observaciones'),
            _text(_imagenUrlController, 'Imagen URL'),

          ],
        ),
      ),
    );
  }

  // HELPERS
  Widget _section(String title) => Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 8),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(title,
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
      );

  Widget _text(
    TextEditingController c,
    String label, {
    bool number = false,
  }) {
    return TextFormField(
      controller: c,
      keyboardType:
          number ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(labelText: label),
      validator: (v) =>
          v == null || v.isEmpty ? 'Campo obligatorio' : null,
    );
  }

    Widget _dropdown(
      String label,
      String value,
      List<String> items,
      ValueChanged<String> onChanged,
    ) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 300), 
          child: DropdownButtonFormField<String>(
            initialValue: value,
            decoration: InputDecoration(labelText: label),
            isExpanded: true, 
            items: items.map((e) => DropdownMenuItem(
              value: e,
              child: Text(
                e,
                overflow: TextOverflow.ellipsis, 
              ),
            )).toList(),
            onChanged: (v) => onChanged(v!),
          ),
        ),
      );
    }


  Widget _datePicker(
    String label,
    DateTime? value,
    ValueChanged<DateTime> onPicked,
  ) {
    return ListTile(
      title: Text(
        value == null
            ? label
            : '$label: ${value.toLocal().toString().split(' ')[0]}',
      ),
      trailing: const Icon(Icons.calendar_today),
      onTap: () async {
        final date = await showDatePicker(
          context: context,
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
          initialDate: value ?? DateTime.now(),
        );
        if (date != null) onPicked(date);
      },
    );
  }
}

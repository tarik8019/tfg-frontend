// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'empleado_create_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmpleadoCreateApiModel {

 String get codigoEmpleado; String get nombre; String get apellidos; String get email; String get telefono; String get direccion; String get ciudad; String get provincia; String get codigoPostal; DateTime get fechaNacimiento; double get salarioBase; String get tipoContrato; String get jornada; String? get observaciones; String? get imagenUrl; String get puesto; String get dniNie; DateTime get fechaAlta; DateTime? get fechaBaja; int get saldoVacaciones; bool get isActivo; int get idDepartamento; int get idEmpresa; int get idUsuario; String get departamentoNombre;
/// Create a copy of EmpleadoCreateApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmpleadoCreateApiModelCopyWith<EmpleadoCreateApiModel> get copyWith => _$EmpleadoCreateApiModelCopyWithImpl<EmpleadoCreateApiModel>(this as EmpleadoCreateApiModel, _$identity);

  /// Serializes this EmpleadoCreateApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmpleadoCreateApiModel&&(identical(other.codigoEmpleado, codigoEmpleado) || other.codigoEmpleado == codigoEmpleado)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellidos, apellidos) || other.apellidos == apellidos)&&(identical(other.email, email) || other.email == email)&&(identical(other.telefono, telefono) || other.telefono == telefono)&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.ciudad, ciudad) || other.ciudad == ciudad)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.fechaNacimiento, fechaNacimiento) || other.fechaNacimiento == fechaNacimiento)&&(identical(other.salarioBase, salarioBase) || other.salarioBase == salarioBase)&&(identical(other.tipoContrato, tipoContrato) || other.tipoContrato == tipoContrato)&&(identical(other.jornada, jornada) || other.jornada == jornada)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.imagenUrl, imagenUrl) || other.imagenUrl == imagenUrl)&&(identical(other.puesto, puesto) || other.puesto == puesto)&&(identical(other.dniNie, dniNie) || other.dniNie == dniNie)&&(identical(other.fechaAlta, fechaAlta) || other.fechaAlta == fechaAlta)&&(identical(other.fechaBaja, fechaBaja) || other.fechaBaja == fechaBaja)&&(identical(other.saldoVacaciones, saldoVacaciones) || other.saldoVacaciones == saldoVacaciones)&&(identical(other.isActivo, isActivo) || other.isActivo == isActivo)&&(identical(other.idDepartamento, idDepartamento) || other.idDepartamento == idDepartamento)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.idUsuario, idUsuario) || other.idUsuario == idUsuario)&&(identical(other.departamentoNombre, departamentoNombre) || other.departamentoNombre == departamentoNombre));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,codigoEmpleado,nombre,apellidos,email,telefono,direccion,ciudad,provincia,codigoPostal,fechaNacimiento,salarioBase,tipoContrato,jornada,observaciones,imagenUrl,puesto,dniNie,fechaAlta,fechaBaja,saldoVacaciones,isActivo,idDepartamento,idEmpresa,idUsuario,departamentoNombre]);

@override
String toString() {
  return 'EmpleadoCreateApiModel(codigoEmpleado: $codigoEmpleado, nombre: $nombre, apellidos: $apellidos, email: $email, telefono: $telefono, direccion: $direccion, ciudad: $ciudad, provincia: $provincia, codigoPostal: $codigoPostal, fechaNacimiento: $fechaNacimiento, salarioBase: $salarioBase, tipoContrato: $tipoContrato, jornada: $jornada, observaciones: $observaciones, imagenUrl: $imagenUrl, puesto: $puesto, dniNie: $dniNie, fechaAlta: $fechaAlta, fechaBaja: $fechaBaja, saldoVacaciones: $saldoVacaciones, isActivo: $isActivo, idDepartamento: $idDepartamento, idEmpresa: $idEmpresa, idUsuario: $idUsuario, departamentoNombre: $departamentoNombre)';
}


}

/// @nodoc
abstract mixin class $EmpleadoCreateApiModelCopyWith<$Res>  {
  factory $EmpleadoCreateApiModelCopyWith(EmpleadoCreateApiModel value, $Res Function(EmpleadoCreateApiModel) _then) = _$EmpleadoCreateApiModelCopyWithImpl;
@useResult
$Res call({
 String codigoEmpleado, String nombre, String apellidos, String email, String telefono, String direccion, String ciudad, String provincia, String codigoPostal, DateTime fechaNacimiento, double salarioBase, String tipoContrato, String jornada, String? observaciones, String? imagenUrl, String puesto, String dniNie, DateTime fechaAlta, DateTime? fechaBaja, int saldoVacaciones, bool isActivo, int idDepartamento, int idEmpresa, int idUsuario, String departamentoNombre
});




}
/// @nodoc
class _$EmpleadoCreateApiModelCopyWithImpl<$Res>
    implements $EmpleadoCreateApiModelCopyWith<$Res> {
  _$EmpleadoCreateApiModelCopyWithImpl(this._self, this._then);

  final EmpleadoCreateApiModel _self;
  final $Res Function(EmpleadoCreateApiModel) _then;

/// Create a copy of EmpleadoCreateApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? codigoEmpleado = null,Object? nombre = null,Object? apellidos = null,Object? email = null,Object? telefono = null,Object? direccion = null,Object? ciudad = null,Object? provincia = null,Object? codigoPostal = null,Object? fechaNacimiento = null,Object? salarioBase = null,Object? tipoContrato = null,Object? jornada = null,Object? observaciones = freezed,Object? imagenUrl = freezed,Object? puesto = null,Object? dniNie = null,Object? fechaAlta = null,Object? fechaBaja = freezed,Object? saldoVacaciones = null,Object? isActivo = null,Object? idDepartamento = null,Object? idEmpresa = null,Object? idUsuario = null,Object? departamentoNombre = null,}) {
  return _then(_self.copyWith(
codigoEmpleado: null == codigoEmpleado ? _self.codigoEmpleado : codigoEmpleado // ignore: cast_nullable_to_non_nullable
as String,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,apellidos: null == apellidos ? _self.apellidos : apellidos // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,telefono: null == telefono ? _self.telefono : telefono // ignore: cast_nullable_to_non_nullable
as String,direccion: null == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String,ciudad: null == ciudad ? _self.ciudad : ciudad // ignore: cast_nullable_to_non_nullable
as String,provincia: null == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String,codigoPostal: null == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String,fechaNacimiento: null == fechaNacimiento ? _self.fechaNacimiento : fechaNacimiento // ignore: cast_nullable_to_non_nullable
as DateTime,salarioBase: null == salarioBase ? _self.salarioBase : salarioBase // ignore: cast_nullable_to_non_nullable
as double,tipoContrato: null == tipoContrato ? _self.tipoContrato : tipoContrato // ignore: cast_nullable_to_non_nullable
as String,jornada: null == jornada ? _self.jornada : jornada // ignore: cast_nullable_to_non_nullable
as String,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,imagenUrl: freezed == imagenUrl ? _self.imagenUrl : imagenUrl // ignore: cast_nullable_to_non_nullable
as String?,puesto: null == puesto ? _self.puesto : puesto // ignore: cast_nullable_to_non_nullable
as String,dniNie: null == dniNie ? _self.dniNie : dniNie // ignore: cast_nullable_to_non_nullable
as String,fechaAlta: null == fechaAlta ? _self.fechaAlta : fechaAlta // ignore: cast_nullable_to_non_nullable
as DateTime,fechaBaja: freezed == fechaBaja ? _self.fechaBaja : fechaBaja // ignore: cast_nullable_to_non_nullable
as DateTime?,saldoVacaciones: null == saldoVacaciones ? _self.saldoVacaciones : saldoVacaciones // ignore: cast_nullable_to_non_nullable
as int,isActivo: null == isActivo ? _self.isActivo : isActivo // ignore: cast_nullable_to_non_nullable
as bool,idDepartamento: null == idDepartamento ? _self.idDepartamento : idDepartamento // ignore: cast_nullable_to_non_nullable
as int,idEmpresa: null == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int,idUsuario: null == idUsuario ? _self.idUsuario : idUsuario // ignore: cast_nullable_to_non_nullable
as int,departamentoNombre: null == departamentoNombre ? _self.departamentoNombre : departamentoNombre // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EmpleadoCreateApiModel].
extension EmpleadoCreateApiModelPatterns on EmpleadoCreateApiModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmpleadoCreateApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmpleadoCreateApiModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmpleadoCreateApiModel value)  $default,){
final _that = this;
switch (_that) {
case _EmpleadoCreateApiModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmpleadoCreateApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmpleadoCreateApiModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String codigoEmpleado,  String nombre,  String apellidos,  String email,  String telefono,  String direccion,  String ciudad,  String provincia,  String codigoPostal,  DateTime fechaNacimiento,  double salarioBase,  String tipoContrato,  String jornada,  String? observaciones,  String? imagenUrl,  String puesto,  String dniNie,  DateTime fechaAlta,  DateTime? fechaBaja,  int saldoVacaciones,  bool isActivo,  int idDepartamento,  int idEmpresa,  int idUsuario,  String departamentoNombre)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmpleadoCreateApiModel() when $default != null:
return $default(_that.codigoEmpleado,_that.nombre,_that.apellidos,_that.email,_that.telefono,_that.direccion,_that.ciudad,_that.provincia,_that.codigoPostal,_that.fechaNacimiento,_that.salarioBase,_that.tipoContrato,_that.jornada,_that.observaciones,_that.imagenUrl,_that.puesto,_that.dniNie,_that.fechaAlta,_that.fechaBaja,_that.saldoVacaciones,_that.isActivo,_that.idDepartamento,_that.idEmpresa,_that.idUsuario,_that.departamentoNombre);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String codigoEmpleado,  String nombre,  String apellidos,  String email,  String telefono,  String direccion,  String ciudad,  String provincia,  String codigoPostal,  DateTime fechaNacimiento,  double salarioBase,  String tipoContrato,  String jornada,  String? observaciones,  String? imagenUrl,  String puesto,  String dniNie,  DateTime fechaAlta,  DateTime? fechaBaja,  int saldoVacaciones,  bool isActivo,  int idDepartamento,  int idEmpresa,  int idUsuario,  String departamentoNombre)  $default,) {final _that = this;
switch (_that) {
case _EmpleadoCreateApiModel():
return $default(_that.codigoEmpleado,_that.nombre,_that.apellidos,_that.email,_that.telefono,_that.direccion,_that.ciudad,_that.provincia,_that.codigoPostal,_that.fechaNacimiento,_that.salarioBase,_that.tipoContrato,_that.jornada,_that.observaciones,_that.imagenUrl,_that.puesto,_that.dniNie,_that.fechaAlta,_that.fechaBaja,_that.saldoVacaciones,_that.isActivo,_that.idDepartamento,_that.idEmpresa,_that.idUsuario,_that.departamentoNombre);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String codigoEmpleado,  String nombre,  String apellidos,  String email,  String telefono,  String direccion,  String ciudad,  String provincia,  String codigoPostal,  DateTime fechaNacimiento,  double salarioBase,  String tipoContrato,  String jornada,  String? observaciones,  String? imagenUrl,  String puesto,  String dniNie,  DateTime fechaAlta,  DateTime? fechaBaja,  int saldoVacaciones,  bool isActivo,  int idDepartamento,  int idEmpresa,  int idUsuario,  String departamentoNombre)?  $default,) {final _that = this;
switch (_that) {
case _EmpleadoCreateApiModel() when $default != null:
return $default(_that.codigoEmpleado,_that.nombre,_that.apellidos,_that.email,_that.telefono,_that.direccion,_that.ciudad,_that.provincia,_that.codigoPostal,_that.fechaNacimiento,_that.salarioBase,_that.tipoContrato,_that.jornada,_that.observaciones,_that.imagenUrl,_that.puesto,_that.dniNie,_that.fechaAlta,_that.fechaBaja,_that.saldoVacaciones,_that.isActivo,_that.idDepartamento,_that.idEmpresa,_that.idUsuario,_that.departamentoNombre);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmpleadoCreateApiModel implements EmpleadoCreateApiModel {
  const _EmpleadoCreateApiModel({required this.codigoEmpleado, required this.nombre, required this.apellidos, required this.email, required this.telefono, required this.direccion, required this.ciudad, required this.provincia, required this.codigoPostal, required this.fechaNacimiento, required this.salarioBase, required this.tipoContrato, required this.jornada, this.observaciones, this.imagenUrl, required this.puesto, required this.dniNie, required this.fechaAlta, this.fechaBaja, required this.saldoVacaciones, required this.isActivo, required this.idDepartamento, required this.idEmpresa, required this.idUsuario, required this.departamentoNombre});
  factory _EmpleadoCreateApiModel.fromJson(Map<String, dynamic> json) => _$EmpleadoCreateApiModelFromJson(json);

@override final  String codigoEmpleado;
@override final  String nombre;
@override final  String apellidos;
@override final  String email;
@override final  String telefono;
@override final  String direccion;
@override final  String ciudad;
@override final  String provincia;
@override final  String codigoPostal;
@override final  DateTime fechaNacimiento;
@override final  double salarioBase;
@override final  String tipoContrato;
@override final  String jornada;
@override final  String? observaciones;
@override final  String? imagenUrl;
@override final  String puesto;
@override final  String dniNie;
@override final  DateTime fechaAlta;
@override final  DateTime? fechaBaja;
@override final  int saldoVacaciones;
@override final  bool isActivo;
@override final  int idDepartamento;
@override final  int idEmpresa;
@override final  int idUsuario;
@override final  String departamentoNombre;

/// Create a copy of EmpleadoCreateApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmpleadoCreateApiModelCopyWith<_EmpleadoCreateApiModel> get copyWith => __$EmpleadoCreateApiModelCopyWithImpl<_EmpleadoCreateApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmpleadoCreateApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmpleadoCreateApiModel&&(identical(other.codigoEmpleado, codigoEmpleado) || other.codigoEmpleado == codigoEmpleado)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellidos, apellidos) || other.apellidos == apellidos)&&(identical(other.email, email) || other.email == email)&&(identical(other.telefono, telefono) || other.telefono == telefono)&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.ciudad, ciudad) || other.ciudad == ciudad)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.fechaNacimiento, fechaNacimiento) || other.fechaNacimiento == fechaNacimiento)&&(identical(other.salarioBase, salarioBase) || other.salarioBase == salarioBase)&&(identical(other.tipoContrato, tipoContrato) || other.tipoContrato == tipoContrato)&&(identical(other.jornada, jornada) || other.jornada == jornada)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.imagenUrl, imagenUrl) || other.imagenUrl == imagenUrl)&&(identical(other.puesto, puesto) || other.puesto == puesto)&&(identical(other.dniNie, dniNie) || other.dniNie == dniNie)&&(identical(other.fechaAlta, fechaAlta) || other.fechaAlta == fechaAlta)&&(identical(other.fechaBaja, fechaBaja) || other.fechaBaja == fechaBaja)&&(identical(other.saldoVacaciones, saldoVacaciones) || other.saldoVacaciones == saldoVacaciones)&&(identical(other.isActivo, isActivo) || other.isActivo == isActivo)&&(identical(other.idDepartamento, idDepartamento) || other.idDepartamento == idDepartamento)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.idUsuario, idUsuario) || other.idUsuario == idUsuario)&&(identical(other.departamentoNombre, departamentoNombre) || other.departamentoNombre == departamentoNombre));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,codigoEmpleado,nombre,apellidos,email,telefono,direccion,ciudad,provincia,codigoPostal,fechaNacimiento,salarioBase,tipoContrato,jornada,observaciones,imagenUrl,puesto,dniNie,fechaAlta,fechaBaja,saldoVacaciones,isActivo,idDepartamento,idEmpresa,idUsuario,departamentoNombre]);

@override
String toString() {
  return 'EmpleadoCreateApiModel(codigoEmpleado: $codigoEmpleado, nombre: $nombre, apellidos: $apellidos, email: $email, telefono: $telefono, direccion: $direccion, ciudad: $ciudad, provincia: $provincia, codigoPostal: $codigoPostal, fechaNacimiento: $fechaNacimiento, salarioBase: $salarioBase, tipoContrato: $tipoContrato, jornada: $jornada, observaciones: $observaciones, imagenUrl: $imagenUrl, puesto: $puesto, dniNie: $dniNie, fechaAlta: $fechaAlta, fechaBaja: $fechaBaja, saldoVacaciones: $saldoVacaciones, isActivo: $isActivo, idDepartamento: $idDepartamento, idEmpresa: $idEmpresa, idUsuario: $idUsuario, departamentoNombre: $departamentoNombre)';
}


}

/// @nodoc
abstract mixin class _$EmpleadoCreateApiModelCopyWith<$Res> implements $EmpleadoCreateApiModelCopyWith<$Res> {
  factory _$EmpleadoCreateApiModelCopyWith(_EmpleadoCreateApiModel value, $Res Function(_EmpleadoCreateApiModel) _then) = __$EmpleadoCreateApiModelCopyWithImpl;
@override @useResult
$Res call({
 String codigoEmpleado, String nombre, String apellidos, String email, String telefono, String direccion, String ciudad, String provincia, String codigoPostal, DateTime fechaNacimiento, double salarioBase, String tipoContrato, String jornada, String? observaciones, String? imagenUrl, String puesto, String dniNie, DateTime fechaAlta, DateTime? fechaBaja, int saldoVacaciones, bool isActivo, int idDepartamento, int idEmpresa, int idUsuario, String departamentoNombre
});




}
/// @nodoc
class __$EmpleadoCreateApiModelCopyWithImpl<$Res>
    implements _$EmpleadoCreateApiModelCopyWith<$Res> {
  __$EmpleadoCreateApiModelCopyWithImpl(this._self, this._then);

  final _EmpleadoCreateApiModel _self;
  final $Res Function(_EmpleadoCreateApiModel) _then;

/// Create a copy of EmpleadoCreateApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? codigoEmpleado = null,Object? nombre = null,Object? apellidos = null,Object? email = null,Object? telefono = null,Object? direccion = null,Object? ciudad = null,Object? provincia = null,Object? codigoPostal = null,Object? fechaNacimiento = null,Object? salarioBase = null,Object? tipoContrato = null,Object? jornada = null,Object? observaciones = freezed,Object? imagenUrl = freezed,Object? puesto = null,Object? dniNie = null,Object? fechaAlta = null,Object? fechaBaja = freezed,Object? saldoVacaciones = null,Object? isActivo = null,Object? idDepartamento = null,Object? idEmpresa = null,Object? idUsuario = null,Object? departamentoNombre = null,}) {
  return _then(_EmpleadoCreateApiModel(
codigoEmpleado: null == codigoEmpleado ? _self.codigoEmpleado : codigoEmpleado // ignore: cast_nullable_to_non_nullable
as String,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,apellidos: null == apellidos ? _self.apellidos : apellidos // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,telefono: null == telefono ? _self.telefono : telefono // ignore: cast_nullable_to_non_nullable
as String,direccion: null == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String,ciudad: null == ciudad ? _self.ciudad : ciudad // ignore: cast_nullable_to_non_nullable
as String,provincia: null == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String,codigoPostal: null == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String,fechaNacimiento: null == fechaNacimiento ? _self.fechaNacimiento : fechaNacimiento // ignore: cast_nullable_to_non_nullable
as DateTime,salarioBase: null == salarioBase ? _self.salarioBase : salarioBase // ignore: cast_nullable_to_non_nullable
as double,tipoContrato: null == tipoContrato ? _self.tipoContrato : tipoContrato // ignore: cast_nullable_to_non_nullable
as String,jornada: null == jornada ? _self.jornada : jornada // ignore: cast_nullable_to_non_nullable
as String,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,imagenUrl: freezed == imagenUrl ? _self.imagenUrl : imagenUrl // ignore: cast_nullable_to_non_nullable
as String?,puesto: null == puesto ? _self.puesto : puesto // ignore: cast_nullable_to_non_nullable
as String,dniNie: null == dniNie ? _self.dniNie : dniNie // ignore: cast_nullable_to_non_nullable
as String,fechaAlta: null == fechaAlta ? _self.fechaAlta : fechaAlta // ignore: cast_nullable_to_non_nullable
as DateTime,fechaBaja: freezed == fechaBaja ? _self.fechaBaja : fechaBaja // ignore: cast_nullable_to_non_nullable
as DateTime?,saldoVacaciones: null == saldoVacaciones ? _self.saldoVacaciones : saldoVacaciones // ignore: cast_nullable_to_non_nullable
as int,isActivo: null == isActivo ? _self.isActivo : isActivo // ignore: cast_nullable_to_non_nullable
as bool,idDepartamento: null == idDepartamento ? _self.idDepartamento : idDepartamento // ignore: cast_nullable_to_non_nullable
as int,idEmpresa: null == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int,idUsuario: null == idUsuario ? _self.idUsuario : idUsuario // ignore: cast_nullable_to_non_nullable
as int,departamentoNombre: null == departamentoNombre ? _self.departamentoNombre : departamentoNombre // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

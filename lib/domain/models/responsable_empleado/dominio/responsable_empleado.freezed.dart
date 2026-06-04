// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'responsable_empleado.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponsableEmpleado {

 int get idResponsableEmpleado; int get idEmpleado; Empleado? get empleado; int get idResponsable; Responsable? get responsable; int get idEmpresa; Empresa? get empresa; DateTime get fechaInicio; DateTime get fechaFin; String get tipoResponsabilidad; String get observaciones; bool get activo; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of ResponsableEmpleado
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponsableEmpleadoCopyWith<ResponsableEmpleado> get copyWith => _$ResponsableEmpleadoCopyWithImpl<ResponsableEmpleado>(this as ResponsableEmpleado, _$identity);

  /// Serializes this ResponsableEmpleado to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponsableEmpleado&&(identical(other.idResponsableEmpleado, idResponsableEmpleado) || other.idResponsableEmpleado == idResponsableEmpleado)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.empleado, empleado) || other.empleado == empleado)&&(identical(other.idResponsable, idResponsable) || other.idResponsable == idResponsable)&&(identical(other.responsable, responsable) || other.responsable == responsable)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.empresa, empresa) || other.empresa == empresa)&&(identical(other.fechaInicio, fechaInicio) || other.fechaInicio == fechaInicio)&&(identical(other.fechaFin, fechaFin) || other.fechaFin == fechaFin)&&(identical(other.tipoResponsabilidad, tipoResponsabilidad) || other.tipoResponsabilidad == tipoResponsabilidad)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.activo, activo) || other.activo == activo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idResponsableEmpleado,idEmpleado,empleado,idResponsable,responsable,idEmpresa,empresa,fechaInicio,fechaFin,tipoResponsabilidad,observaciones,activo,createdAt,updatedAt);

@override
String toString() {
  return 'ResponsableEmpleado(idResponsableEmpleado: $idResponsableEmpleado, idEmpleado: $idEmpleado, empleado: $empleado, idResponsable: $idResponsable, responsable: $responsable, idEmpresa: $idEmpresa, empresa: $empresa, fechaInicio: $fechaInicio, fechaFin: $fechaFin, tipoResponsabilidad: $tipoResponsabilidad, observaciones: $observaciones, activo: $activo, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ResponsableEmpleadoCopyWith<$Res>  {
  factory $ResponsableEmpleadoCopyWith(ResponsableEmpleado value, $Res Function(ResponsableEmpleado) _then) = _$ResponsableEmpleadoCopyWithImpl;
@useResult
$Res call({
 int idResponsableEmpleado, int idEmpleado, Empleado? empleado, int idResponsable, Responsable? responsable, int idEmpresa, Empresa? empresa, DateTime fechaInicio, DateTime fechaFin, String tipoResponsabilidad, String observaciones, bool activo, DateTime createdAt, DateTime updatedAt
});


$EmpleadoCopyWith<$Res>? get empleado;$ResponsableCopyWith<$Res>? get responsable;$EmpresaCopyWith<$Res>? get empresa;

}
/// @nodoc
class _$ResponsableEmpleadoCopyWithImpl<$Res>
    implements $ResponsableEmpleadoCopyWith<$Res> {
  _$ResponsableEmpleadoCopyWithImpl(this._self, this._then);

  final ResponsableEmpleado _self;
  final $Res Function(ResponsableEmpleado) _then;

/// Create a copy of ResponsableEmpleado
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idResponsableEmpleado = null,Object? idEmpleado = null,Object? empleado = freezed,Object? idResponsable = null,Object? responsable = freezed,Object? idEmpresa = null,Object? empresa = freezed,Object? fechaInicio = null,Object? fechaFin = null,Object? tipoResponsabilidad = null,Object? observaciones = null,Object? activo = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
idResponsableEmpleado: null == idResponsableEmpleado ? _self.idResponsableEmpleado : idResponsableEmpleado // ignore: cast_nullable_to_non_nullable
as int,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,empleado: freezed == empleado ? _self.empleado : empleado // ignore: cast_nullable_to_non_nullable
as Empleado?,idResponsable: null == idResponsable ? _self.idResponsable : idResponsable // ignore: cast_nullable_to_non_nullable
as int,responsable: freezed == responsable ? _self.responsable : responsable // ignore: cast_nullable_to_non_nullable
as Responsable?,idEmpresa: null == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int,empresa: freezed == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa?,fechaInicio: null == fechaInicio ? _self.fechaInicio : fechaInicio // ignore: cast_nullable_to_non_nullable
as DateTime,fechaFin: null == fechaFin ? _self.fechaFin : fechaFin // ignore: cast_nullable_to_non_nullable
as DateTime,tipoResponsabilidad: null == tipoResponsabilidad ? _self.tipoResponsabilidad : tipoResponsabilidad // ignore: cast_nullable_to_non_nullable
as String,observaciones: null == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String,activo: null == activo ? _self.activo : activo // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of ResponsableEmpleado
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpleadoCopyWith<$Res>? get empleado {
    if (_self.empleado == null) {
    return null;
  }

  return $EmpleadoCopyWith<$Res>(_self.empleado!, (value) {
    return _then(_self.copyWith(empleado: value));
  });
}/// Create a copy of ResponsableEmpleado
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponsableCopyWith<$Res>? get responsable {
    if (_self.responsable == null) {
    return null;
  }

  return $ResponsableCopyWith<$Res>(_self.responsable!, (value) {
    return _then(_self.copyWith(responsable: value));
  });
}/// Create a copy of ResponsableEmpleado
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpresaCopyWith<$Res>? get empresa {
    if (_self.empresa == null) {
    return null;
  }

  return $EmpresaCopyWith<$Res>(_self.empresa!, (value) {
    return _then(_self.copyWith(empresa: value));
  });
}
}


/// Adds pattern-matching-related methods to [ResponsableEmpleado].
extension ResponsableEmpleadoPatterns on ResponsableEmpleado {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResponsableEmpleado value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponsableEmpleado() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResponsableEmpleado value)  $default,){
final _that = this;
switch (_that) {
case _ResponsableEmpleado():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResponsableEmpleado value)?  $default,){
final _that = this;
switch (_that) {
case _ResponsableEmpleado() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int idResponsableEmpleado,  int idEmpleado,  Empleado? empleado,  int idResponsable,  Responsable? responsable,  int idEmpresa,  Empresa? empresa,  DateTime fechaInicio,  DateTime fechaFin,  String tipoResponsabilidad,  String observaciones,  bool activo,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponsableEmpleado() when $default != null:
return $default(_that.idResponsableEmpleado,_that.idEmpleado,_that.empleado,_that.idResponsable,_that.responsable,_that.idEmpresa,_that.empresa,_that.fechaInicio,_that.fechaFin,_that.tipoResponsabilidad,_that.observaciones,_that.activo,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int idResponsableEmpleado,  int idEmpleado,  Empleado? empleado,  int idResponsable,  Responsable? responsable,  int idEmpresa,  Empresa? empresa,  DateTime fechaInicio,  DateTime fechaFin,  String tipoResponsabilidad,  String observaciones,  bool activo,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ResponsableEmpleado():
return $default(_that.idResponsableEmpleado,_that.idEmpleado,_that.empleado,_that.idResponsable,_that.responsable,_that.idEmpresa,_that.empresa,_that.fechaInicio,_that.fechaFin,_that.tipoResponsabilidad,_that.observaciones,_that.activo,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int idResponsableEmpleado,  int idEmpleado,  Empleado? empleado,  int idResponsable,  Responsable? responsable,  int idEmpresa,  Empresa? empresa,  DateTime fechaInicio,  DateTime fechaFin,  String tipoResponsabilidad,  String observaciones,  bool activo,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ResponsableEmpleado() when $default != null:
return $default(_that.idResponsableEmpleado,_that.idEmpleado,_that.empleado,_that.idResponsable,_that.responsable,_that.idEmpresa,_that.empresa,_that.fechaInicio,_that.fechaFin,_that.tipoResponsabilidad,_that.observaciones,_that.activo,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResponsableEmpleado implements ResponsableEmpleado {
  const _ResponsableEmpleado({required this.idResponsableEmpleado, required this.idEmpleado, this.empleado, required this.idResponsable, this.responsable, required this.idEmpresa, this.empresa, required this.fechaInicio, required this.fechaFin, required this.tipoResponsabilidad, required this.observaciones, required this.activo, required this.createdAt, required this.updatedAt});
  factory _ResponsableEmpleado.fromJson(Map<String, dynamic> json) => _$ResponsableEmpleadoFromJson(json);

@override final  int idResponsableEmpleado;
@override final  int idEmpleado;
@override final  Empleado? empleado;
@override final  int idResponsable;
@override final  Responsable? responsable;
@override final  int idEmpresa;
@override final  Empresa? empresa;
@override final  DateTime fechaInicio;
@override final  DateTime fechaFin;
@override final  String tipoResponsabilidad;
@override final  String observaciones;
@override final  bool activo;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of ResponsableEmpleado
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponsableEmpleadoCopyWith<_ResponsableEmpleado> get copyWith => __$ResponsableEmpleadoCopyWithImpl<_ResponsableEmpleado>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponsableEmpleadoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponsableEmpleado&&(identical(other.idResponsableEmpleado, idResponsableEmpleado) || other.idResponsableEmpleado == idResponsableEmpleado)&&(identical(other.idEmpleado, idEmpleado) || other.idEmpleado == idEmpleado)&&(identical(other.empleado, empleado) || other.empleado == empleado)&&(identical(other.idResponsable, idResponsable) || other.idResponsable == idResponsable)&&(identical(other.responsable, responsable) || other.responsable == responsable)&&(identical(other.idEmpresa, idEmpresa) || other.idEmpresa == idEmpresa)&&(identical(other.empresa, empresa) || other.empresa == empresa)&&(identical(other.fechaInicio, fechaInicio) || other.fechaInicio == fechaInicio)&&(identical(other.fechaFin, fechaFin) || other.fechaFin == fechaFin)&&(identical(other.tipoResponsabilidad, tipoResponsabilidad) || other.tipoResponsabilidad == tipoResponsabilidad)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.activo, activo) || other.activo == activo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idResponsableEmpleado,idEmpleado,empleado,idResponsable,responsable,idEmpresa,empresa,fechaInicio,fechaFin,tipoResponsabilidad,observaciones,activo,createdAt,updatedAt);

@override
String toString() {
  return 'ResponsableEmpleado(idResponsableEmpleado: $idResponsableEmpleado, idEmpleado: $idEmpleado, empleado: $empleado, idResponsable: $idResponsable, responsable: $responsable, idEmpresa: $idEmpresa, empresa: $empresa, fechaInicio: $fechaInicio, fechaFin: $fechaFin, tipoResponsabilidad: $tipoResponsabilidad, observaciones: $observaciones, activo: $activo, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ResponsableEmpleadoCopyWith<$Res> implements $ResponsableEmpleadoCopyWith<$Res> {
  factory _$ResponsableEmpleadoCopyWith(_ResponsableEmpleado value, $Res Function(_ResponsableEmpleado) _then) = __$ResponsableEmpleadoCopyWithImpl;
@override @useResult
$Res call({
 int idResponsableEmpleado, int idEmpleado, Empleado? empleado, int idResponsable, Responsable? responsable, int idEmpresa, Empresa? empresa, DateTime fechaInicio, DateTime fechaFin, String tipoResponsabilidad, String observaciones, bool activo, DateTime createdAt, DateTime updatedAt
});


@override $EmpleadoCopyWith<$Res>? get empleado;@override $ResponsableCopyWith<$Res>? get responsable;@override $EmpresaCopyWith<$Res>? get empresa;

}
/// @nodoc
class __$ResponsableEmpleadoCopyWithImpl<$Res>
    implements _$ResponsableEmpleadoCopyWith<$Res> {
  __$ResponsableEmpleadoCopyWithImpl(this._self, this._then);

  final _ResponsableEmpleado _self;
  final $Res Function(_ResponsableEmpleado) _then;

/// Create a copy of ResponsableEmpleado
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idResponsableEmpleado = null,Object? idEmpleado = null,Object? empleado = freezed,Object? idResponsable = null,Object? responsable = freezed,Object? idEmpresa = null,Object? empresa = freezed,Object? fechaInicio = null,Object? fechaFin = null,Object? tipoResponsabilidad = null,Object? observaciones = null,Object? activo = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_ResponsableEmpleado(
idResponsableEmpleado: null == idResponsableEmpleado ? _self.idResponsableEmpleado : idResponsableEmpleado // ignore: cast_nullable_to_non_nullable
as int,idEmpleado: null == idEmpleado ? _self.idEmpleado : idEmpleado // ignore: cast_nullable_to_non_nullable
as int,empleado: freezed == empleado ? _self.empleado : empleado // ignore: cast_nullable_to_non_nullable
as Empleado?,idResponsable: null == idResponsable ? _self.idResponsable : idResponsable // ignore: cast_nullable_to_non_nullable
as int,responsable: freezed == responsable ? _self.responsable : responsable // ignore: cast_nullable_to_non_nullable
as Responsable?,idEmpresa: null == idEmpresa ? _self.idEmpresa : idEmpresa // ignore: cast_nullable_to_non_nullable
as int,empresa: freezed == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa?,fechaInicio: null == fechaInicio ? _self.fechaInicio : fechaInicio // ignore: cast_nullable_to_non_nullable
as DateTime,fechaFin: null == fechaFin ? _self.fechaFin : fechaFin // ignore: cast_nullable_to_non_nullable
as DateTime,tipoResponsabilidad: null == tipoResponsabilidad ? _self.tipoResponsabilidad : tipoResponsabilidad // ignore: cast_nullable_to_non_nullable
as String,observaciones: null == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String,activo: null == activo ? _self.activo : activo // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of ResponsableEmpleado
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpleadoCopyWith<$Res>? get empleado {
    if (_self.empleado == null) {
    return null;
  }

  return $EmpleadoCopyWith<$Res>(_self.empleado!, (value) {
    return _then(_self.copyWith(empleado: value));
  });
}/// Create a copy of ResponsableEmpleado
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponsableCopyWith<$Res>? get responsable {
    if (_self.responsable == null) {
    return null;
  }

  return $ResponsableCopyWith<$Res>(_self.responsable!, (value) {
    return _then(_self.copyWith(responsable: value));
  });
}/// Create a copy of ResponsableEmpleado
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpresaCopyWith<$Res>? get empresa {
    if (_self.empresa == null) {
    return null;
  }

  return $EmpresaCopyWith<$Res>(_self.empresa!, (value) {
    return _then(_self.copyWith(empresa: value));
  });
}
}

// dart format on

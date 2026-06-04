import 'package:flutter/material.dart';

/// Clase `Dimens`
/// 
/// Esta clase define las dimensiones y márgenes utilizados en la interfaz de la aplicación,
/// como los valores de relleno (padding) horizontales y verticales.  
/// 
/// Su objetivo es mantener una consistencia visual entre diferentes tamaños de pantalla
/// (móvil, escritorio y web), adaptando automáticamente los espacios y proporciones mediante
/// el método `Dimens.of(context)`, que selecciona la configuración adecuada
/// según el ancho del dispositivo.  
/// 
/// Además, proporciona utilidades para obtener `EdgeInsets` comunes que facilitan
/// la alineación y separación de elementos en toda la interfaz.

abstract final class Dimens {
  const Dimens();

  /// Relleno horizontal general utilizado para separar elementos de la interfaz
  static const paddingHorizontal = 20.0;

  /// Relleno vertical general utilizado para separar elementos de la interfaz
  static const paddingVertical = 24.0;

  /// Relleno horizontal para los bordes de la pantalla
  double get paddingScreenHorizontal;

  /// Relleno vertical para los bordes de la pantalla
  double get paddingScreenVertical;

  double get profilePictureSize;

  /// Relleno horizontal simétrico para los bordes de la pantalla
  EdgeInsets get edgeInsetsScreenHorizontal =>
      EdgeInsets.symmetric(horizontal: paddingScreenHorizontal);

  /// Relleno simétrico para los bordes de la pantalla
  EdgeInsets get edgeInsetsScreenSymmetric => EdgeInsets.symmetric(
    horizontal: paddingScreenHorizontal,
    vertical: paddingScreenVertical,
  );

  static const Dimens desktop = _DimensDesktop();
  static const Dimens mobile = _DimensMobile();

  /// Obtiene la definición de dimensiones basada en el tamaño de la pantalla
  factory Dimens.of(BuildContext context) =>
      switch (MediaQuery.sizeOf(context).width) {
        > 600 && < 840 => desktop,
        _ => mobile,
      };
}

/// Dimensiones para dispositivos móviles
final class _DimensMobile extends Dimens {
  @override
  final double paddingScreenHorizontal = Dimens.paddingHorizontal;

  @override
  final double paddingScreenVertical = Dimens.paddingVertical;

  @override
  final double profilePictureSize = 64.0;

  const _DimensMobile();
}

/// Dimensiones para escritorio o web
final class _DimensDesktop extends Dimens {
  @override
  final double paddingScreenHorizontal = 100.0;

  @override
  final double paddingScreenVertical = 64.0;

  @override
  final double profilePictureSize = 128.0;

  const _DimensDesktop();
}

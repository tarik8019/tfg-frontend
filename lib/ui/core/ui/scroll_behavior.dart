import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AppCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
// Permitir arrastrar el ratón sobre el círculo de áreas
    PointerDeviceKind.mouse,
  };
}
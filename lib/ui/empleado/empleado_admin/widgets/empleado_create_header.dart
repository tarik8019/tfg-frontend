import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../domain/models/empleado/dominio/empleado.dart';
import '../../../../utils/image_error_listener.dart';
import '../../../core/localization/applocalization.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/dimens.dart';
import '../../../core/ui/date_format_start_end.dart';
import '../../../core/ui/home_button.dart';
import '../../../core/ui/tag_chip.dart';

class EmpleadoCreateHeader extends StatelessWidget {
  const EmpleadoCreateHeader({super.key, required this.empleado});

  final Empleado empleado;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Top(empleado: empleado),

       
        Padding(
          padding: Dimens.of(context).edgeInsetsScreenHorizontal,
          child: Text(
            empleado.puesto, 
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),

        const SizedBox(height: Dimens.paddingVertical),

        _Tags(empleado: empleado),

        const SizedBox(height: Dimens.paddingVertical),

        Padding(
          padding: Dimens.of(context).edgeInsetsScreenHorizontal,
          child: Text(
            AppLocalization.of(context).employeeDetails,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ],
    );
  }
}

class _Top extends StatelessWidget {
  const _Top({required this.empleado});

  final Empleado empleado;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: Stack(
        fit: StackFit.expand,
        children: [
          _HeaderImage(empleado: empleado),
          const _Gradient(),
          _Headline(empleado: empleado),
          Positioned(
            right: Dimens.of(context).paddingScreenHorizontal,
            top: Dimens.of(context).paddingScreenVertical,
            child: const SafeArea(top: true, child: HomeButton(blur: true)),
          ),
        ],
      ),
    );
  }
}

class _Tags extends StatelessWidget {
  const _Tags({required this.empleado});

  final Empleado empleado;

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final chipColor = switch (brightness) {
      Brightness.dark => AppColors.whiteTransparent,
      Brightness.light => AppColors.blackTransparent,
    };

    // Reemplazo tags falsos por tags reales 
    final tags = [
      empleado.puesto,
      empleado.empresa!.nombre,
      empleado.isActivo ? "Activo" : "Inactivo",
    ];

    return Padding(
      padding: Dimens.of(context).edgeInsetsScreenHorizontal,
      child: Wrap(
        spacing: 6,
        runSpacing: 6,
        children: tags
            .map(
              (tag) => TagChip(
                tag: tag,
                fontSize: 16,
                height: 32,
                chipColor: chipColor,
                onChipColor: Theme.of(context).colorScheme.onSurface,
              ),
            )
            .toList(),
      ),
    );
  }
}

class _Headline extends StatelessWidget {
  const _Headline({required this.empleado});

  final Empleado empleado;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomStart,
      child: Padding(
        padding: Dimens.of(context).edgeInsetsScreenSymmetric,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Nombre 
            Text(
              "${empleado.nombre} ${empleado.apellidos}",
              style: Theme.of(context).textTheme.headlineLarge,
            ),

            // Fecha de alta 
            Text(
              dateFormatStartEnd(
                DateTimeRange(
                  start: empleado.fechaAlta,
                  end: empleado.fechaAlta.add(const Duration(days: 1)),
                ),
              ),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}

class _HeaderImage extends StatelessWidget {
  const _HeaderImage({required this.empleado});

  final Empleado empleado;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      imageUrl: empleado.imagenUrl!, 
      errorListener: imageErrorListener,
    );
  }
}

class _Gradient extends StatelessWidget {
  const _Gradient();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, Theme.of(context).colorScheme.surface],
        ),
      ),
    );
  }
}

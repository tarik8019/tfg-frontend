import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../utils/image_error_listener.dart';
import '../../../core/themes/dimens.dart';
import '../../../core/localization/applocalization.dart';
import '../../../core/themes/colors.dart';
import '../../../core/ui/tag_chip.dart';


class EmpleadoAdminHeader extends StatelessWidget {
  const EmpleadoAdminHeader({super.key, required this.total});

  final int total;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TopSection(total: total),
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

class _TopSection extends StatelessWidget {
  const _TopSection({required this.total});

  final int total;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CachedNetworkImage(
            imageUrl:
                "https://images.unsplash.com/photo-1542744173-8e7e53415bb0",
            fit: BoxFit.cover,
            errorListener: imageErrorListener,
          ),
          Container(
            color: Colors.black26,
          ),
          _Headline(total: total),
        ],
      ),
    );
  }
}

class _Headline extends StatelessWidget {
  const _Headline({required this.total});

  final int total;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.of(context).edgeInsetsScreenSymmetric,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          "${AppLocalization.of(context).employees}: $total",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}

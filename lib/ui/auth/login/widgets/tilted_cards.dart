import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoCard extends StatelessWidget {
  const LogoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.5, 
        child: AspectRatio(
          aspectRatio: 1,   
          child: SvgPicture.asset( 
            'assets/logo_login2.svg',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

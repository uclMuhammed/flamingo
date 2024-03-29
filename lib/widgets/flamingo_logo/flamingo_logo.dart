import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FlamingoLogo extends StatelessWidget {
  const FlamingoLogo({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight,
  });
  final BoxConstraints? sizeWidth;
  final BoxConstraints? sizeHeight;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/logo/flamingo.svg',
      width: sizeWidth!.maxWidth,
      height: sizeHeight!.maxWidth,
    );
  }
}

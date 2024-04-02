import 'package:flamingo/widgets/custom_image/custom_image.dart';
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
    required this.sizeW,
    required this.sizeH,
  });
  final double sizeW;
  final double sizeH;

  @override
  Widget build(BuildContext context) {
    return CustomImage(
      assets: 'assets/backimage.png',
      width: sizeW,
      height: sizeH,
      fit: BoxFit.fill,
    );
  }
}

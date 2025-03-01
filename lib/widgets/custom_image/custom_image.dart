import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {super.key,
      required this.assets,
      required this.width,
      required this.height,
      required this.fit});
  final String assets;
  final double width;
  final double height;
  final BoxFit fit;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assets,
      width: width,
      height: height,
      fit: fit,
    );
  }
}

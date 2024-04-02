import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvg extends StatelessWidget {
  const CustomSvg(
      {super.key,
      required this.assets,
      required this.width,
      required this.height});
  final String assets;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assets,
      width: width,
      height: height,
    );
  }
}

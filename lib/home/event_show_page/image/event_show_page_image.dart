import 'package:core/extension/size/size.dart';
import 'package:flamingo/widgets/custom_image/custom_image.dart';
import 'package:flutter/material.dart';

class ShowPageImage extends StatelessWidget {
  const ShowPageImage({
    super.key,
    required this.sizeW,
    required this.sizeH,
  });
  final double sizeW;
  final double sizeH;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomImage(
          assets: 'assets/backimage.png',
          width: sizeW,
          height: sizeH,
          fit: BoxFit.cover,
        ),
        Container(
          height: context.height,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 0),
                blurRadius: 25,
                spreadRadius: 25,
              )
            ],
          ),
        ),
      ],
    );
  }
}

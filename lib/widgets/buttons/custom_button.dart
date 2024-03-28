import 'package:flamingo/widgets/texts/texts.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.sizeWidth,
    required this.sizeHeight,
    required this.borderRadius,
  });
  final double? sizeWidth;
  final double? sizeHeight;
  final double? borderRadius;
  final String? text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        fixedSize: Size(sizeWidth!, sizeHeight!),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
      ),
      child: Text(
        text!,
        style: normalStyle(context),
      ),
    );
  }
}

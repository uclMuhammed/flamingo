import 'package:flamingo/widgets/texts/texts.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.normalText,
    required this.buttonText,
    required this.onPressed,
  });
  final String normalText;
  final String buttonText;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          normalText,
          style: normalStyle(context),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: textButtonStyle(context),
          ),
        ),
      ],
    );
  }
}

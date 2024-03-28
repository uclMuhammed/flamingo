import 'package:flamingo/widgets/texts/texts.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.emailController,
    required this.label,
    required this.textInputType,
    required this.obscureText,
    this.suffixIcon,
    this.suffix,
  });

  final TextEditingController emailController;
  final bool obscureText;
  final String? label;
  final TextInputType? textInputType;
  final IconButton? suffixIcon;
  final Icon? suffix;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: emailController,
      obscureText: obscureText,
      keyboardType: textInputType!,
      style: contentStyle(context),
      decoration: InputDecoration(
          labelStyle: normalStyle(context),
          suffixIcon: suffixIcon,
          suffix: suffix,
          label: Text(label!),
          enabledBorder:
              myOutlineBorder(Theme.of(context).colorScheme.inversePrimary),
          focusedBorder:
              myOutlineBorder(Theme.of(context).colorScheme.secondary),
          errorBorder: myOutlineBorder(Colors.red),
          disabledBorder:
              myOutlineBorder(Theme.of(context).colorScheme.inversePrimary),
          focusedErrorBorder: myOutlineBorder(Colors.red)),
    );
  }

  OutlineInputBorder myOutlineBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 2),
    );
  }
}

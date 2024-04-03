import 'package:core/extension/padding/padding.dart';
import 'package:flamingo/widgets/text_field/custom_text_field.dart';
import 'package:flutter/material.dart';

class SendMessage extends StatelessWidget {
  const SendMessage({
    super.key,
    required this.controller,
    required this.size,
  });

  final TextEditingController controller;
  final BoxConstraints size;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            controller: controller,
            label: 'Mesaj ',
            textInputType: TextInputType.name,
            obscureText: false,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.send_rounded,
                size: size.maxWidth * 0.085,
              ),
            ),
          ).paddingAll(size.maxWidth * 0.05),
        ),
      ],
    );
  }
}

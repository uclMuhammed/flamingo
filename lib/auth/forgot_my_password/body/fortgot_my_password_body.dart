import 'package:flamingo/widgets/buttons/custom_button.dart';
import 'package:flamingo/widgets/text_field/custom_text_field.dart';
import 'package:flutter/material.dart';

class ForgotMyPasswordBody extends StatelessWidget {
  const ForgotMyPasswordBody(
      {super.key, required this.emailController, required this.size});
  final TextEditingController emailController;
  final BoxConstraints size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //email TextFormField
        CustomTextField(
          controller: emailController,
          textInputType: TextInputType.emailAddress,
          suffix: const Icon(Icons.email_outlined),
          obscureText: false,
          label: 'E-mail',
        ),

        SizedBox(
          height: size.maxHeight * 0.02,
        ),

        // Send password change address to e-mail
        CustomButton(
          text: "Reset Password",
          onPressed: () {},
          sizeWidth: size.maxWidth,
          sizeHeight: size.maxHeight * 0.07,
          borderRadius: 5,
        ),
        SizedBox(
          height: size.maxHeight * 0.03,
        ),
      ],
    );
  }
}

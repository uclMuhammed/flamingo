import 'package:flamingo/widgets/buttons/custom_button.dart';
import 'package:flamingo/widgets/texts/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    super.key,
    required this.emailController,
    required this.passController,
    required this.size,
    required this.obscureText,
  });
  final TextEditingController emailController;
  final TextEditingController passController;
  final BoxConstraints size;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Name
        CustomTextField(
          emailController: emailController,
          textInputType: TextInputType.name,
          suffix: const Icon(Icons.person),
          obscureText: false,
          label: 'Name',
        ),

        SizedBox(
          height: size.maxHeight * 0.02,
        ),

        //email TextFormField
        CustomTextField(
          emailController: emailController,
          textInputType: TextInputType.emailAddress,
          suffix: const Icon(Icons.email_outlined),
          obscureText: false,
          label: 'E-mail',
        ),

        SizedBox(
          height: size.maxHeight * 0.02,
        ),

        //Password TextFormField
        CustomTextField(
          emailController: passController,
          textInputType: TextInputType.name,
          obscureText: obscureText,
          suffixIcon: IconButton(
            icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
            onPressed: () {},
          ),
          label: 'Password',
        ),

        SizedBox(
          height: size.maxHeight * 0.03,
        ),

        // Login Button
        CustomButton(
          text: "Sign Up",
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

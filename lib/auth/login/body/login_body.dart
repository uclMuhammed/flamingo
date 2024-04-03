import 'package:flamingo/home/homepage.dart';
import 'package:flamingo/widgets/buttons/custom_button.dart';
import 'package:flamingo/widgets/text_field/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody(
      {super.key,
      required this.emailController,
      required this.passController,
      required this.size,
      required this.obscureText});
  final TextEditingController emailController;
  final TextEditingController passController;
  final BoxConstraints size;
  final bool obscureText;
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

        //Password TextFormField
        CustomTextField(
          controller: passController,
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
          text: "Log In",
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const HomePage()),
            );
          },
          sizeWidth: size.maxWidth,
          sizeHeight: size.maxHeight * 0.07,
          borderRadius: 5,
        ),
      ],
    );
  }
}

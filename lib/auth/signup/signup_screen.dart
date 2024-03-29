import 'package:flamingo/auth/signup/body/signup_body.dart';
import 'package:flamingo/widgets/buttons/cutom_text_button.dart';
import 'package:flamingo/widgets/flamingo_logo/flamingo_logo.dart';
import 'package:flamingo/widgets/texts/texts.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          //appbar
          appBar: AppBar(
            title: Text(
              'Sign Up',
              style: titleStyle(context),
            ),
            centerTitle: true,
          ),
          //body
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.maxWidth * 0.07),
                child: Column(
                  children: [
                    //App Logo

                    FlamingoLogo(
                      sizeWidth: size * 0.3,
                      sizeHeight: size * 0.3,
                    ),
                    SizedBox(
                      height: size.maxHeight * 0.03,
                    ),

                    SignUpBody(
                      emailController: emailController,
                      passController: passController,
                      size: size,
                      obscureText: obscureText,
                    ),

                    //Line
                    Container(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      width: size.maxWidth,
                      height: 2,
                    ),
                    //Line

                    //Log In
                    CustomTextButton(
                      normalText: 'or',
                      buttonText: 'Log In',
                      onPressed: () => Navigator.pop(context),
                    ),
                    SizedBox(
                      height: size.maxHeight * 0.1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

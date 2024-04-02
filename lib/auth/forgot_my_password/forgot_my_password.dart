import 'package:core/text_style/text_style.dart';
import 'package:flamingo/auth/forgot_my_password/body/fortgot_my_password_body.dart';
import 'package:flamingo/widgets/buttons/cutom_text_button.dart';
import 'package:flamingo/widgets/flamingo_logo/flamingo_logo.dart';
import 'package:flutter/material.dart';

class ForgotMyPassword extends StatefulWidget {
  const ForgotMyPassword({super.key});

  @override
  State<ForgotMyPassword> createState() => _ForgotMyPasswordState();
}

class _ForgotMyPasswordState extends State<ForgotMyPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Change My Pass',
            style: titleStyle(context),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.maxWidth * 0.07),
              child: Column(
                children: [
                  //App Logo
                  FlamingoLogo(
                    sizeWidth: size.maxWidth * 0.3,
                    sizeHeight: size.maxWidth * 0.3,
                  ),
                  SizedBox(
                    height: size.maxHeight * 0.03,
                  ),

                  ForgotMyPasswordBody(
                    emailController: emailController,
                    size: size,
                  ),

                  //line
                  Container(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    width: size.maxWidth,
                    height: 2,
                  ),
                  // line

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
    });
  }
}

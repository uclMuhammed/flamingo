import 'package:core/text_style/text_style.dart';
import 'package:flamingo/auth/forgot_my_password/forgot_my_password.dart';
import 'package:flamingo/auth/login/body/login_body.dart';
import 'package:flamingo/auth/signup/signup_screen.dart';
import 'package:flamingo/widgets/buttons/cutom_text_button.dart';
import 'package:flamingo/widgets/flamingo_logo/flamingo_logo.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        return Scaffold(
          //appbar
          appBar: AppBar(
            title: Text(
              'Log In',
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
                      sizeWidth: size.maxWidth * 0.3,
                      sizeHeight: size.maxWidth * 0.3,
                    ),

                    SizedBox(
                      height: size.maxHeight * 0.03,
                    ),

                    LoginBody(
                      emailController: emailController,
                      passController: passController,
                      size: size,
                      obscureText: obscureText,
                    ),

                    SizedBox(
                      height: size.maxHeight * 0.01,
                    ),

                    CustomTextButton(
                      normalText: 'or',
                      buttonText: 'I Forgot My Password',
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ForgotMyPassword(),
                        ),
                      ),
                    ),

                    //Line
                    Container(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      width: size.maxWidth,
                      height: 2,
                    ),
                    //Line

                    //Hesabınız yokmu alanı
                    CustomTextButton(
                      normalText: "Don't have an account",
                      buttonText: "Sign Up",
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const SignupScreen(),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: size.maxHeight * 0.05,
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

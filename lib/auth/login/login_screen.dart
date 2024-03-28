import 'package:flamingo/widgets/buttons/custom_button.dart';
import 'package:flamingo/widgets/texts/custom_text_field.dart';
import 'package:flamingo/widgets/texts/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:theme/index.dart';

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
          backgroundColor: Theme.of(context).colorScheme.surface,
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
                padding: EdgeInsets.symmetric(horizontal: size.maxWidth * 0.06),
                child: Column(
                  children: [
                    //App Logo

                    SvgPicture.asset(
                      'assets/flamingo.svg',
                      width: size.maxWidth * 0.3,
                      height: size.maxWidth * 0.3,
                    ),

                    SizedBox(
                      height: size.maxHeight * 0.03,
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
                        icon: Icon(obscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                      ),
                      label: 'Password',
                    ),

                    SizedBox(
                      height: size.maxHeight * 0.03,
                    ),

                    // Login Button
                    CustomButton(
                      text: "Log In",
                      onPressed: () {},
                      sizeWidth: size.maxWidth,
                      sizeHeight: size.maxHeight * 0.07,
                      borderRadius: 5,
                    ),

                    SizedBox(
                      height: size.maxHeight * 0.25,
                    ),

                    Switch(
                      value: Provider.of<ThemeProvider>(context, listen: true)
                          .isDarkMode,
                      onChanged: (value) =>
                          Provider.of<ThemeProvider>(context, listen: false)
                              .toggleTheme(),
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

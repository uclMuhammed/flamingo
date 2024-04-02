import 'dart:async';
import 'package:core/text_style/text_style.dart';
import 'package:flamingo/auth/login/login_screen.dart';
import 'package:flamingo/widgets/flamingo_logo/flamingo_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => const LoginScreen(),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        return Scaffold(
          body: Container(
            color: Theme.of(context).colorScheme.secondary,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  FlamingoLogo(
                    sizeWidth: size.maxWidth * 0.3,
                    sizeHeight: size.maxWidth * 0.3,
                  ),
                  const Spacer(),
                  Text(
                    'F L A M I N G O',
                    style: splashTitleStyle(context),
                  ),
                  SizedBox(
                    height: size.maxHeight * 0.05,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

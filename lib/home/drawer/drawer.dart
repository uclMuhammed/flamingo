import 'package:flamingo/auth/login/login_screen.dart';
import 'package:flamingo/home/drawer/drawer_body/settings/settings.dart';
import 'package:flamingo/widgets/buttons/shortcut_button.dart';
import 'package:flamingo/widgets/custom_image/custom_image.dart';
import 'package:flamingo/widgets/flamingo_logo/flamingo_logo.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
    required this.size,
  });
  final BoxConstraints size;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.all(size.maxWidth * 0.07),
        child: Column(
          children: [
            Stack(
              children: [
                CustomImage(
                  assets: "assets/persons/person1.png",
                  width: size.maxWidth * 0.5,
                  height: size.maxWidth * 0.5,
                  fit: BoxFit.fill,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: size.maxHeight * 0.15,
                    ),
                    SizedBox(
                      width: size.maxWidth * 0.3,
                      child: FlamingoLogo(
                        sizeWidth: size.maxWidth * 0.1,
                        sizeHeight: size.maxWidth * 0.1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: size.maxHeight * 0.1,
            ),
            ShortcutButton(
              icon: Icons.person,
              shortCutName: "P R O F I L E",
              onTap: () {},
            ),
            SizedBox(
              height: size.maxHeight * 0.03,
            ),
            ShortcutButton(
              icon: Icons.local_activity,
              shortCutName: "M Y   E V E N T",
              onTap: () {},
            ),
            SizedBox(
              height: size.maxHeight * 0.03,
            ),
            ShortcutButton(
              icon: Icons.star_rounded,
              shortCutName: "F A V O R I T E",
              onTap: () {},
            ),
            SizedBox(
              height: size.maxHeight * 0.03,
            ),
            ShortcutButton(
              icon: Icons.join_full,
              shortCutName: "I   J O I N E D",
              onTap: () {},
            ),
            SizedBox(
              height: size.maxHeight * 0.03,
            ),
            ShortcutButton(
              icon: Icons.settings,
              shortCutName: "S E T T I N G S",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Settings()),
                );
              },
            ),
            SizedBox(
              height: size.maxHeight * 0.15,
            ),
            ShortcutButton(
              icon: Icons.arrow_back_ios,
              shortCutName: "S I G N  O U T",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LoginScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

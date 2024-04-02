import 'package:core/text_style/text_style.dart';
import 'package:flamingo/widgets/change_theme_switch/change_theme_switch.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          appBar: AppBar(
            title: Text(
              'S E T T I N G S',
              style: titleStyle(context),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.all(size.maxWidth * 0.07),
            child: Container(
              width: size.maxWidth,
              height: size.maxHeight * 0.07,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.maxWidth * 0.05),
                child: Row(
                  children: [
                    Text(
                      'Dark Mode',
                      style: normalStyle(context),
                    ),
                    const Spacer(),
                    const ChangeThemeSwitch()
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

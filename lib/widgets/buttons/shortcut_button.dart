import 'package:flamingo/widgets/texts/texts.dart';
import 'package:flutter/material.dart';

class ShortcutButton extends StatelessWidget {
  const ShortcutButton(
      {super.key,
      required this.icon,
      required this.shortCutName,
      required this.onTap});
  final IconData icon;
  final String shortCutName;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).colorScheme.primary,
      borderRadius: const BorderRadius.all(
        Radius.circular(250),
      ),
      onTap: onTap,
      child: Row(
        children: [
          const SizedBox(
            width: 5,
          ),
          Icon(icon),
          const SizedBox(
            width: 10,
          ),
          Text(
            shortCutName,
            style: normalStyle(context),
          ),
        ],
      ),
    );
  }
}

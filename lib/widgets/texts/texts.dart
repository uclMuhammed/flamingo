import 'package:flutter/material.dart';

TextStyle titleStyle(BuildContext context) {
  return TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w900,
    color: Theme.of(context).colorScheme.inversePrimary,
  );
}

TextStyle splashTitleStyle(BuildContext context) {
  return TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w900,
    color: Theme.of(context).colorScheme.inversePrimary,
  );
}

TextStyle normalStyle(BuildContext context) {
  return TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.inversePrimary,
  );
}

TextStyle contentStyle(BuildContext context) {
  return TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.inversePrimary,
  );
}

TextStyle textButtonStyle(BuildContext context) {
  return TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.secondary,
  );
}

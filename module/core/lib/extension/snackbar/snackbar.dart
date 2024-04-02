import 'package:flutter/material.dart';

extension SnackBarExtension on BuildContext {
  void showCustomSnackBar(String message) {
    final snackBar = SnackBar(
      content: Container(
        decoration: BoxDecoration(color: Theme.of(this).colorScheme.secondary),
        child: Text(
          message,
        ),
      ),
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.transparent,
      behavior: SnackBarBehavior.floating,
      elevation: 0,
    );
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}

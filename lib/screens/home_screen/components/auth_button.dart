import 'package:flutter/material.dart';

import '/extensions/neumorphism.dart';
import '../../../constants.dart';

class AuthButton extends StatelessWidget {
  final bool isLogin;
  final String label;

  const AuthButton({
    required this.isLogin,
    required this.label,
  });

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: Constants.usedDefaultPadding),
      child: TextButton.icon(
        onPressed: () {},
        icon: Icon(
          Icons.login_rounded,
          size: Constants.usedMenuIconSize,
        ),
        label: Text(label),
      ),
    ).addNeumorphism();
  }
}

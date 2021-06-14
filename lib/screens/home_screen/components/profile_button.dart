import 'package:flutter/material.dart';

import '/extensions/neumorphism.dart';
import '../../../constants.dart';

class ProfileButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.usedProfileButtonSize,
      width: Constants.usedProfileButtonSize,
      child: GestureDetector(
        child: Icon(
          Icons.person_outline_rounded,
          size: Constants.usedProfileButtonIconSize,
          color: Constants.usedTextColor,
        ),
        onTap: () {},
      ),
    ).addNeumorphism();
  }
}

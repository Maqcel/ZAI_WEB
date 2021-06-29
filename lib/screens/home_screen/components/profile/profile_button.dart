import 'package:flutter/material.dart';
import 'package:zai/config/injection/injection.dart';
import 'package:zai/repositories/auth_repository.dart';
import 'package:zai/repositories/products_repository.dart';

import '/extensions/neumorphism.dart';
import '../../../../values/constants.dart';

class ProfileButton extends StatelessWidget {
  final AuthRepository authRepository = getIt.get();
  final ProductsRepository repository = getIt.get();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.usedProfileButtonSize,
      width: Constants.usedProfileButtonSize,
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.person_outline_rounded,
          size: Constants.usedProfileButtonIconSize,
          color: Constants.usedTextColor,
        ),
      ),
    ).addNeumorphism();
  }
}

import 'package:flutter/material.dart';
import 'package:zai/config/injection/injection.dart';
import 'package:zai/repositories/auth_repository.dart';

import '/extensions/neumorphism.dart';
import '../../../values/constants.dart';

class ProfileButton extends StatelessWidget {
  final AuthRepository authRepository = getIt.get();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.usedProfileButtonSize,
      width: Constants.usedProfileButtonSize,
      child: IconButton(
        onPressed: () {
          // authRepository
          //     .loginRequest(email: 'test@gmail.com', password: '12345')
          //     .catchError(
          //   (error) {
          //     ScaffoldMessenger.of(context)
          //         .showSnackBar(SnackBar(content: Text(error.toString())));
          //   },
          // );
        },
        icon: Icon(
          Icons.person_outline_rounded,
          size: Constants.usedProfileButtonIconSize,
          color: Constants.usedTextColor,
        ),
      ),
    ).addNeumorphism();
  }
}

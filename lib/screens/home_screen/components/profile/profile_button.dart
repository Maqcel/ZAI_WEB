import 'package:flutter/material.dart';
import 'package:zai/config/injection/injection.dart';
import 'package:zai/cubits/products_cubit/products_cubit.dart';
import 'package:zai/repositories/auth_repository.dart';
import 'package:zai/screens/home_screen/components/profile/selected_profile.dart';

import '/extensions/neumorphism.dart';
import '../../../../values/constants.dart';

class ProfileButton extends StatelessWidget {
  final AuthRepository authRepository = getIt.get();
  final ProductsCubit cubit;

  ProfileButton({required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.usedProfileButtonSize,
      width: Constants.usedProfileButtonSize,
      child: Material(
        child: IconButton(
          onPressed: () {
            cubit.setScreenView(
              SelectedProfile(
                cubit: cubit,
                user: authRepository.currentUser,
              ),
            );
          },
          icon: Icon(
            Icons.person_outline_rounded,
            size: Constants.usedProfileButtonIconSize,
            color: Constants.usedTextColor,
          ),
        ),
      ),
    ).addNeumorphism();
  }
}

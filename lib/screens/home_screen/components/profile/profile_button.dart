import 'package:flutter/material.dart';
import 'package:zai/config/injection/injection.dart';
import 'package:zai/cubits/category_cubit/category_cubit.dart';
import 'package:zai/cubits/products_cubit/products_cubit.dart';
import 'package:zai/repositories/auth_repository.dart';
import 'package:zai/screens/home_screen/components/profile/selected_profile.dart';

import '/extensions/neumorphism.dart';
import '../../../../values/constants.dart';

class ProfileButton extends StatelessWidget {
  final AuthRepository authRepository = getIt.get();
  final ProductsCubit productCubit;
  final CategoryCubit categoryCubit;

  ProfileButton({
    required this.productCubit,
    required this.categoryCubit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.usedProfileButtonSize,
      width: Constants.usedProfileButtonSize,
      child: Material(
        child: IconButton(
          onPressed: () {
            productCubit.setScreenView(
              SelectedProfile(
                productCubit: productCubit,
                user: authRepository.currentUser,
                categoryCubit: categoryCubit,
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

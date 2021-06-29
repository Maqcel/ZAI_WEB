import 'package:flutter/material.dart';
import 'package:zai/cubits/products_cubit/products_cubit.dart';

import '../../../values/constants.dart';
import 'profile/profile_button.dart';

class SideMenu extends StatelessWidget {
  final ProductsCubit cubit;

  const SideMenu({required this.cubit});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.usedPrimaryColor,
      body: Container(
        width: double.infinity,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(
              right: Constants.usedElevationShadowPadding),
          child: Container(
            height: double.infinity,
            padding: EdgeInsets.only(top: Constants.usedDefaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Constants.usedRadius),
                bottomRight: Radius.circular(Constants.usedRadius),
              ),
              color: Constants.usedDrawerColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Constants.usedElevationBlurOffset, //(x,y)
                  blurRadius: Constants.usedRadius,
                ),
              ],
            ),
            child: SafeArea(
              child: Column(
                children: [
                  ProfileButton(
                    cubit: cubit,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'auth_button.dart';
import 'profile_button.dart';

class SideMenu extends StatelessWidget {
  final bool isAuthenticated;
  const SideMenu({
    required this.isAuthenticated,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: Constants.usedDefaultPadding,
                    ),
                    isAuthenticated
                        ? ProfileButton()
                        : Column(
                            children: [
                              AuthButton(isLogin: true, label: 'Log in'),
                              SizedBox(
                                height: Constants.usedDefaultPadding,
                              ),
                              AuthButton(isLogin: false, label: 'Sign up'),
                            ],
                          ),
                    SizedBox(
                      height: Constants.usedBigPadding,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

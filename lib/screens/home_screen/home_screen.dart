import 'package:flutter/material.dart';

import 'components/side_menu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SideMenu(
            isAuthenticated: true,
          ),
        )
      ],
    );
  }
}

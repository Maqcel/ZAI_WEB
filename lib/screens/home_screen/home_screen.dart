import 'package:flutter/material.dart';
import 'package:zai/screens/home_screen/components/products/products_grid.dart';
import 'package:zai/values/constants.dart';

import 'components/side_menu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: SideMenu(),
        ),
        Expanded(
          flex: 7,
          child: Scaffold(
            backgroundColor: Constants.usedPrimaryColor,
            body: ProductsGrid(),
          ),
        ),
      ],
    );
  }
}

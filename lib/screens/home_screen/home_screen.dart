import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zai/config/injection/injection.dart';
import 'package:zai/cubits/products_cubit/products_cubit.dart';
import 'package:zai/screens/home_screen/components/products/products_grid.dart';
import 'package:zai/values/constants.dart';

import 'components/side_menu.dart';

class HomeScreen extends StatelessWidget {
  final ProductsCubit cubit = ProductsCubit(getIt.get());
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      bloc: cubit,
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              flex: 2,
              child: SideMenu(
                cubit: cubit,
              ),
            ),
            Expanded(
              flex: 7,
              child: Scaffold(
                backgroundColor: Constants.usedPrimaryColor,
                body: ProductsGrid(
                  cubit: cubit,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

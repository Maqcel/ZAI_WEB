import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zai/config/injection/injection.dart';
import 'package:zai/cubits/products_cubit/products_cubit.dart';
import 'package:zai/screens/home_screen/components/products/grid_view_item.dart';
import 'package:zai/values/constants.dart';
import 'selected_product.dart';

class ProductsGrid extends StatefulWidget {
  @override
  _ProductsGridState createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  final ProductsCubit cubit = ProductsCubit(getIt.get());

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback(
      (timeStamp) async {
        await cubit.fetchAllProducts();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Constants.usedPrimaryColor,
      child: BlocBuilder<ProductsCubit, ProductsState>(
        bloc: cubit,
        builder: (context, state) {
          if (state.isWidgetSelected) {
            return state.child;
          }
          return state.isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.builder(
                  itemCount: cubit.getCurrentProducts().length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent:
                          MediaQuery.of(context).size.width * 0.3,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: Constants.usedDefaultPadding,
                      mainAxisSpacing: Constants.usedDefaultPadding),
                  itemBuilder: (context, index) {
                    return GridViewItem(
                      product: cubit.getCurrentProducts().elementAt(index),
                      index: index,
                      belowElevationColor: Constants.usedPrimaryColor,
                      onClick: () => cubit.setScreenView(
                        SelectedProduct(
                          cubit: cubit,
                          product: cubit.getCurrentProducts().elementAt(index),
                        ),
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}

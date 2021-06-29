import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zai/cubits/products_cubit/products_cubit.dart';
import 'package:zai/screens/home_screen/components/products/grid_view_item.dart';
import 'package:zai/values/constants.dart';
import 'selected_product.dart';

class ProductsGrid extends StatefulWidget {
  final ProductsCubit cubit;

  const ProductsGrid({required this.cubit});
  @override
  _ProductsGridState createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback(
      (timeStamp) async {
        await widget.cubit.fetchAllProducts();
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
        bloc: widget.cubit,
        builder: (context, state) {
          if (state.isWidgetSelected) {
            return state.child;
          }
          return state.isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.builder(
                  itemCount: widget.cubit.getCurrentProducts().length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent:
                          MediaQuery.of(context).size.width * 0.3,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: Constants.usedDefaultPadding,
                      mainAxisSpacing: Constants.usedDefaultPadding),
                  itemBuilder: (context, index) {
                    return GridViewItem(
                      product:
                          widget.cubit.getCurrentProducts().elementAt(index),
                      index: index,
                      belowElevationColor: Constants.usedPrimaryColor,
                      onClick: () => widget.cubit.setScreenView(
                        SelectedProduct(
                          cubit: widget.cubit,
                          product: widget.cubit
                              .getCurrentProducts()
                              .elementAt(index),
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

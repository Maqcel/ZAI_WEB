import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:zai/cubits/products_cubit/products_cubit.dart';
import 'package:zai/models/product_model/product.dart';
import 'package:zai/values/constants.dart';

class SelectedProduct extends StatelessWidget {
  final ProductsCubit cubit;
  final Product product;

  SelectedProduct({
    required this.product,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Constants.usedSelectedProductViewPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(Constants.usedGridItemBorderRadius),
                child: FadeInImage.memoryNetwork(
                  width: Constants.usedSelectedProductViewImageDim,
                  height: Constants.usedSelectedProductViewImageDim,
                  placeholder: kTransparentImage,
                  image: product.image,
                  fit: BoxFit.fill,
                ),
              ),
              FloatingActionButton(
                onPressed: () => cubit.goBackToGridView(),
                child: Icon(Icons.arrow_back),
              ),
            ],
          ),
          SizedBox(
            width: Constants.usedSelectedProductViewSizedBoxWidth,
          ),
          Expanded(
            child: Card(
              elevation: Constants.usedElevationShadowPadding,
              child: Padding(
                padding: const EdgeInsets.all(Constants.usedDefaultPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(product.name),
                    Text(
                      product.description,
                      textAlign: TextAlign.center,
                    ),
                    Text('${product.price.toString()}\$'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

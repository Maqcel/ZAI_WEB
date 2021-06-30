import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:zai/cubits/category_cubit/category_cubit.dart';
import 'package:zai/cubits/products_cubit/products_cubit.dart';
import 'package:zai/models/user_model/user.dart';
import 'package:zai/screens/home_screen/components/products/add_product.dart';
import 'package:zai/values/constants.dart';

class SelectedProfile extends StatelessWidget {
  final ProductsCubit productCubit;
  final CategoryCubit categoryCubit;
  final User user;

  SelectedProfile({
    required this.productCubit,
    required this.user,
    required this.categoryCubit,
  });

  @override
  Widget build(BuildContext context) {
    final bool isAdmin = user.roles[0].toString().endsWith('ADMIN');
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
                  image: isAdmin
                      ? Constants.usedAdminPicture
                      : Constants.usedUserPicture,
                  fit: BoxFit.fill,
                ),
              ),
              FloatingActionButton(
                onPressed: () => productCubit.goBackToGridView(),
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
                    Text('Name: ${user.name}'),
                    Text('Email: ${user.email}'),
                    Text('Role: ${user.roles[0].toString()}'),
                    isAdmin
                        ? ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Constants.usedPrimaryColor,
                            ),
                            onPressed: () {
                              productCubit.setScreenView(
                                AddProduct(
                                  productCubit: productCubit,
                                  categoryCubit: categoryCubit,
                                ),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('New product'),
                                Icon(Icons.add_business_outlined),
                              ],
                            ),
                          )
                        : Container(),
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

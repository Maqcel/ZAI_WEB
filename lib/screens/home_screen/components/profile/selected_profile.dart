import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:zai/cubits/products_cubit/products_cubit.dart';
import 'package:zai/models/user_model/user.dart';
import 'package:zai/values/constants.dart';

class SelectedProfile extends StatelessWidget {
  final ProductsCubit cubit;
  final User user;

  SelectedProfile({
    required this.cubit,
    required this.user,
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
                  image: user.roles[0].toString().endsWith('ADMIN')
                      ? Constants.usedAdminPicture
                      : Constants.usedUserPicture,
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
                    Text('Name: ${user.name}'),
                    Text('Email: ${user.email}'),
                    Text('Role: ${user.roles[0].toString()}'),
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

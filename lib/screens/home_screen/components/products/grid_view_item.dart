import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:zai/models/product_model/product.dart';
import 'package:zai/values/constants.dart';

class GridViewItem extends StatelessWidget {
  final Product product;
  final int index;
  final Color belowElevationColor;
  final VoidCallback onClick;

  const GridViewItem({
    required this.product,
    required this.index,
    required this.belowElevationColor,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Constants.usedElevationShadowPadding),
      child: GestureDetector(
        onTap: onClick,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Constants.usedElevationBlurOffset, //(x,y)
                blurRadius: Constants.usedRadius,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius:
                BorderRadius.circular(Constants.usedGridItemBorderRadius),
            child: Container(
              height: Constants.usedGridItemWidth,
              width: Constants.usedGridItemHeight,
              color: Colors.white,
              child: Stack(
                children: [
                  Center(
                    child: CircularProgressIndicator(),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: Constants.beforeChangeToUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(color: Colors.transparent),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Constants.usedDrawerColor.withOpacity(
                                Constants.usedGridTextOpacityBackground),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Constants.usedRadius),
                              topLeft: Radius.circular(Constants.usedRadius),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                product.name,
                                style: TextStyle(
                                  fontSize: Constants.usedGridTextFontSize,
                                ),
                              ),
                              Text(
                                '${product.price}\$',
                                style: TextStyle(
                                  fontSize: Constants.usedGridTextFontSize,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
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

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:zai/config/exceptions/exceptions.dart';
import 'package:zai/config/injection/injection.dart';
import 'package:zai/cubits/category_cubit/category_cubit.dart';
import 'package:zai/cubits/products_cubit/products_cubit.dart';
import 'package:zai/models/product_model/product.dart';
import 'package:zai/repositories/auth_repository.dart';
import 'package:zai/values/constants.dart';

class AddProduct extends StatefulWidget {
  final ProductsCubit productCubit;
  final CategoryCubit categoryCubit;

  AddProduct({
    required this.productCubit,
    required this.categoryCubit,
  });

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  final AuthRepository authRepository = getIt.get();
  late Product product;
  late bool isValid;
  int selectedIndex = -1;
  @override
  void initState() {
    isValid = false;
    super.initState();
  }

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
                  image: Constants.usedNewProduct,
                  fit: BoxFit.fill,
                ),
              ),
              FloatingActionButton(
                onPressed: () => widget.productCubit.goBackToGridView(),
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
                    //? NAME
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Constants.usedDefaultPadding),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: nameController,
                          decoration: InputDecoration(
                            labelText: "Name",
                          ),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              isValid = false;
                              return ProductForm.valueIsEmpty().getString();
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    //? PRICE
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Constants.usedDefaultPadding),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: priceController,
                          decoration: InputDecoration(
                            labelText: "Price",
                          ),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              isValid = false;
                              return ProductForm.valueIsEmpty().getString();
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    //? DESC
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Constants.usedDefaultPadding),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: descController,
                          decoration: InputDecoration(
                            labelText: "Description",
                          ),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              isValid = false;
                              return ProductForm.valueIsEmpty().getString();
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    //? IMAGE
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Constants.usedDefaultPadding),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: imageController,
                          decoration: InputDecoration(
                            labelText: "image Url",
                          ),
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              isValid = false;
                              return ProductForm.valueIsEmpty().getString();
                            }
                            isValid = true;
                            return null;
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ListView.builder(
                        itemCount: widget.categoryCubit.state.categories.length,
                        itemBuilder: (context, index) {
                          return Card(
                            color: selectedIndex == index
                                ? Constants.usedPrimaryColor
                                : Colors.white,
                            child: ListTile(
                              title: Text(
                                widget
                                    .categoryCubit.state.categories[index].name,
                                textAlign: TextAlign.center,
                              ),
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                  widget.productCubit.fetchProductsFromCategory(
                                    widget
                                        .categoryCubit.state.categories[index],
                                  );
                                });
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[700],
                      ),
                      onPressed: () {
                        if (isValid &&
                            selectedIndex != -1 &&
                            nameController.value.text.isNotEmpty &&
                            priceController.value.text.isNotEmpty &&
                            descController.value.text.isNotEmpty &&
                            imageController.value.text.isNotEmpty) {
                          product = Product(
                            id: 0,
                            name: nameController.value.text,
                            price: priceController.value.text,
                            description: descController.value.text,
                            image: imageController.value.text,
                            category: widget
                                .categoryCubit.state.categories[selectedIndex],
                          );
                          widget.productCubit.addProduct(product);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(seconds: 2),
                              behavior: SnackBarBehavior.floating,
                              content: Text('Product Added!'),
                            ),
                          );
                          widget.productCubit.goBackToGridView();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(seconds: 2),
                              behavior: SnackBarBehavior.floating,
                              content: Text('Fill the form properly!'),
                            ),
                          );
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Add product'),
                          Icon(Icons.add),
                        ],
                      ),
                    )
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

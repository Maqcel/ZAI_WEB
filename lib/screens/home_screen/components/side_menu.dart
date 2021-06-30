import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zai/config/injection/injection.dart';
import 'package:zai/cubits/category_cubit/category_cubit.dart';
import 'package:zai/cubits/products_cubit/products_cubit.dart';
import 'package:zai/screens/auth_screen/auth_screen.dart';

import '../../../values/constants.dart';
import 'profile/profile_button.dart';

class SideMenu extends StatefulWidget {
  final ProductsCubit cubit;

  const SideMenu({required this.cubit});

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  late final CategoryCubit categoryCubit;
  int selectedIndex = -1;

  @override
  void initState() {
    categoryCubit = CategoryCubit(
      categoryRepository: getIt.get(),
    )..fetchCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Constants.usedPrimaryColor,
      child: Container(
        width: double.infinity,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(
              right: Constants.usedElevationShadowPadding),
          child: Container(
            height: double.infinity,
            padding: EdgeInsets.only(top: Constants.usedDefaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Constants.usedRadius),
                bottomRight: Radius.circular(Constants.usedRadius),
              ),
              color: Constants.usedDrawerColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Constants.usedElevationBlurOffset, //(x,y)
                  blurRadius: Constants.usedRadius,
                ),
              ],
            ),
            child: BlocBuilder<CategoryCubit, CategoryState>(
              bloc: categoryCubit,
              builder: (context, state) {
                return SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: ProfileButton(
                          productCubit: widget.cubit,
                          categoryCubit: categoryCubit,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ListView.builder(
                          itemCount: state.categories.length + 1,
                          itemBuilder: (context, index) {
                            if (index >= state.categories.length) {
                              return Card(
                                color: selectedIndex == index
                                    ? Constants.usedPrimaryColor
                                    : Colors.white,
                                child: ListTile(
                                  title: Text(
                                    'All Products',
                                    textAlign: TextAlign.center,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                      widget.cubit.fetchAllProducts();
                                    });
                                  },
                                ),
                              );
                            }
                            return Card(
                              color: selectedIndex == index
                                  ? Constants.usedPrimaryColor
                                  : Colors.white,
                              child: ListTile(
                                title: Text(
                                  state.categories[index].name,
                                  textAlign: TextAlign.center,
                                ),
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                    widget.cubit.fetchProductsFromCategory(
                                      state.categories[index],
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
                          primary: Colors.white60,
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (_) => AuthScreen(),
                            ),
                          );
                        },
                        child: Text('Log out'),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Constants {
  //! API urls
  //* POST Requests
  static const String usersSignUpRequest =
      'http://localhost:8080/api/auth/users/signup';
  static const String usersLoginRequest =
      'http://localhost:8080/api/auth/users/signin';
  static const String categoryCreateRequest =
      'http://localhost:8080/api/category/create';
  static const String productCreateRequest =
      'http://localhost:8080/api/product/create';
  //* GET Requests
  static const String getCategoryListsRequest =
      'http://localhost:8080/api/category/list';
  static const String getAllProductsRequest =
      'http://localhost:8080/api/product/list';
  static const String getProductsByCategoryRequest =
      'http://localhost:8080/api/product'; //? + categoryId
  static const String getProductsDetailsRequest =
      'http://localhost:8080/api/product/details'; //? + productId
  //* PUT Requests
  static const String updateCategoryRequest =
      'http://localhost:8080/api/category/update'; //? + categoryId
  static const String updateProductRequest =
      'http://localhost:8080/api/product/update'; //? + productId
  //* DEL Requests
  static const String deleteCategoryRequest =
      'http://localhost:8080/api/category/delete'; //? + categoryId
  static const String deleteProductRequest =
      'http://localhost:8080/api/product/delete'; //? + productId
  //* IMAGE_URL START
  static const String imageUrlPrefix = 'http://localhost:8080/product-photos/';

  //! API Request header
  //? need an 'Authorization': 'Bearer $token' key for actions
  static const Map<String, String> header = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };

  //? Colors
  static const Color usedPrimaryColor = Color(0xFFffb4a2);
  static const Color usedAccentColor = Color(0xFFffcdb2);
  static const Color usedTextColor = Color(0xFF6d6875);
  static const Color usedDrawerColor = Color(0xFFF2F4FC);

  //? Paddings
  static const double usedDefaultPadding = 20.0;
  static const double usedBigPadding = 40.0;
  static const double usedSmallPadding = 5.0;
  static const double usedElevationShadowPadding = 10.0;

  //? Border Radius values
  static const double usedRadius = 10.0;
  static const double usedLogoClipRadius = 50.0;

  //? Blur Offset
  static const Offset usedElevationBlurOffset = Offset(0.0, 1.0);

  //? Side Menu values
  //* Icons sizes
  static const double usedMenuIconSize = 20.0;
  //* Profile button
  static const double usedProfileButtonIconSize = 90.0;
  static const double usedProfileButtonSize = 110.0;

  //? AuthScreen
  static const double usedFieldIconSize = 100.0;
  static const double usedFieldContentPadding = 15.0;
  static const double usedFormWidgetHeight = 80.0;
  static const double usedFormWidgetWidth = 320.0;
  static const double usedFieldColorOpacity = 0.1;
  //* Web Values
  static const double usedAuthScreenWebWidthParameter = 500.0;
  static const double usedAuthScreenWebHeightParameter = 650.0;

  //? TextStyles
  //* Body text
  static const double usedBodyFontSize = 30.0;
  static const String usedBodyFontName = 'Montserrat';
  //* Header text
  static const double usedHeaderFontSize = 30.0;
  static const String usedHeaderFontName = 'Bebas';

  //? Grid View Items
  //* Item dimensions
  static const double usedGridItemBorderRadius = 15.0;
  static const double usedGridItemWidth = 200.0;
  static const double usedGridItemHeight = 200.0;
  //* Axis Extent breakpoints
  static const double usedFourGridRows = 1500.0;
  static const double usedThreeGridRows = 1200.0;
  static const double usedTwoGridRows = 800.0;
  //* Item text
  static const double usedGridTextFontSize = 22.0;
  static const double usedGridTextOpacityBackground = 0.7;
  //* Product view
  static const double usedSelectedProductViewImageDim = 300.0;
  static const double usedSelectedProductViewSizedBoxWidth = 50.0;
  static const double usedSelectedProductViewPadding = 16.0;

  static const String usedAdminPicture =
      'https://thumbs.dreamstime.com/b/ikona-logowania-administratora-na-notebooku-???-wektor-gie??dowy-166205404.jpg';
  static const String usedUserPicture =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/1024px-User_icon_2.svg.png';
  static const String usedNewProduct =
      'https://cdn2.iconfinder.com/data/icons/content-design-production-2/66/120-512.png';
}

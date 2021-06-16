import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

abstract class AppExceptions implements Exception {}

class UnknownException extends AppExceptions {}

@freezed
class AuthException extends AppExceptions with _$AuthException {
  const factory AuthException.signUpFailure(status) = SignUpFailure;
  const factory AuthException.logInFailure() = LogInFailure;
  const factory AuthException.invalidEmailFormat() = InvalidEmailFormat;
  const factory AuthException.invalidPasswordFormat() = InvalidPasswordFormat;
}

@freezed
class DatabaseActionException extends AppExceptions
    with _$DatabaseActionException {
  const factory DatabaseActionException.unauthorizedRequest() =
      UnauthorizedRequestFailure;

  //? User
  const factory DatabaseActionException.getProductsListAction() =
      GetProductsListFailure;
  const factory DatabaseActionException.getCategoryAction() =
      GetCategoriesFailure;
  const factory DatabaseActionException.getProductByCategoryAction() =
      GetProductByCategoryFailure;
  const factory DatabaseActionException.getProductDetailsAction() =
      GetProductDetailsFailure;

  //? Admin
  const factory DatabaseActionException.addProductAction() =
      ProductAdditionFailure;
  const factory DatabaseActionException.addCategoryAction() =
      CategoryAdditionFailure;
  const factory DatabaseActionException.updateCategoryAction() =
      CategoryUpdateFailure;
  const factory DatabaseActionException.updateProductAction() =
      ProductUpdateFailure;
  const factory DatabaseActionException.deleteProductAction() =
      ProductDeletionFailure;
  const factory DatabaseActionException.deleteCategoryAction() =
      CategoryDeletionFailure;
}

@freezed
class ValueIsValid extends AppExceptions with _$ValueIsValid {
  const factory ValueIsValid.valueIsValid() = ValidValue;
}

extension ToString on AppExceptions {
  String getString() {
    if (this is AuthException) {
      return (this as AuthException).when(
        signUpFailure: (status) => 'Sign-up failure status: $status',
        logInFailure: () => 'Login failure Bad Credentials!',
        invalidEmailFormat: () =>
            'Invalid email Format should contain \'@\' and a \'.\'',
        invalidPasswordFormat: () =>
            'Invalid password Format should contain: 5 characters',
      );
    } else if (this is DatabaseActionException) {
      return (this as DatabaseActionException).when(
        addProductAction: () => 'Failed to add new product',
        deleteProductAction: () => 'Failed to delete product',
        getProductByCategoryAction: () =>
            'Failed to get products from category',
        getProductDetailsAction: () => 'Failed to get product details',
        getProductsListAction: () => 'Failed to get products list',
        updateProductAction: () => 'Failed to update product',
        addCategoryAction: () => 'Failed to add new category',
        deleteCategoryAction: () => 'Failed to delete category',
        getCategoryAction: () => 'Failed to get category',
        updateCategoryAction: () => 'Failed to update category',
        unauthorizedRequest: () => 'Request Unauthorized!',
      );
    } else if (this is ValueIsValid) {
      return (this as ValueIsValid).when(
        valueIsValid: () => 'Valid',
      );
    } else {
      return 'Something went wrong';
    }
  }
}

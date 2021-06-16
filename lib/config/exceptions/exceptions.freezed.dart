// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthExceptionTearOff {
  const _$AuthExceptionTearOff();

  SignUpFailure signUpFailure() {
    return const SignUpFailure();
  }

  LogInFailure logInFailure() {
    return const LogInFailure();
  }

  InvalidEmailFormat invalidEmailFormat() {
    return const InvalidEmailFormat();
  }
}

/// @nodoc
const $AuthException = _$AuthExceptionTearOff();

/// @nodoc
mixin _$AuthException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpFailure,
    required TResult Function() logInFailure,
    required TResult Function() invalidEmailFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpFailure,
    TResult Function()? logInFailure,
    TResult Function()? invalidEmailFormat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(LogInFailure value) logInFailure,
    required TResult Function(InvalidEmailFormat value) invalidEmailFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(LogInFailure value)? logInFailure,
    TResult Function(InvalidEmailFormat value)? invalidEmailFormat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthExceptionCopyWith<$Res> {
  factory $AuthExceptionCopyWith(
          AuthException value, $Res Function(AuthException) then) =
      _$AuthExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthExceptionCopyWithImpl<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  _$AuthExceptionCopyWithImpl(this._value, this._then);

  final AuthException _value;
  // ignore: unused_field
  final $Res Function(AuthException) _then;
}

/// @nodoc
abstract class $SignUpFailureCopyWith<$Res> {
  factory $SignUpFailureCopyWith(
          SignUpFailure value, $Res Function(SignUpFailure) then) =
      _$SignUpFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpFailureCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res>
    implements $SignUpFailureCopyWith<$Res> {
  _$SignUpFailureCopyWithImpl(
      SignUpFailure _value, $Res Function(SignUpFailure) _then)
      : super(_value, (v) => _then(v as SignUpFailure));

  @override
  SignUpFailure get _value => super._value as SignUpFailure;
}

/// @nodoc

class _$SignUpFailure implements SignUpFailure {
  const _$SignUpFailure();

  @override
  String toString() {
    return 'AuthException.signUpFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignUpFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpFailure,
    required TResult Function() logInFailure,
    required TResult Function() invalidEmailFormat,
  }) {
    return signUpFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpFailure,
    TResult Function()? logInFailure,
    TResult Function()? invalidEmailFormat,
    required TResult orElse(),
  }) {
    if (signUpFailure != null) {
      return signUpFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(LogInFailure value) logInFailure,
    required TResult Function(InvalidEmailFormat value) invalidEmailFormat,
  }) {
    return signUpFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(LogInFailure value)? logInFailure,
    TResult Function(InvalidEmailFormat value)? invalidEmailFormat,
    required TResult orElse(),
  }) {
    if (signUpFailure != null) {
      return signUpFailure(this);
    }
    return orElse();
  }
}

abstract class SignUpFailure implements AuthException {
  const factory SignUpFailure() = _$SignUpFailure;
}

/// @nodoc
abstract class $LogInFailureCopyWith<$Res> {
  factory $LogInFailureCopyWith(
          LogInFailure value, $Res Function(LogInFailure) then) =
      _$LogInFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogInFailureCopyWithImpl<$Res> extends _$AuthExceptionCopyWithImpl<$Res>
    implements $LogInFailureCopyWith<$Res> {
  _$LogInFailureCopyWithImpl(
      LogInFailure _value, $Res Function(LogInFailure) _then)
      : super(_value, (v) => _then(v as LogInFailure));

  @override
  LogInFailure get _value => super._value as LogInFailure;
}

/// @nodoc

class _$LogInFailure implements LogInFailure {
  const _$LogInFailure();

  @override
  String toString() {
    return 'AuthException.logInFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LogInFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpFailure,
    required TResult Function() logInFailure,
    required TResult Function() invalidEmailFormat,
  }) {
    return logInFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpFailure,
    TResult Function()? logInFailure,
    TResult Function()? invalidEmailFormat,
    required TResult orElse(),
  }) {
    if (logInFailure != null) {
      return logInFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(LogInFailure value) logInFailure,
    required TResult Function(InvalidEmailFormat value) invalidEmailFormat,
  }) {
    return logInFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(LogInFailure value)? logInFailure,
    TResult Function(InvalidEmailFormat value)? invalidEmailFormat,
    required TResult orElse(),
  }) {
    if (logInFailure != null) {
      return logInFailure(this);
    }
    return orElse();
  }
}

abstract class LogInFailure implements AuthException {
  const factory LogInFailure() = _$LogInFailure;
}

/// @nodoc
abstract class $InvalidEmailFormatCopyWith<$Res> {
  factory $InvalidEmailFormatCopyWith(
          InvalidEmailFormat value, $Res Function(InvalidEmailFormat) then) =
      _$InvalidEmailFormatCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailFormatCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res>
    implements $InvalidEmailFormatCopyWith<$Res> {
  _$InvalidEmailFormatCopyWithImpl(
      InvalidEmailFormat _value, $Res Function(InvalidEmailFormat) _then)
      : super(_value, (v) => _then(v as InvalidEmailFormat));

  @override
  InvalidEmailFormat get _value => super._value as InvalidEmailFormat;
}

/// @nodoc

class _$InvalidEmailFormat implements InvalidEmailFormat {
  const _$InvalidEmailFormat();

  @override
  String toString() {
    return 'AuthException.invalidEmailFormat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmailFormat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpFailure,
    required TResult Function() logInFailure,
    required TResult Function() invalidEmailFormat,
  }) {
    return invalidEmailFormat();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpFailure,
    TResult Function()? logInFailure,
    TResult Function()? invalidEmailFormat,
    required TResult orElse(),
  }) {
    if (invalidEmailFormat != null) {
      return invalidEmailFormat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(LogInFailure value) logInFailure,
    required TResult Function(InvalidEmailFormat value) invalidEmailFormat,
  }) {
    return invalidEmailFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(LogInFailure value)? logInFailure,
    TResult Function(InvalidEmailFormat value)? invalidEmailFormat,
    required TResult orElse(),
  }) {
    if (invalidEmailFormat != null) {
      return invalidEmailFormat(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailFormat implements AuthException {
  const factory InvalidEmailFormat() = _$InvalidEmailFormat;
}

/// @nodoc
class _$DatabaseActionExceptionTearOff {
  const _$DatabaseActionExceptionTearOff();

  UnauthorizedRequestFailure unauthorizedRequest() {
    return const UnauthorizedRequestFailure();
  }

  GetProductsListFailure getProductsListAction() {
    return const GetProductsListFailure();
  }

  GetCategoriesFailure getCategoryAction() {
    return const GetCategoriesFailure();
  }

  GetProductByCategoryFailure getProductByCategoryAction() {
    return const GetProductByCategoryFailure();
  }

  GetProductDetailsFailure getProductDetailsAction() {
    return const GetProductDetailsFailure();
  }

  ProductAdditionFailure addProductAction() {
    return const ProductAdditionFailure();
  }

  CategoryAdditionFailure addCategoryAction() {
    return const CategoryAdditionFailure();
  }

  CategoryUpdateFailure updateCategoryAction() {
    return const CategoryUpdateFailure();
  }

  ProductUpdateFailure updateProductAction() {
    return const ProductUpdateFailure();
  }

  ProductDeletionFailure deleteProductAction() {
    return const ProductDeletionFailure();
  }

  CategoryDeletionFailure deleteCategoryAction() {
    return const CategoryDeletionFailure();
  }
}

/// @nodoc
const $DatabaseActionException = _$DatabaseActionExceptionTearOff();

/// @nodoc
mixin _$DatabaseActionException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorizedRequest,
    required TResult Function() getProductsListAction,
    required TResult Function() getCategoryAction,
    required TResult Function() getProductByCategoryAction,
    required TResult Function() getProductDetailsAction,
    required TResult Function() addProductAction,
    required TResult Function() addCategoryAction,
    required TResult Function() updateCategoryAction,
    required TResult Function() updateProductAction,
    required TResult Function() deleteProductAction,
    required TResult Function() deleteCategoryAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorizedRequest,
    TResult Function()? getProductsListAction,
    TResult Function()? getCategoryAction,
    TResult Function()? getProductByCategoryAction,
    TResult Function()? getProductDetailsAction,
    TResult Function()? addProductAction,
    TResult Function()? addCategoryAction,
    TResult Function()? updateCategoryAction,
    TResult Function()? updateProductAction,
    TResult Function()? deleteProductAction,
    TResult Function()? deleteCategoryAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequestFailure value)
        unauthorizedRequest,
    required TResult Function(GetProductsListFailure value)
        getProductsListAction,
    required TResult Function(GetCategoriesFailure value) getCategoryAction,
    required TResult Function(GetProductByCategoryFailure value)
        getProductByCategoryAction,
    required TResult Function(GetProductDetailsFailure value)
        getProductDetailsAction,
    required TResult Function(ProductAdditionFailure value) addProductAction,
    required TResult Function(CategoryAdditionFailure value) addCategoryAction,
    required TResult Function(CategoryUpdateFailure value) updateCategoryAction,
    required TResult Function(ProductUpdateFailure value) updateProductAction,
    required TResult Function(ProductDeletionFailure value) deleteProductAction,
    required TResult Function(CategoryDeletionFailure value)
        deleteCategoryAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequestFailure value)? unauthorizedRequest,
    TResult Function(GetProductsListFailure value)? getProductsListAction,
    TResult Function(GetCategoriesFailure value)? getCategoryAction,
    TResult Function(GetProductByCategoryFailure value)?
        getProductByCategoryAction,
    TResult Function(GetProductDetailsFailure value)? getProductDetailsAction,
    TResult Function(ProductAdditionFailure value)? addProductAction,
    TResult Function(CategoryAdditionFailure value)? addCategoryAction,
    TResult Function(CategoryUpdateFailure value)? updateCategoryAction,
    TResult Function(ProductUpdateFailure value)? updateProductAction,
    TResult Function(ProductDeletionFailure value)? deleteProductAction,
    TResult Function(CategoryDeletionFailure value)? deleteCategoryAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseActionExceptionCopyWith<$Res> {
  factory $DatabaseActionExceptionCopyWith(DatabaseActionException value,
          $Res Function(DatabaseActionException) then) =
      _$DatabaseActionExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$DatabaseActionExceptionCopyWithImpl<$Res>
    implements $DatabaseActionExceptionCopyWith<$Res> {
  _$DatabaseActionExceptionCopyWithImpl(this._value, this._then);

  final DatabaseActionException _value;
  // ignore: unused_field
  final $Res Function(DatabaseActionException) _then;
}

/// @nodoc
abstract class $UnauthorizedRequestFailureCopyWith<$Res> {
  factory $UnauthorizedRequestFailureCopyWith(UnauthorizedRequestFailure value,
          $Res Function(UnauthorizedRequestFailure) then) =
      _$UnauthorizedRequestFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthorizedRequestFailureCopyWithImpl<$Res>
    extends _$DatabaseActionExceptionCopyWithImpl<$Res>
    implements $UnauthorizedRequestFailureCopyWith<$Res> {
  _$UnauthorizedRequestFailureCopyWithImpl(UnauthorizedRequestFailure _value,
      $Res Function(UnauthorizedRequestFailure) _then)
      : super(_value, (v) => _then(v as UnauthorizedRequestFailure));

  @override
  UnauthorizedRequestFailure get _value =>
      super._value as UnauthorizedRequestFailure;
}

/// @nodoc

class _$UnauthorizedRequestFailure implements UnauthorizedRequestFailure {
  const _$UnauthorizedRequestFailure();

  @override
  String toString() {
    return 'DatabaseActionException.unauthorizedRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnauthorizedRequestFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorizedRequest,
    required TResult Function() getProductsListAction,
    required TResult Function() getCategoryAction,
    required TResult Function() getProductByCategoryAction,
    required TResult Function() getProductDetailsAction,
    required TResult Function() addProductAction,
    required TResult Function() addCategoryAction,
    required TResult Function() updateCategoryAction,
    required TResult Function() updateProductAction,
    required TResult Function() deleteProductAction,
    required TResult Function() deleteCategoryAction,
  }) {
    return unauthorizedRequest();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorizedRequest,
    TResult Function()? getProductsListAction,
    TResult Function()? getCategoryAction,
    TResult Function()? getProductByCategoryAction,
    TResult Function()? getProductDetailsAction,
    TResult Function()? addProductAction,
    TResult Function()? addCategoryAction,
    TResult Function()? updateCategoryAction,
    TResult Function()? updateProductAction,
    TResult Function()? deleteProductAction,
    TResult Function()? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (unauthorizedRequest != null) {
      return unauthorizedRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequestFailure value)
        unauthorizedRequest,
    required TResult Function(GetProductsListFailure value)
        getProductsListAction,
    required TResult Function(GetCategoriesFailure value) getCategoryAction,
    required TResult Function(GetProductByCategoryFailure value)
        getProductByCategoryAction,
    required TResult Function(GetProductDetailsFailure value)
        getProductDetailsAction,
    required TResult Function(ProductAdditionFailure value) addProductAction,
    required TResult Function(CategoryAdditionFailure value) addCategoryAction,
    required TResult Function(CategoryUpdateFailure value) updateCategoryAction,
    required TResult Function(ProductUpdateFailure value) updateProductAction,
    required TResult Function(ProductDeletionFailure value) deleteProductAction,
    required TResult Function(CategoryDeletionFailure value)
        deleteCategoryAction,
  }) {
    return unauthorizedRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequestFailure value)? unauthorizedRequest,
    TResult Function(GetProductsListFailure value)? getProductsListAction,
    TResult Function(GetCategoriesFailure value)? getCategoryAction,
    TResult Function(GetProductByCategoryFailure value)?
        getProductByCategoryAction,
    TResult Function(GetProductDetailsFailure value)? getProductDetailsAction,
    TResult Function(ProductAdditionFailure value)? addProductAction,
    TResult Function(CategoryAdditionFailure value)? addCategoryAction,
    TResult Function(CategoryUpdateFailure value)? updateCategoryAction,
    TResult Function(ProductUpdateFailure value)? updateProductAction,
    TResult Function(ProductDeletionFailure value)? deleteProductAction,
    TResult Function(CategoryDeletionFailure value)? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (unauthorizedRequest != null) {
      return unauthorizedRequest(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedRequestFailure implements DatabaseActionException {
  const factory UnauthorizedRequestFailure() = _$UnauthorizedRequestFailure;
}

/// @nodoc
abstract class $GetProductsListFailureCopyWith<$Res> {
  factory $GetProductsListFailureCopyWith(GetProductsListFailure value,
          $Res Function(GetProductsListFailure) then) =
      _$GetProductsListFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProductsListFailureCopyWithImpl<$Res>
    extends _$DatabaseActionExceptionCopyWithImpl<$Res>
    implements $GetProductsListFailureCopyWith<$Res> {
  _$GetProductsListFailureCopyWithImpl(GetProductsListFailure _value,
      $Res Function(GetProductsListFailure) _then)
      : super(_value, (v) => _then(v as GetProductsListFailure));

  @override
  GetProductsListFailure get _value => super._value as GetProductsListFailure;
}

/// @nodoc

class _$GetProductsListFailure implements GetProductsListFailure {
  const _$GetProductsListFailure();

  @override
  String toString() {
    return 'DatabaseActionException.getProductsListAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetProductsListFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorizedRequest,
    required TResult Function() getProductsListAction,
    required TResult Function() getCategoryAction,
    required TResult Function() getProductByCategoryAction,
    required TResult Function() getProductDetailsAction,
    required TResult Function() addProductAction,
    required TResult Function() addCategoryAction,
    required TResult Function() updateCategoryAction,
    required TResult Function() updateProductAction,
    required TResult Function() deleteProductAction,
    required TResult Function() deleteCategoryAction,
  }) {
    return getProductsListAction();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorizedRequest,
    TResult Function()? getProductsListAction,
    TResult Function()? getCategoryAction,
    TResult Function()? getProductByCategoryAction,
    TResult Function()? getProductDetailsAction,
    TResult Function()? addProductAction,
    TResult Function()? addCategoryAction,
    TResult Function()? updateCategoryAction,
    TResult Function()? updateProductAction,
    TResult Function()? deleteProductAction,
    TResult Function()? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (getProductsListAction != null) {
      return getProductsListAction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequestFailure value)
        unauthorizedRequest,
    required TResult Function(GetProductsListFailure value)
        getProductsListAction,
    required TResult Function(GetCategoriesFailure value) getCategoryAction,
    required TResult Function(GetProductByCategoryFailure value)
        getProductByCategoryAction,
    required TResult Function(GetProductDetailsFailure value)
        getProductDetailsAction,
    required TResult Function(ProductAdditionFailure value) addProductAction,
    required TResult Function(CategoryAdditionFailure value) addCategoryAction,
    required TResult Function(CategoryUpdateFailure value) updateCategoryAction,
    required TResult Function(ProductUpdateFailure value) updateProductAction,
    required TResult Function(ProductDeletionFailure value) deleteProductAction,
    required TResult Function(CategoryDeletionFailure value)
        deleteCategoryAction,
  }) {
    return getProductsListAction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequestFailure value)? unauthorizedRequest,
    TResult Function(GetProductsListFailure value)? getProductsListAction,
    TResult Function(GetCategoriesFailure value)? getCategoryAction,
    TResult Function(GetProductByCategoryFailure value)?
        getProductByCategoryAction,
    TResult Function(GetProductDetailsFailure value)? getProductDetailsAction,
    TResult Function(ProductAdditionFailure value)? addProductAction,
    TResult Function(CategoryAdditionFailure value)? addCategoryAction,
    TResult Function(CategoryUpdateFailure value)? updateCategoryAction,
    TResult Function(ProductUpdateFailure value)? updateProductAction,
    TResult Function(ProductDeletionFailure value)? deleteProductAction,
    TResult Function(CategoryDeletionFailure value)? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (getProductsListAction != null) {
      return getProductsListAction(this);
    }
    return orElse();
  }
}

abstract class GetProductsListFailure implements DatabaseActionException {
  const factory GetProductsListFailure() = _$GetProductsListFailure;
}

/// @nodoc
abstract class $GetCategoriesFailureCopyWith<$Res> {
  factory $GetCategoriesFailureCopyWith(GetCategoriesFailure value,
          $Res Function(GetCategoriesFailure) then) =
      _$GetCategoriesFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCategoriesFailureCopyWithImpl<$Res>
    extends _$DatabaseActionExceptionCopyWithImpl<$Res>
    implements $GetCategoriesFailureCopyWith<$Res> {
  _$GetCategoriesFailureCopyWithImpl(
      GetCategoriesFailure _value, $Res Function(GetCategoriesFailure) _then)
      : super(_value, (v) => _then(v as GetCategoriesFailure));

  @override
  GetCategoriesFailure get _value => super._value as GetCategoriesFailure;
}

/// @nodoc

class _$GetCategoriesFailure implements GetCategoriesFailure {
  const _$GetCategoriesFailure();

  @override
  String toString() {
    return 'DatabaseActionException.getCategoryAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCategoriesFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorizedRequest,
    required TResult Function() getProductsListAction,
    required TResult Function() getCategoryAction,
    required TResult Function() getProductByCategoryAction,
    required TResult Function() getProductDetailsAction,
    required TResult Function() addProductAction,
    required TResult Function() addCategoryAction,
    required TResult Function() updateCategoryAction,
    required TResult Function() updateProductAction,
    required TResult Function() deleteProductAction,
    required TResult Function() deleteCategoryAction,
  }) {
    return getCategoryAction();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorizedRequest,
    TResult Function()? getProductsListAction,
    TResult Function()? getCategoryAction,
    TResult Function()? getProductByCategoryAction,
    TResult Function()? getProductDetailsAction,
    TResult Function()? addProductAction,
    TResult Function()? addCategoryAction,
    TResult Function()? updateCategoryAction,
    TResult Function()? updateProductAction,
    TResult Function()? deleteProductAction,
    TResult Function()? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (getCategoryAction != null) {
      return getCategoryAction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequestFailure value)
        unauthorizedRequest,
    required TResult Function(GetProductsListFailure value)
        getProductsListAction,
    required TResult Function(GetCategoriesFailure value) getCategoryAction,
    required TResult Function(GetProductByCategoryFailure value)
        getProductByCategoryAction,
    required TResult Function(GetProductDetailsFailure value)
        getProductDetailsAction,
    required TResult Function(ProductAdditionFailure value) addProductAction,
    required TResult Function(CategoryAdditionFailure value) addCategoryAction,
    required TResult Function(CategoryUpdateFailure value) updateCategoryAction,
    required TResult Function(ProductUpdateFailure value) updateProductAction,
    required TResult Function(ProductDeletionFailure value) deleteProductAction,
    required TResult Function(CategoryDeletionFailure value)
        deleteCategoryAction,
  }) {
    return getCategoryAction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequestFailure value)? unauthorizedRequest,
    TResult Function(GetProductsListFailure value)? getProductsListAction,
    TResult Function(GetCategoriesFailure value)? getCategoryAction,
    TResult Function(GetProductByCategoryFailure value)?
        getProductByCategoryAction,
    TResult Function(GetProductDetailsFailure value)? getProductDetailsAction,
    TResult Function(ProductAdditionFailure value)? addProductAction,
    TResult Function(CategoryAdditionFailure value)? addCategoryAction,
    TResult Function(CategoryUpdateFailure value)? updateCategoryAction,
    TResult Function(ProductUpdateFailure value)? updateProductAction,
    TResult Function(ProductDeletionFailure value)? deleteProductAction,
    TResult Function(CategoryDeletionFailure value)? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (getCategoryAction != null) {
      return getCategoryAction(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesFailure implements DatabaseActionException {
  const factory GetCategoriesFailure() = _$GetCategoriesFailure;
}

/// @nodoc
abstract class $GetProductByCategoryFailureCopyWith<$Res> {
  factory $GetProductByCategoryFailureCopyWith(
          GetProductByCategoryFailure value,
          $Res Function(GetProductByCategoryFailure) then) =
      _$GetProductByCategoryFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProductByCategoryFailureCopyWithImpl<$Res>
    extends _$DatabaseActionExceptionCopyWithImpl<$Res>
    implements $GetProductByCategoryFailureCopyWith<$Res> {
  _$GetProductByCategoryFailureCopyWithImpl(GetProductByCategoryFailure _value,
      $Res Function(GetProductByCategoryFailure) _then)
      : super(_value, (v) => _then(v as GetProductByCategoryFailure));

  @override
  GetProductByCategoryFailure get _value =>
      super._value as GetProductByCategoryFailure;
}

/// @nodoc

class _$GetProductByCategoryFailure implements GetProductByCategoryFailure {
  const _$GetProductByCategoryFailure();

  @override
  String toString() {
    return 'DatabaseActionException.getProductByCategoryAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetProductByCategoryFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorizedRequest,
    required TResult Function() getProductsListAction,
    required TResult Function() getCategoryAction,
    required TResult Function() getProductByCategoryAction,
    required TResult Function() getProductDetailsAction,
    required TResult Function() addProductAction,
    required TResult Function() addCategoryAction,
    required TResult Function() updateCategoryAction,
    required TResult Function() updateProductAction,
    required TResult Function() deleteProductAction,
    required TResult Function() deleteCategoryAction,
  }) {
    return getProductByCategoryAction();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorizedRequest,
    TResult Function()? getProductsListAction,
    TResult Function()? getCategoryAction,
    TResult Function()? getProductByCategoryAction,
    TResult Function()? getProductDetailsAction,
    TResult Function()? addProductAction,
    TResult Function()? addCategoryAction,
    TResult Function()? updateCategoryAction,
    TResult Function()? updateProductAction,
    TResult Function()? deleteProductAction,
    TResult Function()? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (getProductByCategoryAction != null) {
      return getProductByCategoryAction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequestFailure value)
        unauthorizedRequest,
    required TResult Function(GetProductsListFailure value)
        getProductsListAction,
    required TResult Function(GetCategoriesFailure value) getCategoryAction,
    required TResult Function(GetProductByCategoryFailure value)
        getProductByCategoryAction,
    required TResult Function(GetProductDetailsFailure value)
        getProductDetailsAction,
    required TResult Function(ProductAdditionFailure value) addProductAction,
    required TResult Function(CategoryAdditionFailure value) addCategoryAction,
    required TResult Function(CategoryUpdateFailure value) updateCategoryAction,
    required TResult Function(ProductUpdateFailure value) updateProductAction,
    required TResult Function(ProductDeletionFailure value) deleteProductAction,
    required TResult Function(CategoryDeletionFailure value)
        deleteCategoryAction,
  }) {
    return getProductByCategoryAction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequestFailure value)? unauthorizedRequest,
    TResult Function(GetProductsListFailure value)? getProductsListAction,
    TResult Function(GetCategoriesFailure value)? getCategoryAction,
    TResult Function(GetProductByCategoryFailure value)?
        getProductByCategoryAction,
    TResult Function(GetProductDetailsFailure value)? getProductDetailsAction,
    TResult Function(ProductAdditionFailure value)? addProductAction,
    TResult Function(CategoryAdditionFailure value)? addCategoryAction,
    TResult Function(CategoryUpdateFailure value)? updateCategoryAction,
    TResult Function(ProductUpdateFailure value)? updateProductAction,
    TResult Function(ProductDeletionFailure value)? deleteProductAction,
    TResult Function(CategoryDeletionFailure value)? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (getProductByCategoryAction != null) {
      return getProductByCategoryAction(this);
    }
    return orElse();
  }
}

abstract class GetProductByCategoryFailure implements DatabaseActionException {
  const factory GetProductByCategoryFailure() = _$GetProductByCategoryFailure;
}

/// @nodoc
abstract class $GetProductDetailsFailureCopyWith<$Res> {
  factory $GetProductDetailsFailureCopyWith(GetProductDetailsFailure value,
          $Res Function(GetProductDetailsFailure) then) =
      _$GetProductDetailsFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProductDetailsFailureCopyWithImpl<$Res>
    extends _$DatabaseActionExceptionCopyWithImpl<$Res>
    implements $GetProductDetailsFailureCopyWith<$Res> {
  _$GetProductDetailsFailureCopyWithImpl(GetProductDetailsFailure _value,
      $Res Function(GetProductDetailsFailure) _then)
      : super(_value, (v) => _then(v as GetProductDetailsFailure));

  @override
  GetProductDetailsFailure get _value =>
      super._value as GetProductDetailsFailure;
}

/// @nodoc

class _$GetProductDetailsFailure implements GetProductDetailsFailure {
  const _$GetProductDetailsFailure();

  @override
  String toString() {
    return 'DatabaseActionException.getProductDetailsAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetProductDetailsFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorizedRequest,
    required TResult Function() getProductsListAction,
    required TResult Function() getCategoryAction,
    required TResult Function() getProductByCategoryAction,
    required TResult Function() getProductDetailsAction,
    required TResult Function() addProductAction,
    required TResult Function() addCategoryAction,
    required TResult Function() updateCategoryAction,
    required TResult Function() updateProductAction,
    required TResult Function() deleteProductAction,
    required TResult Function() deleteCategoryAction,
  }) {
    return getProductDetailsAction();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorizedRequest,
    TResult Function()? getProductsListAction,
    TResult Function()? getCategoryAction,
    TResult Function()? getProductByCategoryAction,
    TResult Function()? getProductDetailsAction,
    TResult Function()? addProductAction,
    TResult Function()? addCategoryAction,
    TResult Function()? updateCategoryAction,
    TResult Function()? updateProductAction,
    TResult Function()? deleteProductAction,
    TResult Function()? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (getProductDetailsAction != null) {
      return getProductDetailsAction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequestFailure value)
        unauthorizedRequest,
    required TResult Function(GetProductsListFailure value)
        getProductsListAction,
    required TResult Function(GetCategoriesFailure value) getCategoryAction,
    required TResult Function(GetProductByCategoryFailure value)
        getProductByCategoryAction,
    required TResult Function(GetProductDetailsFailure value)
        getProductDetailsAction,
    required TResult Function(ProductAdditionFailure value) addProductAction,
    required TResult Function(CategoryAdditionFailure value) addCategoryAction,
    required TResult Function(CategoryUpdateFailure value) updateCategoryAction,
    required TResult Function(ProductUpdateFailure value) updateProductAction,
    required TResult Function(ProductDeletionFailure value) deleteProductAction,
    required TResult Function(CategoryDeletionFailure value)
        deleteCategoryAction,
  }) {
    return getProductDetailsAction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequestFailure value)? unauthorizedRequest,
    TResult Function(GetProductsListFailure value)? getProductsListAction,
    TResult Function(GetCategoriesFailure value)? getCategoryAction,
    TResult Function(GetProductByCategoryFailure value)?
        getProductByCategoryAction,
    TResult Function(GetProductDetailsFailure value)? getProductDetailsAction,
    TResult Function(ProductAdditionFailure value)? addProductAction,
    TResult Function(CategoryAdditionFailure value)? addCategoryAction,
    TResult Function(CategoryUpdateFailure value)? updateCategoryAction,
    TResult Function(ProductUpdateFailure value)? updateProductAction,
    TResult Function(ProductDeletionFailure value)? deleteProductAction,
    TResult Function(CategoryDeletionFailure value)? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (getProductDetailsAction != null) {
      return getProductDetailsAction(this);
    }
    return orElse();
  }
}

abstract class GetProductDetailsFailure implements DatabaseActionException {
  const factory GetProductDetailsFailure() = _$GetProductDetailsFailure;
}

/// @nodoc
abstract class $ProductAdditionFailureCopyWith<$Res> {
  factory $ProductAdditionFailureCopyWith(ProductAdditionFailure value,
          $Res Function(ProductAdditionFailure) then) =
      _$ProductAdditionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductAdditionFailureCopyWithImpl<$Res>
    extends _$DatabaseActionExceptionCopyWithImpl<$Res>
    implements $ProductAdditionFailureCopyWith<$Res> {
  _$ProductAdditionFailureCopyWithImpl(ProductAdditionFailure _value,
      $Res Function(ProductAdditionFailure) _then)
      : super(_value, (v) => _then(v as ProductAdditionFailure));

  @override
  ProductAdditionFailure get _value => super._value as ProductAdditionFailure;
}

/// @nodoc

class _$ProductAdditionFailure implements ProductAdditionFailure {
  const _$ProductAdditionFailure();

  @override
  String toString() {
    return 'DatabaseActionException.addProductAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProductAdditionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorizedRequest,
    required TResult Function() getProductsListAction,
    required TResult Function() getCategoryAction,
    required TResult Function() getProductByCategoryAction,
    required TResult Function() getProductDetailsAction,
    required TResult Function() addProductAction,
    required TResult Function() addCategoryAction,
    required TResult Function() updateCategoryAction,
    required TResult Function() updateProductAction,
    required TResult Function() deleteProductAction,
    required TResult Function() deleteCategoryAction,
  }) {
    return addProductAction();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorizedRequest,
    TResult Function()? getProductsListAction,
    TResult Function()? getCategoryAction,
    TResult Function()? getProductByCategoryAction,
    TResult Function()? getProductDetailsAction,
    TResult Function()? addProductAction,
    TResult Function()? addCategoryAction,
    TResult Function()? updateCategoryAction,
    TResult Function()? updateProductAction,
    TResult Function()? deleteProductAction,
    TResult Function()? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (addProductAction != null) {
      return addProductAction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequestFailure value)
        unauthorizedRequest,
    required TResult Function(GetProductsListFailure value)
        getProductsListAction,
    required TResult Function(GetCategoriesFailure value) getCategoryAction,
    required TResult Function(GetProductByCategoryFailure value)
        getProductByCategoryAction,
    required TResult Function(GetProductDetailsFailure value)
        getProductDetailsAction,
    required TResult Function(ProductAdditionFailure value) addProductAction,
    required TResult Function(CategoryAdditionFailure value) addCategoryAction,
    required TResult Function(CategoryUpdateFailure value) updateCategoryAction,
    required TResult Function(ProductUpdateFailure value) updateProductAction,
    required TResult Function(ProductDeletionFailure value) deleteProductAction,
    required TResult Function(CategoryDeletionFailure value)
        deleteCategoryAction,
  }) {
    return addProductAction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequestFailure value)? unauthorizedRequest,
    TResult Function(GetProductsListFailure value)? getProductsListAction,
    TResult Function(GetCategoriesFailure value)? getCategoryAction,
    TResult Function(GetProductByCategoryFailure value)?
        getProductByCategoryAction,
    TResult Function(GetProductDetailsFailure value)? getProductDetailsAction,
    TResult Function(ProductAdditionFailure value)? addProductAction,
    TResult Function(CategoryAdditionFailure value)? addCategoryAction,
    TResult Function(CategoryUpdateFailure value)? updateCategoryAction,
    TResult Function(ProductUpdateFailure value)? updateProductAction,
    TResult Function(ProductDeletionFailure value)? deleteProductAction,
    TResult Function(CategoryDeletionFailure value)? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (addProductAction != null) {
      return addProductAction(this);
    }
    return orElse();
  }
}

abstract class ProductAdditionFailure implements DatabaseActionException {
  const factory ProductAdditionFailure() = _$ProductAdditionFailure;
}

/// @nodoc
abstract class $CategoryAdditionFailureCopyWith<$Res> {
  factory $CategoryAdditionFailureCopyWith(CategoryAdditionFailure value,
          $Res Function(CategoryAdditionFailure) then) =
      _$CategoryAdditionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryAdditionFailureCopyWithImpl<$Res>
    extends _$DatabaseActionExceptionCopyWithImpl<$Res>
    implements $CategoryAdditionFailureCopyWith<$Res> {
  _$CategoryAdditionFailureCopyWithImpl(CategoryAdditionFailure _value,
      $Res Function(CategoryAdditionFailure) _then)
      : super(_value, (v) => _then(v as CategoryAdditionFailure));

  @override
  CategoryAdditionFailure get _value => super._value as CategoryAdditionFailure;
}

/// @nodoc

class _$CategoryAdditionFailure implements CategoryAdditionFailure {
  const _$CategoryAdditionFailure();

  @override
  String toString() {
    return 'DatabaseActionException.addCategoryAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CategoryAdditionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorizedRequest,
    required TResult Function() getProductsListAction,
    required TResult Function() getCategoryAction,
    required TResult Function() getProductByCategoryAction,
    required TResult Function() getProductDetailsAction,
    required TResult Function() addProductAction,
    required TResult Function() addCategoryAction,
    required TResult Function() updateCategoryAction,
    required TResult Function() updateProductAction,
    required TResult Function() deleteProductAction,
    required TResult Function() deleteCategoryAction,
  }) {
    return addCategoryAction();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorizedRequest,
    TResult Function()? getProductsListAction,
    TResult Function()? getCategoryAction,
    TResult Function()? getProductByCategoryAction,
    TResult Function()? getProductDetailsAction,
    TResult Function()? addProductAction,
    TResult Function()? addCategoryAction,
    TResult Function()? updateCategoryAction,
    TResult Function()? updateProductAction,
    TResult Function()? deleteProductAction,
    TResult Function()? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (addCategoryAction != null) {
      return addCategoryAction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequestFailure value)
        unauthorizedRequest,
    required TResult Function(GetProductsListFailure value)
        getProductsListAction,
    required TResult Function(GetCategoriesFailure value) getCategoryAction,
    required TResult Function(GetProductByCategoryFailure value)
        getProductByCategoryAction,
    required TResult Function(GetProductDetailsFailure value)
        getProductDetailsAction,
    required TResult Function(ProductAdditionFailure value) addProductAction,
    required TResult Function(CategoryAdditionFailure value) addCategoryAction,
    required TResult Function(CategoryUpdateFailure value) updateCategoryAction,
    required TResult Function(ProductUpdateFailure value) updateProductAction,
    required TResult Function(ProductDeletionFailure value) deleteProductAction,
    required TResult Function(CategoryDeletionFailure value)
        deleteCategoryAction,
  }) {
    return addCategoryAction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequestFailure value)? unauthorizedRequest,
    TResult Function(GetProductsListFailure value)? getProductsListAction,
    TResult Function(GetCategoriesFailure value)? getCategoryAction,
    TResult Function(GetProductByCategoryFailure value)?
        getProductByCategoryAction,
    TResult Function(GetProductDetailsFailure value)? getProductDetailsAction,
    TResult Function(ProductAdditionFailure value)? addProductAction,
    TResult Function(CategoryAdditionFailure value)? addCategoryAction,
    TResult Function(CategoryUpdateFailure value)? updateCategoryAction,
    TResult Function(ProductUpdateFailure value)? updateProductAction,
    TResult Function(ProductDeletionFailure value)? deleteProductAction,
    TResult Function(CategoryDeletionFailure value)? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (addCategoryAction != null) {
      return addCategoryAction(this);
    }
    return orElse();
  }
}

abstract class CategoryAdditionFailure implements DatabaseActionException {
  const factory CategoryAdditionFailure() = _$CategoryAdditionFailure;
}

/// @nodoc
abstract class $CategoryUpdateFailureCopyWith<$Res> {
  factory $CategoryUpdateFailureCopyWith(CategoryUpdateFailure value,
          $Res Function(CategoryUpdateFailure) then) =
      _$CategoryUpdateFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryUpdateFailureCopyWithImpl<$Res>
    extends _$DatabaseActionExceptionCopyWithImpl<$Res>
    implements $CategoryUpdateFailureCopyWith<$Res> {
  _$CategoryUpdateFailureCopyWithImpl(
      CategoryUpdateFailure _value, $Res Function(CategoryUpdateFailure) _then)
      : super(_value, (v) => _then(v as CategoryUpdateFailure));

  @override
  CategoryUpdateFailure get _value => super._value as CategoryUpdateFailure;
}

/// @nodoc

class _$CategoryUpdateFailure implements CategoryUpdateFailure {
  const _$CategoryUpdateFailure();

  @override
  String toString() {
    return 'DatabaseActionException.updateCategoryAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CategoryUpdateFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorizedRequest,
    required TResult Function() getProductsListAction,
    required TResult Function() getCategoryAction,
    required TResult Function() getProductByCategoryAction,
    required TResult Function() getProductDetailsAction,
    required TResult Function() addProductAction,
    required TResult Function() addCategoryAction,
    required TResult Function() updateCategoryAction,
    required TResult Function() updateProductAction,
    required TResult Function() deleteProductAction,
    required TResult Function() deleteCategoryAction,
  }) {
    return updateCategoryAction();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorizedRequest,
    TResult Function()? getProductsListAction,
    TResult Function()? getCategoryAction,
    TResult Function()? getProductByCategoryAction,
    TResult Function()? getProductDetailsAction,
    TResult Function()? addProductAction,
    TResult Function()? addCategoryAction,
    TResult Function()? updateCategoryAction,
    TResult Function()? updateProductAction,
    TResult Function()? deleteProductAction,
    TResult Function()? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (updateCategoryAction != null) {
      return updateCategoryAction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequestFailure value)
        unauthorizedRequest,
    required TResult Function(GetProductsListFailure value)
        getProductsListAction,
    required TResult Function(GetCategoriesFailure value) getCategoryAction,
    required TResult Function(GetProductByCategoryFailure value)
        getProductByCategoryAction,
    required TResult Function(GetProductDetailsFailure value)
        getProductDetailsAction,
    required TResult Function(ProductAdditionFailure value) addProductAction,
    required TResult Function(CategoryAdditionFailure value) addCategoryAction,
    required TResult Function(CategoryUpdateFailure value) updateCategoryAction,
    required TResult Function(ProductUpdateFailure value) updateProductAction,
    required TResult Function(ProductDeletionFailure value) deleteProductAction,
    required TResult Function(CategoryDeletionFailure value)
        deleteCategoryAction,
  }) {
    return updateCategoryAction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequestFailure value)? unauthorizedRequest,
    TResult Function(GetProductsListFailure value)? getProductsListAction,
    TResult Function(GetCategoriesFailure value)? getCategoryAction,
    TResult Function(GetProductByCategoryFailure value)?
        getProductByCategoryAction,
    TResult Function(GetProductDetailsFailure value)? getProductDetailsAction,
    TResult Function(ProductAdditionFailure value)? addProductAction,
    TResult Function(CategoryAdditionFailure value)? addCategoryAction,
    TResult Function(CategoryUpdateFailure value)? updateCategoryAction,
    TResult Function(ProductUpdateFailure value)? updateProductAction,
    TResult Function(ProductDeletionFailure value)? deleteProductAction,
    TResult Function(CategoryDeletionFailure value)? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (updateCategoryAction != null) {
      return updateCategoryAction(this);
    }
    return orElse();
  }
}

abstract class CategoryUpdateFailure implements DatabaseActionException {
  const factory CategoryUpdateFailure() = _$CategoryUpdateFailure;
}

/// @nodoc
abstract class $ProductUpdateFailureCopyWith<$Res> {
  factory $ProductUpdateFailureCopyWith(ProductUpdateFailure value,
          $Res Function(ProductUpdateFailure) then) =
      _$ProductUpdateFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductUpdateFailureCopyWithImpl<$Res>
    extends _$DatabaseActionExceptionCopyWithImpl<$Res>
    implements $ProductUpdateFailureCopyWith<$Res> {
  _$ProductUpdateFailureCopyWithImpl(
      ProductUpdateFailure _value, $Res Function(ProductUpdateFailure) _then)
      : super(_value, (v) => _then(v as ProductUpdateFailure));

  @override
  ProductUpdateFailure get _value => super._value as ProductUpdateFailure;
}

/// @nodoc

class _$ProductUpdateFailure implements ProductUpdateFailure {
  const _$ProductUpdateFailure();

  @override
  String toString() {
    return 'DatabaseActionException.updateProductAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProductUpdateFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorizedRequest,
    required TResult Function() getProductsListAction,
    required TResult Function() getCategoryAction,
    required TResult Function() getProductByCategoryAction,
    required TResult Function() getProductDetailsAction,
    required TResult Function() addProductAction,
    required TResult Function() addCategoryAction,
    required TResult Function() updateCategoryAction,
    required TResult Function() updateProductAction,
    required TResult Function() deleteProductAction,
    required TResult Function() deleteCategoryAction,
  }) {
    return updateProductAction();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorizedRequest,
    TResult Function()? getProductsListAction,
    TResult Function()? getCategoryAction,
    TResult Function()? getProductByCategoryAction,
    TResult Function()? getProductDetailsAction,
    TResult Function()? addProductAction,
    TResult Function()? addCategoryAction,
    TResult Function()? updateCategoryAction,
    TResult Function()? updateProductAction,
    TResult Function()? deleteProductAction,
    TResult Function()? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (updateProductAction != null) {
      return updateProductAction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequestFailure value)
        unauthorizedRequest,
    required TResult Function(GetProductsListFailure value)
        getProductsListAction,
    required TResult Function(GetCategoriesFailure value) getCategoryAction,
    required TResult Function(GetProductByCategoryFailure value)
        getProductByCategoryAction,
    required TResult Function(GetProductDetailsFailure value)
        getProductDetailsAction,
    required TResult Function(ProductAdditionFailure value) addProductAction,
    required TResult Function(CategoryAdditionFailure value) addCategoryAction,
    required TResult Function(CategoryUpdateFailure value) updateCategoryAction,
    required TResult Function(ProductUpdateFailure value) updateProductAction,
    required TResult Function(ProductDeletionFailure value) deleteProductAction,
    required TResult Function(CategoryDeletionFailure value)
        deleteCategoryAction,
  }) {
    return updateProductAction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequestFailure value)? unauthorizedRequest,
    TResult Function(GetProductsListFailure value)? getProductsListAction,
    TResult Function(GetCategoriesFailure value)? getCategoryAction,
    TResult Function(GetProductByCategoryFailure value)?
        getProductByCategoryAction,
    TResult Function(GetProductDetailsFailure value)? getProductDetailsAction,
    TResult Function(ProductAdditionFailure value)? addProductAction,
    TResult Function(CategoryAdditionFailure value)? addCategoryAction,
    TResult Function(CategoryUpdateFailure value)? updateCategoryAction,
    TResult Function(ProductUpdateFailure value)? updateProductAction,
    TResult Function(ProductDeletionFailure value)? deleteProductAction,
    TResult Function(CategoryDeletionFailure value)? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (updateProductAction != null) {
      return updateProductAction(this);
    }
    return orElse();
  }
}

abstract class ProductUpdateFailure implements DatabaseActionException {
  const factory ProductUpdateFailure() = _$ProductUpdateFailure;
}

/// @nodoc
abstract class $ProductDeletionFailureCopyWith<$Res> {
  factory $ProductDeletionFailureCopyWith(ProductDeletionFailure value,
          $Res Function(ProductDeletionFailure) then) =
      _$ProductDeletionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductDeletionFailureCopyWithImpl<$Res>
    extends _$DatabaseActionExceptionCopyWithImpl<$Res>
    implements $ProductDeletionFailureCopyWith<$Res> {
  _$ProductDeletionFailureCopyWithImpl(ProductDeletionFailure _value,
      $Res Function(ProductDeletionFailure) _then)
      : super(_value, (v) => _then(v as ProductDeletionFailure));

  @override
  ProductDeletionFailure get _value => super._value as ProductDeletionFailure;
}

/// @nodoc

class _$ProductDeletionFailure implements ProductDeletionFailure {
  const _$ProductDeletionFailure();

  @override
  String toString() {
    return 'DatabaseActionException.deleteProductAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProductDeletionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorizedRequest,
    required TResult Function() getProductsListAction,
    required TResult Function() getCategoryAction,
    required TResult Function() getProductByCategoryAction,
    required TResult Function() getProductDetailsAction,
    required TResult Function() addProductAction,
    required TResult Function() addCategoryAction,
    required TResult Function() updateCategoryAction,
    required TResult Function() updateProductAction,
    required TResult Function() deleteProductAction,
    required TResult Function() deleteCategoryAction,
  }) {
    return deleteProductAction();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorizedRequest,
    TResult Function()? getProductsListAction,
    TResult Function()? getCategoryAction,
    TResult Function()? getProductByCategoryAction,
    TResult Function()? getProductDetailsAction,
    TResult Function()? addProductAction,
    TResult Function()? addCategoryAction,
    TResult Function()? updateCategoryAction,
    TResult Function()? updateProductAction,
    TResult Function()? deleteProductAction,
    TResult Function()? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (deleteProductAction != null) {
      return deleteProductAction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequestFailure value)
        unauthorizedRequest,
    required TResult Function(GetProductsListFailure value)
        getProductsListAction,
    required TResult Function(GetCategoriesFailure value) getCategoryAction,
    required TResult Function(GetProductByCategoryFailure value)
        getProductByCategoryAction,
    required TResult Function(GetProductDetailsFailure value)
        getProductDetailsAction,
    required TResult Function(ProductAdditionFailure value) addProductAction,
    required TResult Function(CategoryAdditionFailure value) addCategoryAction,
    required TResult Function(CategoryUpdateFailure value) updateCategoryAction,
    required TResult Function(ProductUpdateFailure value) updateProductAction,
    required TResult Function(ProductDeletionFailure value) deleteProductAction,
    required TResult Function(CategoryDeletionFailure value)
        deleteCategoryAction,
  }) {
    return deleteProductAction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequestFailure value)? unauthorizedRequest,
    TResult Function(GetProductsListFailure value)? getProductsListAction,
    TResult Function(GetCategoriesFailure value)? getCategoryAction,
    TResult Function(GetProductByCategoryFailure value)?
        getProductByCategoryAction,
    TResult Function(GetProductDetailsFailure value)? getProductDetailsAction,
    TResult Function(ProductAdditionFailure value)? addProductAction,
    TResult Function(CategoryAdditionFailure value)? addCategoryAction,
    TResult Function(CategoryUpdateFailure value)? updateCategoryAction,
    TResult Function(ProductUpdateFailure value)? updateProductAction,
    TResult Function(ProductDeletionFailure value)? deleteProductAction,
    TResult Function(CategoryDeletionFailure value)? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (deleteProductAction != null) {
      return deleteProductAction(this);
    }
    return orElse();
  }
}

abstract class ProductDeletionFailure implements DatabaseActionException {
  const factory ProductDeletionFailure() = _$ProductDeletionFailure;
}

/// @nodoc
abstract class $CategoryDeletionFailureCopyWith<$Res> {
  factory $CategoryDeletionFailureCopyWith(CategoryDeletionFailure value,
          $Res Function(CategoryDeletionFailure) then) =
      _$CategoryDeletionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryDeletionFailureCopyWithImpl<$Res>
    extends _$DatabaseActionExceptionCopyWithImpl<$Res>
    implements $CategoryDeletionFailureCopyWith<$Res> {
  _$CategoryDeletionFailureCopyWithImpl(CategoryDeletionFailure _value,
      $Res Function(CategoryDeletionFailure) _then)
      : super(_value, (v) => _then(v as CategoryDeletionFailure));

  @override
  CategoryDeletionFailure get _value => super._value as CategoryDeletionFailure;
}

/// @nodoc

class _$CategoryDeletionFailure implements CategoryDeletionFailure {
  const _$CategoryDeletionFailure();

  @override
  String toString() {
    return 'DatabaseActionException.deleteCategoryAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CategoryDeletionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorizedRequest,
    required TResult Function() getProductsListAction,
    required TResult Function() getCategoryAction,
    required TResult Function() getProductByCategoryAction,
    required TResult Function() getProductDetailsAction,
    required TResult Function() addProductAction,
    required TResult Function() addCategoryAction,
    required TResult Function() updateCategoryAction,
    required TResult Function() updateProductAction,
    required TResult Function() deleteProductAction,
    required TResult Function() deleteCategoryAction,
  }) {
    return deleteCategoryAction();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorizedRequest,
    TResult Function()? getProductsListAction,
    TResult Function()? getCategoryAction,
    TResult Function()? getProductByCategoryAction,
    TResult Function()? getProductDetailsAction,
    TResult Function()? addProductAction,
    TResult Function()? addCategoryAction,
    TResult Function()? updateCategoryAction,
    TResult Function()? updateProductAction,
    TResult Function()? deleteProductAction,
    TResult Function()? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (deleteCategoryAction != null) {
      return deleteCategoryAction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequestFailure value)
        unauthorizedRequest,
    required TResult Function(GetProductsListFailure value)
        getProductsListAction,
    required TResult Function(GetCategoriesFailure value) getCategoryAction,
    required TResult Function(GetProductByCategoryFailure value)
        getProductByCategoryAction,
    required TResult Function(GetProductDetailsFailure value)
        getProductDetailsAction,
    required TResult Function(ProductAdditionFailure value) addProductAction,
    required TResult Function(CategoryAdditionFailure value) addCategoryAction,
    required TResult Function(CategoryUpdateFailure value) updateCategoryAction,
    required TResult Function(ProductUpdateFailure value) updateProductAction,
    required TResult Function(ProductDeletionFailure value) deleteProductAction,
    required TResult Function(CategoryDeletionFailure value)
        deleteCategoryAction,
  }) {
    return deleteCategoryAction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequestFailure value)? unauthorizedRequest,
    TResult Function(GetProductsListFailure value)? getProductsListAction,
    TResult Function(GetCategoriesFailure value)? getCategoryAction,
    TResult Function(GetProductByCategoryFailure value)?
        getProductByCategoryAction,
    TResult Function(GetProductDetailsFailure value)? getProductDetailsAction,
    TResult Function(ProductAdditionFailure value)? addProductAction,
    TResult Function(CategoryAdditionFailure value)? addCategoryAction,
    TResult Function(CategoryUpdateFailure value)? updateCategoryAction,
    TResult Function(ProductUpdateFailure value)? updateProductAction,
    TResult Function(ProductDeletionFailure value)? deleteProductAction,
    TResult Function(CategoryDeletionFailure value)? deleteCategoryAction,
    required TResult orElse(),
  }) {
    if (deleteCategoryAction != null) {
      return deleteCategoryAction(this);
    }
    return orElse();
  }
}

abstract class CategoryDeletionFailure implements DatabaseActionException {
  const factory CategoryDeletionFailure() = _$CategoryDeletionFailure;
}

/// @nodoc
class _$ValueIsValidTearOff {
  const _$ValueIsValidTearOff();

  ValidValue valueIsValid() {
    return const ValidValue();
  }
}

/// @nodoc
const $ValueIsValid = _$ValueIsValidTearOff();

/// @nodoc
mixin _$ValueIsValid {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() valueIsValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? valueIsValid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidValue value) valueIsValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidValue value)? valueIsValid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueIsValidCopyWith<$Res> {
  factory $ValueIsValidCopyWith(
          ValueIsValid value, $Res Function(ValueIsValid) then) =
      _$ValueIsValidCopyWithImpl<$Res>;
}

/// @nodoc
class _$ValueIsValidCopyWithImpl<$Res> implements $ValueIsValidCopyWith<$Res> {
  _$ValueIsValidCopyWithImpl(this._value, this._then);

  final ValueIsValid _value;
  // ignore: unused_field
  final $Res Function(ValueIsValid) _then;
}

/// @nodoc
abstract class $ValidValueCopyWith<$Res> {
  factory $ValidValueCopyWith(
          ValidValue value, $Res Function(ValidValue) then) =
      _$ValidValueCopyWithImpl<$Res>;
}

/// @nodoc
class _$ValidValueCopyWithImpl<$Res> extends _$ValueIsValidCopyWithImpl<$Res>
    implements $ValidValueCopyWith<$Res> {
  _$ValidValueCopyWithImpl(ValidValue _value, $Res Function(ValidValue) _then)
      : super(_value, (v) => _then(v as ValidValue));

  @override
  ValidValue get _value => super._value as ValidValue;
}

/// @nodoc

class _$ValidValue implements ValidValue {
  const _$ValidValue();

  @override
  String toString() {
    return 'ValueIsValid.valueIsValid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ValidValue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() valueIsValid,
  }) {
    return valueIsValid();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? valueIsValid,
    required TResult orElse(),
  }) {
    if (valueIsValid != null) {
      return valueIsValid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidValue value) valueIsValid,
  }) {
    return valueIsValid(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidValue value)? valueIsValid,
    required TResult orElse(),
  }) {
    if (valueIsValid != null) {
      return valueIsValid(this);
    }
    return orElse();
  }
}

abstract class ValidValue implements ValueIsValid {
  const factory ValidValue() = _$ValidValue;
}

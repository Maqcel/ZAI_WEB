part of 'products_cubit.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    required bool isWidgetSelected,
    required bool isLoading,
    required Widget child,
  }) = _ProductsState;

  const ProductsState._();

  factory ProductsState.init() => ProductsState(
        isWidgetSelected: false,
        isLoading: true,
        child: Container(),
      );
}

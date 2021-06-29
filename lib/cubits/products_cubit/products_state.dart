part of 'products_cubit.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    required bool isProductSelected,
    required bool isLoading,
    required Product product,
  }) = _ProductsState;

  const ProductsState._();

  factory ProductsState.init() => ProductsState(
        isProductSelected: false,
        isLoading: true,
        product: Product(
          id: 0,
          name: '',
          price: '0.0',
          description: '',
          image: '',
          category: Category(id: 0, name: ''),
        ),
      );
}

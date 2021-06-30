import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zai/models/product_model/product.dart';
import 'package:zai/repositories/products_repository.dart';

part 'products_state.dart';
part 'products_cubit.freezed.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductsRepository _productsRepository;
  ProductsCubit(this._productsRepository) : super(ProductsState.init());

  void goBackToGridView() async {
    await _productsRepository.getAllProducts();
    emit(
      state.copyWith(
        isWidgetSelected: false,
      ),
    );
  }

  void setScreenView(Widget child) => emit(
        state.copyWith(
          isWidgetSelected: true,
          child: child,
        ),
      );

  List<Product> getCurrentProducts() => _productsRepository.getCurrentProducts;

  Future<void> fetchAllProducts() async {
    emit(state.copyWith(isLoading: true));
    await _productsRepository.getAllProducts();
    emit(state.copyWith(isLoading: false));
  }
}

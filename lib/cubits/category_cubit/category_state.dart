part of 'category_cubit.dart';

@freezed
abstract class CategoryState with _$CategoryState {
  const factory CategoryState({
    required List<Category> categories,
  }) = _CategoryState;

  const CategoryState._();

  factory CategoryState.init() => CategoryState(
        categories: [],
      );
}

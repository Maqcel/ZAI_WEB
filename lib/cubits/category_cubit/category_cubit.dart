import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zai/models/category_model/category.dart';
import 'package:zai/repositories/category_repository.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryRepository categoryRepository;
  CategoryCubit({
    required this.categoryRepository,
  }) : super(CategoryState.init());

  void fetchCategories() async {
    await categoryRepository.getAllCategories();
    emit(state.copyWith(categories: categoryRepository.getCurrentCategories));
  }
}

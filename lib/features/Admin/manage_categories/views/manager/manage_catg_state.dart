import 'package:nile_brand/features/User/home/data/models/category_model.dart';
import 'package:nile_brand/features/User/category/data/models/sub_category_model.dart';

import '../../data/models/subCategory_reponse.dart';

abstract class ManageCatgState {}

class ManageCatgInitial extends ManageCatgState {}

class ManageCatgLoading extends ManageCatgState {}

// CATEGORY STATES
class CategoryCreateSuccess extends ManageCatgState {
  final CategoryModel category;

  CategoryCreateSuccess(this.category);
}

class CategoryUpdateSuccess extends ManageCatgState {
  final String message;

  CategoryUpdateSuccess(this.message);
}

class CategoryDeleteSuccess extends ManageCatgState {
  final String message;

  CategoryDeleteSuccess(this.message);
}

// SUBCATEGORY STATES
class SubCategoryCreateSuccess extends ManageCatgState {
  final  SubCategoryResponse subCategory;

  SubCategoryCreateSuccess(this.subCategory);
}

class SubCategoryUpdateSuccess extends ManageCatgState {
  final String message;

  SubCategoryUpdateSuccess(this.message);
}

class SubCategoryDeleteSuccess extends ManageCatgState {
  final String message;

  SubCategoryDeleteSuccess(this.message);
}

class ChangeCtgImage extends ManageCatgState{}

class ManageCatgCategorySelected extends ManageCatgState {
  final String categoryId;
  ManageCatgCategorySelected(this.categoryId);
}

// FAILURE STATE
class ManageCatgFailure extends ManageCatgState {
  final String error;

  ManageCatgFailure(this.error);
}

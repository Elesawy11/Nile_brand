// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetCategoryState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetCategoryState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetCategoryState()';
  }
}

/// @nodoc
class $GetCategoryStateCopyWith<$Res> {
  $GetCategoryStateCopyWith(
      GetCategoryState _, $Res Function(GetCategoryState) __);
}

/// @nodoc

class _Initial implements GetCategoryState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetCategoryState.initial()';
  }
}

/// @nodoc

class CategoryLoading implements GetCategoryState {
  const CategoryLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CategoryLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetCategoryState.categoryLoading()';
  }
}

/// @nodoc

class CategorySuccess implements GetCategoryState {
  const CategorySuccess({required final List<CategoryModel> categories})
      : _categories = categories;

  final List<CategoryModel> _categories;
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  /// Create a copy of GetCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategorySuccessCopyWith<CategorySuccess> get copyWith =>
      _$CategorySuccessCopyWithImpl<CategorySuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategorySuccess &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @override
  String toString() {
    return 'GetCategoryState.categorySuccess(categories: $categories)';
  }
}

/// @nodoc
abstract mixin class $CategorySuccessCopyWith<$Res>
    implements $GetCategoryStateCopyWith<$Res> {
  factory $CategorySuccessCopyWith(
          CategorySuccess value, $Res Function(CategorySuccess) _then) =
      _$CategorySuccessCopyWithImpl;
  @useResult
  $Res call({List<CategoryModel> categories});
}

/// @nodoc
class _$CategorySuccessCopyWithImpl<$Res>
    implements $CategorySuccessCopyWith<$Res> {
  _$CategorySuccessCopyWithImpl(this._self, this._then);

  final CategorySuccess _self;
  final $Res Function(CategorySuccess) _then;

  /// Create a copy of GetCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categories = null,
  }) {
    return _then(CategorySuccess(
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class CategoryError implements GetCategoryState {
  const CategoryError({required this.error});

  final String error;

  /// Create a copy of GetCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryErrorCopyWith<CategoryError> get copyWith =>
      _$CategoryErrorCopyWithImpl<CategoryError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'GetCategoryState.categoryError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $CategoryErrorCopyWith<$Res>
    implements $GetCategoryStateCopyWith<$Res> {
  factory $CategoryErrorCopyWith(
          CategoryError value, $Res Function(CategoryError) _then) =
      _$CategoryErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$CategoryErrorCopyWithImpl<$Res>
    implements $CategoryErrorCopyWith<$Res> {
  _$CategoryErrorCopyWithImpl(this._self, this._then);

  final CategoryError _self;
  final $Res Function(CategoryError) _then;

  /// Create a copy of GetCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(CategoryError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CategoryPaginationLoading implements GetCategoryState {
  const CategoryPaginationLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryPaginationLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetCategoryState.categoryPaginationLoading()';
  }
}

/// @nodoc

class CategoryPaginationError implements GetCategoryState {
  const CategoryPaginationError({required this.error});

  final String error;

  /// Create a copy of GetCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryPaginationErrorCopyWith<CategoryPaginationError> get copyWith =>
      _$CategoryPaginationErrorCopyWithImpl<CategoryPaginationError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryPaginationError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'GetCategoryState.categoryPaginationError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $CategoryPaginationErrorCopyWith<$Res>
    implements $GetCategoryStateCopyWith<$Res> {
  factory $CategoryPaginationErrorCopyWith(CategoryPaginationError value,
          $Res Function(CategoryPaginationError) _then) =
      _$CategoryPaginationErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$CategoryPaginationErrorCopyWithImpl<$Res>
    implements $CategoryPaginationErrorCopyWith<$Res> {
  _$CategoryPaginationErrorCopyWithImpl(this._self, this._then);

  final CategoryPaginationError _self;
  final $Res Function(CategoryPaginationError) _then;

  /// Create a copy of GetCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(CategoryPaginationError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

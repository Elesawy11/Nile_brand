// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_category_products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetCategoryProductsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetCategoryProductsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetCategoryProductsState()';
  }
}

/// @nodoc
class $GetCategoryProductsStateCopyWith<$Res> {
  $GetCategoryProductsStateCopyWith(
      GetCategoryProductsState _, $Res Function(GetCategoryProductsState) __);
}

/// @nodoc

class _Initial implements GetCategoryProductsState {
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
    return 'GetCategoryProductsState.initial()';
  }
}

/// @nodoc

class GetProductsLoading implements GetCategoryProductsState {
  const GetProductsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetProductsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetCategoryProductsState.getProductsLoading()';
  }
}

/// @nodoc

class GetProductsSuccess implements GetCategoryProductsState {
  const GetProductsSuccess({required final List<ProductModel> products})
      : _products = products;

  final List<ProductModel> _products;
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  /// Create a copy of GetCategoryProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetProductsSuccessCopyWith<GetProductsSuccess> get copyWith =>
      _$GetProductsSuccessCopyWithImpl<GetProductsSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetProductsSuccess &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @override
  String toString() {
    return 'GetCategoryProductsState.getProductsSuccess(products: $products)';
  }
}

/// @nodoc
abstract mixin class $GetProductsSuccessCopyWith<$Res>
    implements $GetCategoryProductsStateCopyWith<$Res> {
  factory $GetProductsSuccessCopyWith(
          GetProductsSuccess value, $Res Function(GetProductsSuccess) _then) =
      _$GetProductsSuccessCopyWithImpl;
  @useResult
  $Res call({List<ProductModel> products});
}

/// @nodoc
class _$GetProductsSuccessCopyWithImpl<$Res>
    implements $GetProductsSuccessCopyWith<$Res> {
  _$GetProductsSuccessCopyWithImpl(this._self, this._then);

  final GetProductsSuccess _self;
  final $Res Function(GetProductsSuccess) _then;

  /// Create a copy of GetCategoryProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? products = null,
  }) {
    return _then(GetProductsSuccess(
      products: null == products
          ? _self._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class GetProductsError implements GetCategoryProductsState {
  const GetProductsError({required this.error});

  final String error;

  /// Create a copy of GetCategoryProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetProductsErrorCopyWith<GetProductsError> get copyWith =>
      _$GetProductsErrorCopyWithImpl<GetProductsError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetProductsError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'GetCategoryProductsState.getProductsError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $GetProductsErrorCopyWith<$Res>
    implements $GetCategoryProductsStateCopyWith<$Res> {
  factory $GetProductsErrorCopyWith(
          GetProductsError value, $Res Function(GetProductsError) _then) =
      _$GetProductsErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GetProductsErrorCopyWithImpl<$Res>
    implements $GetProductsErrorCopyWith<$Res> {
  _$GetProductsErrorCopyWithImpl(this._self, this._then);

  final GetProductsError _self;
  final $Res Function(GetProductsError) _then;

  /// Create a copy of GetCategoryProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(GetProductsError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

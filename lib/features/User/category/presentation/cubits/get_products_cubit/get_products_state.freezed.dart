// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetProductsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetProductsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetProductsState()';
  }
}

/// @nodoc
class $GetProductsStateCopyWith<$Res> {
  $GetProductsStateCopyWith(
      GetProductsState _, $Res Function(GetProductsState) __);
}

/// @nodoc

class _Initial implements GetProductsState {
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
    return 'GetProductsState.initial()';
  }
}

/// @nodoc

class GetProductSuccess implements GetProductsState {
  const GetProductSuccess({required final List<ProductModel> products})
      : _products = products;

  final List<ProductModel> _products;
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  /// Create a copy of GetProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetProductSuccessCopyWith<GetProductSuccess> get copyWith =>
      _$GetProductSuccessCopyWithImpl<GetProductSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetProductSuccess &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @override
  String toString() {
    return 'GetProductsState.getProductSuccess(products: $products)';
  }
}

/// @nodoc
abstract mixin class $GetProductSuccessCopyWith<$Res>
    implements $GetProductsStateCopyWith<$Res> {
  factory $GetProductSuccessCopyWith(
          GetProductSuccess value, $Res Function(GetProductSuccess) _then) =
      _$GetProductSuccessCopyWithImpl;
  @useResult
  $Res call({List<ProductModel> products});
}

/// @nodoc
class _$GetProductSuccessCopyWithImpl<$Res>
    implements $GetProductSuccessCopyWith<$Res> {
  _$GetProductSuccessCopyWithImpl(this._self, this._then);

  final GetProductSuccess _self;
  final $Res Function(GetProductSuccess) _then;

  /// Create a copy of GetProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? products = null,
  }) {
    return _then(GetProductSuccess(
      products: null == products
          ? _self._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class GetProductLoading implements GetProductsState {
  const GetProductLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetProductsState.getProductLoading()';
  }
}

/// @nodoc

class GetProductError implements GetProductsState {
  const GetProductError({required this.error});

  final String error;

  /// Create a copy of GetProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetProductErrorCopyWith<GetProductError> get copyWith =>
      _$GetProductErrorCopyWithImpl<GetProductError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetProductError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'GetProductsState.getProductError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $GetProductErrorCopyWith<$Res>
    implements $GetProductsStateCopyWith<$Res> {
  factory $GetProductErrorCopyWith(
          GetProductError value, $Res Function(GetProductError) _then) =
      _$GetProductErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GetProductErrorCopyWithImpl<$Res>
    implements $GetProductErrorCopyWith<$Res> {
  _$GetProductErrorCopyWithImpl(this._self, this._then);

  final GetProductError _self;
  final $Res Function(GetProductError) _then;

  /// Create a copy of GetProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(GetProductError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

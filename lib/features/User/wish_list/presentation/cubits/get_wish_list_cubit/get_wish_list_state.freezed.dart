// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_wish_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetWishListState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetWishListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetWishListState()';
  }
}

/// @nodoc
class $GetWishListStateCopyWith<$Res> {
  $GetWishListStateCopyWith(
      GetWishListState _, $Res Function(GetWishListState) __);
}

/// @nodoc

class _Initial implements GetWishListState {
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
    return 'GetWishListState.initial()';
  }
}

/// @nodoc

class GetWishListLoading implements GetWishListState {
  const GetWishListLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetWishListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetWishListState.getWishListLoading()';
  }
}

/// @nodoc

class GetWishListSuccess implements GetWishListState {
  const GetWishListSuccess({required final List<ProductModel> products})
      : _products = products;

  final List<ProductModel> _products;
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  /// Create a copy of GetWishListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetWishListSuccessCopyWith<GetWishListSuccess> get copyWith =>
      _$GetWishListSuccessCopyWithImpl<GetWishListSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetWishListSuccess &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @override
  String toString() {
    return 'GetWishListState.getWishListSuccess(products: $products)';
  }
}

/// @nodoc
abstract mixin class $GetWishListSuccessCopyWith<$Res>
    implements $GetWishListStateCopyWith<$Res> {
  factory $GetWishListSuccessCopyWith(
          GetWishListSuccess value, $Res Function(GetWishListSuccess) _then) =
      _$GetWishListSuccessCopyWithImpl;
  @useResult
  $Res call({List<ProductModel> products});
}

/// @nodoc
class _$GetWishListSuccessCopyWithImpl<$Res>
    implements $GetWishListSuccessCopyWith<$Res> {
  _$GetWishListSuccessCopyWithImpl(this._self, this._then);

  final GetWishListSuccess _self;
  final $Res Function(GetWishListSuccess) _then;

  /// Create a copy of GetWishListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? products = null,
  }) {
    return _then(GetWishListSuccess(
      products: null == products
          ? _self._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class GetWishListError implements GetWishListState {
  const GetWishListError({required this.error});

  final String error;

  /// Create a copy of GetWishListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetWishListErrorCopyWith<GetWishListError> get copyWith =>
      _$GetWishListErrorCopyWithImpl<GetWishListError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetWishListError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'GetWishListState.getWishListError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $GetWishListErrorCopyWith<$Res>
    implements $GetWishListStateCopyWith<$Res> {
  factory $GetWishListErrorCopyWith(
          GetWishListError value, $Res Function(GetWishListError) _then) =
      _$GetWishListErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GetWishListErrorCopyWithImpl<$Res>
    implements $GetWishListErrorCopyWith<$Res> {
  _$GetWishListErrorCopyWithImpl(this._self, this._then);

  final GetWishListError _self;
  final $Res Function(GetWishListError) _then;

  /// Create a copy of GetWishListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(GetWishListError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

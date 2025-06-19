// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_my_cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetMyCartState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetMyCartState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetMyCartState()';
  }
}

/// @nodoc
class $GetMyCartStateCopyWith<$Res> {
  $GetMyCartStateCopyWith(GetMyCartState _, $Res Function(GetMyCartState) __);
}

/// @nodoc

class _Initial implements GetMyCartState {
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
    return 'GetMyCartState.initial()';
  }
}

/// @nodoc

class GetMyCartSuccess implements GetMyCartState {
  const GetMyCartSuccess(
      {required this.myCart, required final List<ProductModel> productsList})
      : _productsList = productsList;

  final MyCartModel myCart;
  final List<ProductModel> _productsList;
  List<ProductModel> get productsList {
    if (_productsList is EqualUnmodifiableListView) return _productsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsList);
  }

  /// Create a copy of GetMyCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetMyCartSuccessCopyWith<GetMyCartSuccess> get copyWith =>
      _$GetMyCartSuccessCopyWithImpl<GetMyCartSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMyCartSuccess &&
            (identical(other.myCart, myCart) || other.myCart == myCart) &&
            const DeepCollectionEquality()
                .equals(other._productsList, _productsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, myCart, const DeepCollectionEquality().hash(_productsList));

  @override
  String toString() {
    return 'GetMyCartState.getMyCartSuccess(myCart: $myCart, productsList: $productsList)';
  }
}

/// @nodoc
abstract mixin class $GetMyCartSuccessCopyWith<$Res>
    implements $GetMyCartStateCopyWith<$Res> {
  factory $GetMyCartSuccessCopyWith(
          GetMyCartSuccess value, $Res Function(GetMyCartSuccess) _then) =
      _$GetMyCartSuccessCopyWithImpl;
  @useResult
  $Res call({MyCartModel myCart, List<ProductModel> productsList});
}

/// @nodoc
class _$GetMyCartSuccessCopyWithImpl<$Res>
    implements $GetMyCartSuccessCopyWith<$Res> {
  _$GetMyCartSuccessCopyWithImpl(this._self, this._then);

  final GetMyCartSuccess _self;
  final $Res Function(GetMyCartSuccess) _then;

  /// Create a copy of GetMyCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? myCart = null,
    Object? productsList = null,
  }) {
    return _then(GetMyCartSuccess(
      myCart: null == myCart
          ? _self.myCart
          : myCart // ignore: cast_nullable_to_non_nullable
              as MyCartModel,
      productsList: null == productsList
          ? _self._productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class GetMyCartLoading implements GetMyCartState {
  const GetMyCartLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetMyCartLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetMyCartState.getMyCartLoading()';
  }
}

/// @nodoc

class GetMyCartError implements GetMyCartState {
  const GetMyCartError({required this.error});

  final String error;

  /// Create a copy of GetMyCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetMyCartErrorCopyWith<GetMyCartError> get copyWith =>
      _$GetMyCartErrorCopyWithImpl<GetMyCartError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMyCartError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'GetMyCartState.getMyCartError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $GetMyCartErrorCopyWith<$Res>
    implements $GetMyCartStateCopyWith<$Res> {
  factory $GetMyCartErrorCopyWith(
          GetMyCartError value, $Res Function(GetMyCartError) _then) =
      _$GetMyCartErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GetMyCartErrorCopyWithImpl<$Res>
    implements $GetMyCartErrorCopyWith<$Res> {
  _$GetMyCartErrorCopyWithImpl(this._self, this._then);

  final GetMyCartError _self;
  final $Res Function(GetMyCartError) _then;

  /// Create a copy of GetMyCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(GetMyCartError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

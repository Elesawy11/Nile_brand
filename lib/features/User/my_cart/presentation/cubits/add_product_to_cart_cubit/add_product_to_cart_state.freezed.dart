// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_product_to_cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddProductToCartState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddProductToCartState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AddProductToCartState()';
  }
}

/// @nodoc
class $AddProductToCartStateCopyWith<$Res> {
  $AddProductToCartStateCopyWith(
      AddProductToCartState _, $Res Function(AddProductToCartState) __);
}

/// @nodoc

class _Initial implements AddProductToCartState {
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
    return 'AddProductToCartState.initial()';
  }
}

/// @nodoc

class AddProductLoading implements AddProductToCartState {
  const AddProductLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AddProductToCartState.addProductLoading()';
  }
}

/// @nodoc

class AddProductSuccess implements AddProductToCartState {
  const AddProductSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddProductSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AddProductToCartState.addProductSuccess()';
  }
}

/// @nodoc

class AddProductError implements AddProductToCartState {
  const AddProductError({required this.error});

  final String error;

  /// Create a copy of AddProductToCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddProductErrorCopyWith<AddProductError> get copyWith =>
      _$AddProductErrorCopyWithImpl<AddProductError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddProductError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'AddProductToCartState.addProductError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $AddProductErrorCopyWith<$Res>
    implements $AddProductToCartStateCopyWith<$Res> {
  factory $AddProductErrorCopyWith(
          AddProductError value, $Res Function(AddProductError) _then) =
      _$AddProductErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$AddProductErrorCopyWithImpl<$Res>
    implements $AddProductErrorCopyWith<$Res> {
  _$AddProductErrorCopyWithImpl(this._self, this._then);

  final AddProductError _self;
  final $Res Function(AddProductError) _then;

  /// Create a copy of AddProductToCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(AddProductError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

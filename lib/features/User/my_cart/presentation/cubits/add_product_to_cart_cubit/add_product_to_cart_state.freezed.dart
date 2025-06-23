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

class AddProductToCartLoading implements AddProductToCartState {
  const AddProductToCartLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddProductToCartLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AddProductToCartState.addProductToCartLoading()';
  }
}

/// @nodoc

class AddProductToCartSuccess implements AddProductToCartState {
  const AddProductToCartSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddProductToCartSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AddProductToCartState.addProductToCartSuccess()';
  }
}

/// @nodoc

class AddProductToCartError implements AddProductToCartState {
  const AddProductToCartError({required this.error});

  final String error;

  /// Create a copy of AddProductToCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddProductToCartErrorCopyWith<AddProductToCartError> get copyWith =>
      _$AddProductToCartErrorCopyWithImpl<AddProductToCartError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddProductToCartError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'AddProductToCartState.addProductToCartError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $AddProductToCartErrorCopyWith<$Res>
    implements $AddProductToCartStateCopyWith<$Res> {
  factory $AddProductToCartErrorCopyWith(AddProductToCartError value,
          $Res Function(AddProductToCartError) _then) =
      _$AddProductToCartErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$AddProductToCartErrorCopyWithImpl<$Res>
    implements $AddProductToCartErrorCopyWith<$Res> {
  _$AddProductToCartErrorCopyWithImpl(this._self, this._then);

  final AddProductToCartError _self;
  final $Res Function(AddProductToCartError) _then;

  /// Create a copy of AddProductToCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(AddProductToCartError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_quntity_of_product_cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateQuntityOfProductCartState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateQuntityOfProductCartState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateQuntityOfProductCartState()';
  }
}

/// @nodoc
class $UpdateQuntityOfProductCartStateCopyWith<$Res> {
  $UpdateQuntityOfProductCartStateCopyWith(UpdateQuntityOfProductCartState _,
      $Res Function(UpdateQuntityOfProductCartState) __);
}

/// @nodoc

class _Initial implements UpdateQuntityOfProductCartState {
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
    return 'UpdateQuntityOfProductCartState.initial()';
  }
}

/// @nodoc

class UpdateProductLoading implements UpdateQuntityOfProductCartState {
  const UpdateProductLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateQuntityOfProductCartState.updateProductLoading()';
  }
}

/// @nodoc

class UpdateProductSuccess implements UpdateQuntityOfProductCartState {
  const UpdateProductSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateProductSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateQuntityOfProductCartState.updateProductSuccess()';
  }
}

/// @nodoc

class UpdateProductError implements UpdateQuntityOfProductCartState {
  const UpdateProductError({required this.error});

  final String error;

  /// Create a copy of UpdateQuntityOfProductCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateProductErrorCopyWith<UpdateProductError> get copyWith =>
      _$UpdateProductErrorCopyWithImpl<UpdateProductError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateProductError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'UpdateQuntityOfProductCartState.updateProductError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $UpdateProductErrorCopyWith<$Res>
    implements $UpdateQuntityOfProductCartStateCopyWith<$Res> {
  factory $UpdateProductErrorCopyWith(
          UpdateProductError value, $Res Function(UpdateProductError) _then) =
      _$UpdateProductErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$UpdateProductErrorCopyWithImpl<$Res>
    implements $UpdateProductErrorCopyWith<$Res> {
  _$UpdateProductErrorCopyWithImpl(this._self, this._then);

  final UpdateProductError _self;
  final $Res Function(UpdateProductError) _then;

  /// Create a copy of UpdateQuntityOfProductCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(UpdateProductError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

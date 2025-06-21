// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_from_wishlist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteFromWishlistState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteFromWishlistState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeleteFromWishlistState()';
  }
}

/// @nodoc
class $DeleteFromWishlistStateCopyWith<$Res> {
  $DeleteFromWishlistStateCopyWith(
      DeleteFromWishlistState _, $Res Function(DeleteFromWishlistState) __);
}

/// @nodoc

class _Initial implements DeleteFromWishlistState {
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
    return 'DeleteFromWishlistState.initial()';
  }
}

/// @nodoc

class DeleteProductLoading implements DeleteFromWishlistState {
  const DeleteProductLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeleteFromWishlistState.deleteProductLoading()';
  }
}

/// @nodoc

class DeleteProductSuccess implements DeleteFromWishlistState {
  const DeleteProductSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteProductSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeleteFromWishlistState.deleteProductSuccess()';
  }
}

/// @nodoc

class DeleteProductError implements DeleteFromWishlistState {
  const DeleteProductError({required this.error});

  final String error;

  /// Create a copy of DeleteFromWishlistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteProductErrorCopyWith<DeleteProductError> get copyWith =>
      _$DeleteProductErrorCopyWithImpl<DeleteProductError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteProductError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'DeleteFromWishlistState.deleteProductError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $DeleteProductErrorCopyWith<$Res>
    implements $DeleteFromWishlistStateCopyWith<$Res> {
  factory $DeleteProductErrorCopyWith(
          DeleteProductError value, $Res Function(DeleteProductError) _then) =
      _$DeleteProductErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$DeleteProductErrorCopyWithImpl<$Res>
    implements $DeleteProductErrorCopyWith<$Res> {
  _$DeleteProductErrorCopyWithImpl(this._self, this._then);

  final DeleteProductError _self;
  final $Res Function(DeleteProductError) _then;

  /// Create a copy of DeleteFromWishlistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(DeleteProductError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

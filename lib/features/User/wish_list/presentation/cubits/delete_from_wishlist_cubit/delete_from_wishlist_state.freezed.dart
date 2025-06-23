// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_from_wishlist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteFromWishlistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteProductLoading,
    required TResult Function() deleteProductSuccess,
    required TResult Function(String error) deleteProductError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteProductLoading,
    TResult? Function()? deleteProductSuccess,
    TResult? Function(String error)? deleteProductError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteProductLoading,
    TResult Function()? deleteProductSuccess,
    TResult Function(String error)? deleteProductError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeleteProductLoading value) deleteProductLoading,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductError value) deleteProductError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteProductLoading value)? deleteProductLoading,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductError value)? deleteProductError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteProductLoading value)? deleteProductLoading,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductError value)? deleteProductError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteFromWishlistStateCopyWith<$Res> {
  factory $DeleteFromWishlistStateCopyWith(DeleteFromWishlistState value,
          $Res Function(DeleteFromWishlistState) then) =
      _$DeleteFromWishlistStateCopyWithImpl<$Res, DeleteFromWishlistState>;
}

/// @nodoc
class _$DeleteFromWishlistStateCopyWithImpl<$Res,
        $Val extends DeleteFromWishlistState>
    implements $DeleteFromWishlistStateCopyWith<$Res> {
  _$DeleteFromWishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteFromWishlistState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DeleteFromWishlistStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteFromWishlistState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DeleteFromWishlistState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteProductLoading,
    required TResult Function() deleteProductSuccess,
    required TResult Function(String error) deleteProductError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteProductLoading,
    TResult? Function()? deleteProductSuccess,
    TResult? Function(String error)? deleteProductError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteProductLoading,
    TResult Function()? deleteProductSuccess,
    TResult Function(String error)? deleteProductError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeleteProductLoading value) deleteProductLoading,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductError value) deleteProductError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteProductLoading value)? deleteProductLoading,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductError value)? deleteProductError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteProductLoading value)? deleteProductLoading,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductError value)? deleteProductError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DeleteFromWishlistState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$DeleteProductLoadingImplCopyWith<$Res> {
  factory _$$DeleteProductLoadingImplCopyWith(_$DeleteProductLoadingImpl value,
          $Res Function(_$DeleteProductLoadingImpl) then) =
      __$$DeleteProductLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteProductLoadingImplCopyWithImpl<$Res>
    extends _$DeleteFromWishlistStateCopyWithImpl<$Res,
        _$DeleteProductLoadingImpl>
    implements _$$DeleteProductLoadingImplCopyWith<$Res> {
  __$$DeleteProductLoadingImplCopyWithImpl(_$DeleteProductLoadingImpl _value,
      $Res Function(_$DeleteProductLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteFromWishlistState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteProductLoadingImpl implements DeleteProductLoading {
  const _$DeleteProductLoadingImpl();

  @override
  String toString() {
    return 'DeleteFromWishlistState.deleteProductLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteProductLoading,
    required TResult Function() deleteProductSuccess,
    required TResult Function(String error) deleteProductError,
  }) {
    return deleteProductLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteProductLoading,
    TResult? Function()? deleteProductSuccess,
    TResult? Function(String error)? deleteProductError,
  }) {
    return deleteProductLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteProductLoading,
    TResult Function()? deleteProductSuccess,
    TResult Function(String error)? deleteProductError,
    required TResult orElse(),
  }) {
    if (deleteProductLoading != null) {
      return deleteProductLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeleteProductLoading value) deleteProductLoading,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductError value) deleteProductError,
  }) {
    return deleteProductLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteProductLoading value)? deleteProductLoading,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductError value)? deleteProductError,
  }) {
    return deleteProductLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteProductLoading value)? deleteProductLoading,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductError value)? deleteProductError,
    required TResult orElse(),
  }) {
    if (deleteProductLoading != null) {
      return deleteProductLoading(this);
    }
    return orElse();
  }
}

abstract class DeleteProductLoading implements DeleteFromWishlistState {
  const factory DeleteProductLoading() = _$DeleteProductLoadingImpl;
}

/// @nodoc
abstract class _$$DeleteProductSuccessImplCopyWith<$Res> {
  factory _$$DeleteProductSuccessImplCopyWith(_$DeleteProductSuccessImpl value,
          $Res Function(_$DeleteProductSuccessImpl) then) =
      __$$DeleteProductSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteProductSuccessImplCopyWithImpl<$Res>
    extends _$DeleteFromWishlistStateCopyWithImpl<$Res,
        _$DeleteProductSuccessImpl>
    implements _$$DeleteProductSuccessImplCopyWith<$Res> {
  __$$DeleteProductSuccessImplCopyWithImpl(_$DeleteProductSuccessImpl _value,
      $Res Function(_$DeleteProductSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteFromWishlistState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteProductSuccessImpl implements DeleteProductSuccess {
  const _$DeleteProductSuccessImpl();

  @override
  String toString() {
    return 'DeleteFromWishlistState.deleteProductSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteProductLoading,
    required TResult Function() deleteProductSuccess,
    required TResult Function(String error) deleteProductError,
  }) {
    return deleteProductSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteProductLoading,
    TResult? Function()? deleteProductSuccess,
    TResult? Function(String error)? deleteProductError,
  }) {
    return deleteProductSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteProductLoading,
    TResult Function()? deleteProductSuccess,
    TResult Function(String error)? deleteProductError,
    required TResult orElse(),
  }) {
    if (deleteProductSuccess != null) {
      return deleteProductSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeleteProductLoading value) deleteProductLoading,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductError value) deleteProductError,
  }) {
    return deleteProductSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteProductLoading value)? deleteProductLoading,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductError value)? deleteProductError,
  }) {
    return deleteProductSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteProductLoading value)? deleteProductLoading,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductError value)? deleteProductError,
    required TResult orElse(),
  }) {
    if (deleteProductSuccess != null) {
      return deleteProductSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteProductSuccess implements DeleteFromWishlistState {
  const factory DeleteProductSuccess() = _$DeleteProductSuccessImpl;
}

/// @nodoc
abstract class _$$DeleteProductErrorImplCopyWith<$Res> {
  factory _$$DeleteProductErrorImplCopyWith(_$DeleteProductErrorImpl value,
          $Res Function(_$DeleteProductErrorImpl) then) =
      __$$DeleteProductErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DeleteProductErrorImplCopyWithImpl<$Res>
    extends _$DeleteFromWishlistStateCopyWithImpl<$Res,
        _$DeleteProductErrorImpl>
    implements _$$DeleteProductErrorImplCopyWith<$Res> {
  __$$DeleteProductErrorImplCopyWithImpl(_$DeleteProductErrorImpl _value,
      $Res Function(_$DeleteProductErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteFromWishlistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DeleteProductErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteProductErrorImpl implements DeleteProductError {
  const _$DeleteProductErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'DeleteFromWishlistState.deleteProductError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of DeleteFromWishlistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductErrorImplCopyWith<_$DeleteProductErrorImpl> get copyWith =>
      __$$DeleteProductErrorImplCopyWithImpl<_$DeleteProductErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteProductLoading,
    required TResult Function() deleteProductSuccess,
    required TResult Function(String error) deleteProductError,
  }) {
    return deleteProductError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteProductLoading,
    TResult? Function()? deleteProductSuccess,
    TResult? Function(String error)? deleteProductError,
  }) {
    return deleteProductError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteProductLoading,
    TResult Function()? deleteProductSuccess,
    TResult Function(String error)? deleteProductError,
    required TResult orElse(),
  }) {
    if (deleteProductError != null) {
      return deleteProductError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeleteProductLoading value) deleteProductLoading,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductError value) deleteProductError,
  }) {
    return deleteProductError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteProductLoading value)? deleteProductLoading,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductError value)? deleteProductError,
  }) {
    return deleteProductError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteProductLoading value)? deleteProductLoading,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductError value)? deleteProductError,
    required TResult orElse(),
  }) {
    if (deleteProductError != null) {
      return deleteProductError(this);
    }
    return orElse();
  }
}

abstract class DeleteProductError implements DeleteFromWishlistState {
  const factory DeleteProductError({required final String error}) =
      _$DeleteProductErrorImpl;

  String get error;

  /// Create a copy of DeleteFromWishlistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteProductErrorImplCopyWith<_$DeleteProductErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderLoading,
    required TResult Function() orderSuccess,
    required TResult Function(String error) orderError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderLoading,
    TResult? Function()? orderSuccess,
    TResult? Function(String error)? orderError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderLoading,
    TResult Function()? orderSuccess,
    TResult Function(String error)? orderError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OrderLoading value) orderLoading,
    required TResult Function(OrderSuccess value) orderSuccess,
    required TResult Function(OrderError value) orderError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OrderLoading value)? orderLoading,
    TResult? Function(OrderSuccess value)? orderSuccess,
    TResult? Function(OrderError value)? orderError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OrderLoading value)? orderLoading,
    TResult Function(OrderSuccess value)? orderSuccess,
    TResult Function(OrderError value)? orderError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderStateCopyWith<$Res> {
  factory $CreateOrderStateCopyWith(
          CreateOrderState value, $Res Function(CreateOrderState) then) =
      _$CreateOrderStateCopyWithImpl<$Res, CreateOrderState>;
}

/// @nodoc
class _$CreateOrderStateCopyWithImpl<$Res, $Val extends CreateOrderState>
    implements $CreateOrderStateCopyWith<$Res> {
  _$CreateOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateOrderState
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
    extends _$CreateOrderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CreateOrderState.initial()';
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
    required TResult Function() orderLoading,
    required TResult Function() orderSuccess,
    required TResult Function(String error) orderError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderLoading,
    TResult? Function()? orderSuccess,
    TResult? Function(String error)? orderError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderLoading,
    TResult Function()? orderSuccess,
    TResult Function(String error)? orderError,
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
    required TResult Function(OrderLoading value) orderLoading,
    required TResult Function(OrderSuccess value) orderSuccess,
    required TResult Function(OrderError value) orderError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OrderLoading value)? orderLoading,
    TResult? Function(OrderSuccess value)? orderSuccess,
    TResult? Function(OrderError value)? orderError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OrderLoading value)? orderLoading,
    TResult Function(OrderSuccess value)? orderSuccess,
    TResult Function(OrderError value)? orderError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateOrderState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$OrderLoadingImplCopyWith<$Res> {
  factory _$$OrderLoadingImplCopyWith(
          _$OrderLoadingImpl value, $Res Function(_$OrderLoadingImpl) then) =
      __$$OrderLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderLoadingImplCopyWithImpl<$Res>
    extends _$CreateOrderStateCopyWithImpl<$Res, _$OrderLoadingImpl>
    implements _$$OrderLoadingImplCopyWith<$Res> {
  __$$OrderLoadingImplCopyWithImpl(
      _$OrderLoadingImpl _value, $Res Function(_$OrderLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OrderLoadingImpl implements OrderLoading {
  const _$OrderLoadingImpl();

  @override
  String toString() {
    return 'CreateOrderState.orderLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderLoading,
    required TResult Function() orderSuccess,
    required TResult Function(String error) orderError,
  }) {
    return orderLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderLoading,
    TResult? Function()? orderSuccess,
    TResult? Function(String error)? orderError,
  }) {
    return orderLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderLoading,
    TResult Function()? orderSuccess,
    TResult Function(String error)? orderError,
    required TResult orElse(),
  }) {
    if (orderLoading != null) {
      return orderLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OrderLoading value) orderLoading,
    required TResult Function(OrderSuccess value) orderSuccess,
    required TResult Function(OrderError value) orderError,
  }) {
    return orderLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OrderLoading value)? orderLoading,
    TResult? Function(OrderSuccess value)? orderSuccess,
    TResult? Function(OrderError value)? orderError,
  }) {
    return orderLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OrderLoading value)? orderLoading,
    TResult Function(OrderSuccess value)? orderSuccess,
    TResult Function(OrderError value)? orderError,
    required TResult orElse(),
  }) {
    if (orderLoading != null) {
      return orderLoading(this);
    }
    return orElse();
  }
}

abstract class OrderLoading implements CreateOrderState {
  const factory OrderLoading() = _$OrderLoadingImpl;
}

/// @nodoc
abstract class _$$OrderSuccessImplCopyWith<$Res> {
  factory _$$OrderSuccessImplCopyWith(
          _$OrderSuccessImpl value, $Res Function(_$OrderSuccessImpl) then) =
      __$$OrderSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderSuccessImplCopyWithImpl<$Res>
    extends _$CreateOrderStateCopyWithImpl<$Res, _$OrderSuccessImpl>
    implements _$$OrderSuccessImplCopyWith<$Res> {
  __$$OrderSuccessImplCopyWithImpl(
      _$OrderSuccessImpl _value, $Res Function(_$OrderSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OrderSuccessImpl implements OrderSuccess {
  const _$OrderSuccessImpl();

  @override
  String toString() {
    return 'CreateOrderState.orderSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderLoading,
    required TResult Function() orderSuccess,
    required TResult Function(String error) orderError,
  }) {
    return orderSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderLoading,
    TResult? Function()? orderSuccess,
    TResult? Function(String error)? orderError,
  }) {
    return orderSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderLoading,
    TResult Function()? orderSuccess,
    TResult Function(String error)? orderError,
    required TResult orElse(),
  }) {
    if (orderSuccess != null) {
      return orderSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OrderLoading value) orderLoading,
    required TResult Function(OrderSuccess value) orderSuccess,
    required TResult Function(OrderError value) orderError,
  }) {
    return orderSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OrderLoading value)? orderLoading,
    TResult? Function(OrderSuccess value)? orderSuccess,
    TResult? Function(OrderError value)? orderError,
  }) {
    return orderSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OrderLoading value)? orderLoading,
    TResult Function(OrderSuccess value)? orderSuccess,
    TResult Function(OrderError value)? orderError,
    required TResult orElse(),
  }) {
    if (orderSuccess != null) {
      return orderSuccess(this);
    }
    return orElse();
  }
}

abstract class OrderSuccess implements CreateOrderState {
  const factory OrderSuccess() = _$OrderSuccessImpl;
}

/// @nodoc
abstract class _$$OrderErrorImplCopyWith<$Res> {
  factory _$$OrderErrorImplCopyWith(
          _$OrderErrorImpl value, $Res Function(_$OrderErrorImpl) then) =
      __$$OrderErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$OrderErrorImplCopyWithImpl<$Res>
    extends _$CreateOrderStateCopyWithImpl<$Res, _$OrderErrorImpl>
    implements _$$OrderErrorImplCopyWith<$Res> {
  __$$OrderErrorImplCopyWithImpl(
      _$OrderErrorImpl _value, $Res Function(_$OrderErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$OrderErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderErrorImpl implements OrderError {
  const _$OrderErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CreateOrderState.orderError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderErrorImplCopyWith<_$OrderErrorImpl> get copyWith =>
      __$$OrderErrorImplCopyWithImpl<_$OrderErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderLoading,
    required TResult Function() orderSuccess,
    required TResult Function(String error) orderError,
  }) {
    return orderError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderLoading,
    TResult? Function()? orderSuccess,
    TResult? Function(String error)? orderError,
  }) {
    return orderError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderLoading,
    TResult Function()? orderSuccess,
    TResult Function(String error)? orderError,
    required TResult orElse(),
  }) {
    if (orderError != null) {
      return orderError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OrderLoading value) orderLoading,
    required TResult Function(OrderSuccess value) orderSuccess,
    required TResult Function(OrderError value) orderError,
  }) {
    return orderError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OrderLoading value)? orderLoading,
    TResult? Function(OrderSuccess value)? orderSuccess,
    TResult? Function(OrderError value)? orderError,
  }) {
    return orderError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OrderLoading value)? orderLoading,
    TResult Function(OrderSuccess value)? orderSuccess,
    TResult Function(OrderError value)? orderError,
    required TResult orElse(),
  }) {
    if (orderError != null) {
      return orderError(this);
    }
    return orElse();
  }
}

abstract class OrderError implements CreateOrderState {
  const factory OrderError(final String error) = _$OrderErrorImpl;

  String get error;

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderErrorImplCopyWith<_$OrderErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

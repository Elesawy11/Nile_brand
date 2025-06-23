// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_pass_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResetPassState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() resetLoading,
    required TResult Function(ForgotPassResponse data) resetSuccess,
    required TResult Function(String error) resetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? resetLoading,
    TResult? Function(ForgotPassResponse data)? resetSuccess,
    TResult? Function(String error)? resetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? resetLoading,
    TResult Function(ForgotPassResponse data)? resetSuccess,
    TResult Function(String error)? resetError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ResetLoading value) resetLoading,
    required TResult Function(ResetSuccess value) resetSuccess,
    required TResult Function(ResetError value) resetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ResetLoading value)? resetLoading,
    TResult? Function(ResetSuccess value)? resetSuccess,
    TResult? Function(ResetError value)? resetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ResetLoading value)? resetLoading,
    TResult Function(ResetSuccess value)? resetSuccess,
    TResult Function(ResetError value)? resetError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPassStateCopyWith<$Res> {
  factory $ResetPassStateCopyWith(
          ResetPassState value, $Res Function(ResetPassState) then) =
      _$ResetPassStateCopyWithImpl<$Res, ResetPassState>;
}

/// @nodoc
class _$ResetPassStateCopyWithImpl<$Res, $Val extends ResetPassState>
    implements $ResetPassStateCopyWith<$Res> {
  _$ResetPassStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetPassState
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
    extends _$ResetPassStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPassState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ResetPassState.initial()';
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
    required TResult Function() resetLoading,
    required TResult Function(ForgotPassResponse data) resetSuccess,
    required TResult Function(String error) resetError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? resetLoading,
    TResult? Function(ForgotPassResponse data)? resetSuccess,
    TResult? Function(String error)? resetError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? resetLoading,
    TResult Function(ForgotPassResponse data)? resetSuccess,
    TResult Function(String error)? resetError,
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
    required TResult Function(ResetLoading value) resetLoading,
    required TResult Function(ResetSuccess value) resetSuccess,
    required TResult Function(ResetError value) resetError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ResetLoading value)? resetLoading,
    TResult? Function(ResetSuccess value)? resetSuccess,
    TResult? Function(ResetError value)? resetError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ResetLoading value)? resetLoading,
    TResult Function(ResetSuccess value)? resetSuccess,
    TResult Function(ResetError value)? resetError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ResetPassState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ResetLoadingImplCopyWith<$Res> {
  factory _$$ResetLoadingImplCopyWith(
          _$ResetLoadingImpl value, $Res Function(_$ResetLoadingImpl) then) =
      __$$ResetLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetLoadingImplCopyWithImpl<$Res>
    extends _$ResetPassStateCopyWithImpl<$Res, _$ResetLoadingImpl>
    implements _$$ResetLoadingImplCopyWith<$Res> {
  __$$ResetLoadingImplCopyWithImpl(
      _$ResetLoadingImpl _value, $Res Function(_$ResetLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPassState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetLoadingImpl implements ResetLoading {
  const _$ResetLoadingImpl();

  @override
  String toString() {
    return 'ResetPassState.resetLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() resetLoading,
    required TResult Function(ForgotPassResponse data) resetSuccess,
    required TResult Function(String error) resetError,
  }) {
    return resetLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? resetLoading,
    TResult? Function(ForgotPassResponse data)? resetSuccess,
    TResult? Function(String error)? resetError,
  }) {
    return resetLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? resetLoading,
    TResult Function(ForgotPassResponse data)? resetSuccess,
    TResult Function(String error)? resetError,
    required TResult orElse(),
  }) {
    if (resetLoading != null) {
      return resetLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ResetLoading value) resetLoading,
    required TResult Function(ResetSuccess value) resetSuccess,
    required TResult Function(ResetError value) resetError,
  }) {
    return resetLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ResetLoading value)? resetLoading,
    TResult? Function(ResetSuccess value)? resetSuccess,
    TResult? Function(ResetError value)? resetError,
  }) {
    return resetLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ResetLoading value)? resetLoading,
    TResult Function(ResetSuccess value)? resetSuccess,
    TResult Function(ResetError value)? resetError,
    required TResult orElse(),
  }) {
    if (resetLoading != null) {
      return resetLoading(this);
    }
    return orElse();
  }
}

abstract class ResetLoading implements ResetPassState {
  const factory ResetLoading() = _$ResetLoadingImpl;
}

/// @nodoc
abstract class _$$ResetSuccessImplCopyWith<$Res> {
  factory _$$ResetSuccessImplCopyWith(
          _$ResetSuccessImpl value, $Res Function(_$ResetSuccessImpl) then) =
      __$$ResetSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ForgotPassResponse data});
}

/// @nodoc
class __$$ResetSuccessImplCopyWithImpl<$Res>
    extends _$ResetPassStateCopyWithImpl<$Res, _$ResetSuccessImpl>
    implements _$$ResetSuccessImplCopyWith<$Res> {
  __$$ResetSuccessImplCopyWithImpl(
      _$ResetSuccessImpl _value, $Res Function(_$ResetSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPassState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ResetSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ForgotPassResponse,
    ));
  }
}

/// @nodoc

class _$ResetSuccessImpl implements ResetSuccess {
  const _$ResetSuccessImpl(this.data);

  @override
  final ForgotPassResponse data;

  @override
  String toString() {
    return 'ResetPassState.resetSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of ResetPassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetSuccessImplCopyWith<_$ResetSuccessImpl> get copyWith =>
      __$$ResetSuccessImplCopyWithImpl<_$ResetSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() resetLoading,
    required TResult Function(ForgotPassResponse data) resetSuccess,
    required TResult Function(String error) resetError,
  }) {
    return resetSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? resetLoading,
    TResult? Function(ForgotPassResponse data)? resetSuccess,
    TResult? Function(String error)? resetError,
  }) {
    return resetSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? resetLoading,
    TResult Function(ForgotPassResponse data)? resetSuccess,
    TResult Function(String error)? resetError,
    required TResult orElse(),
  }) {
    if (resetSuccess != null) {
      return resetSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ResetLoading value) resetLoading,
    required TResult Function(ResetSuccess value) resetSuccess,
    required TResult Function(ResetError value) resetError,
  }) {
    return resetSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ResetLoading value)? resetLoading,
    TResult? Function(ResetSuccess value)? resetSuccess,
    TResult? Function(ResetError value)? resetError,
  }) {
    return resetSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ResetLoading value)? resetLoading,
    TResult Function(ResetSuccess value)? resetSuccess,
    TResult Function(ResetError value)? resetError,
    required TResult orElse(),
  }) {
    if (resetSuccess != null) {
      return resetSuccess(this);
    }
    return orElse();
  }
}

abstract class ResetSuccess implements ResetPassState {
  const factory ResetSuccess(final ForgotPassResponse data) =
      _$ResetSuccessImpl;

  ForgotPassResponse get data;

  /// Create a copy of ResetPassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetSuccessImplCopyWith<_$ResetSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetErrorImplCopyWith<$Res> {
  factory _$$ResetErrorImplCopyWith(
          _$ResetErrorImpl value, $Res Function(_$ResetErrorImpl) then) =
      __$$ResetErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ResetErrorImplCopyWithImpl<$Res>
    extends _$ResetPassStateCopyWithImpl<$Res, _$ResetErrorImpl>
    implements _$$ResetErrorImplCopyWith<$Res> {
  __$$ResetErrorImplCopyWithImpl(
      _$ResetErrorImpl _value, $Res Function(_$ResetErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPassState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ResetErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetErrorImpl implements ResetError {
  const _$ResetErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ResetPassState.resetError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ResetPassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetErrorImplCopyWith<_$ResetErrorImpl> get copyWith =>
      __$$ResetErrorImplCopyWithImpl<_$ResetErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() resetLoading,
    required TResult Function(ForgotPassResponse data) resetSuccess,
    required TResult Function(String error) resetError,
  }) {
    return resetError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? resetLoading,
    TResult? Function(ForgotPassResponse data)? resetSuccess,
    TResult? Function(String error)? resetError,
  }) {
    return resetError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? resetLoading,
    TResult Function(ForgotPassResponse data)? resetSuccess,
    TResult Function(String error)? resetError,
    required TResult orElse(),
  }) {
    if (resetError != null) {
      return resetError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ResetLoading value) resetLoading,
    required TResult Function(ResetSuccess value) resetSuccess,
    required TResult Function(ResetError value) resetError,
  }) {
    return resetError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ResetLoading value)? resetLoading,
    TResult? Function(ResetSuccess value)? resetSuccess,
    TResult? Function(ResetError value)? resetError,
  }) {
    return resetError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ResetLoading value)? resetLoading,
    TResult Function(ResetSuccess value)? resetSuccess,
    TResult Function(ResetError value)? resetError,
    required TResult orElse(),
  }) {
    if (resetError != null) {
      return resetError(this);
    }
    return orElse();
  }
}

abstract class ResetError implements ResetPassState {
  const factory ResetError({required final String error}) = _$ResetErrorImpl;

  String get error;

  /// Create a copy of ResetPassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetErrorImplCopyWith<_$ResetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

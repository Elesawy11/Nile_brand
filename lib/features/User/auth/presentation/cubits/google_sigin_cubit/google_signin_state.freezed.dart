// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_signin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoogleSigninState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() googleLoading,
    required TResult Function(User user) googleSuccess,
    required TResult Function(String error) googleError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? googleLoading,
    TResult? Function(User user)? googleSuccess,
    TResult? Function(String error)? googleError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? googleLoading,
    TResult Function(User user)? googleSuccess,
    TResult Function(String error)? googleError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GoogleLoading value) googleLoading,
    required TResult Function(GoogleSuccess value) googleSuccess,
    required TResult Function(GoogleError value) googleError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GoogleLoading value)? googleLoading,
    TResult? Function(GoogleSuccess value)? googleSuccess,
    TResult? Function(GoogleError value)? googleError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GoogleLoading value)? googleLoading,
    TResult Function(GoogleSuccess value)? googleSuccess,
    TResult Function(GoogleError value)? googleError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleSigninStateCopyWith<$Res> {
  factory $GoogleSigninStateCopyWith(
          GoogleSigninState value, $Res Function(GoogleSigninState) then) =
      _$GoogleSigninStateCopyWithImpl<$Res, GoogleSigninState>;
}

/// @nodoc
class _$GoogleSigninStateCopyWithImpl<$Res, $Val extends GoogleSigninState>
    implements $GoogleSigninStateCopyWith<$Res> {
  _$GoogleSigninStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoogleSigninState
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
    extends _$GoogleSigninStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoogleSigninState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GoogleSigninState.initial()';
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
    required TResult Function() googleLoading,
    required TResult Function(User user) googleSuccess,
    required TResult Function(String error) googleError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? googleLoading,
    TResult? Function(User user)? googleSuccess,
    TResult? Function(String error)? googleError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? googleLoading,
    TResult Function(User user)? googleSuccess,
    TResult Function(String error)? googleError,
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
    required TResult Function(GoogleLoading value) googleLoading,
    required TResult Function(GoogleSuccess value) googleSuccess,
    required TResult Function(GoogleError value) googleError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GoogleLoading value)? googleLoading,
    TResult? Function(GoogleSuccess value)? googleSuccess,
    TResult? Function(GoogleError value)? googleError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GoogleLoading value)? googleLoading,
    TResult Function(GoogleSuccess value)? googleSuccess,
    TResult Function(GoogleError value)? googleError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GoogleSigninState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GoogleLoadingImplCopyWith<$Res> {
  factory _$$GoogleLoadingImplCopyWith(
          _$GoogleLoadingImpl value, $Res Function(_$GoogleLoadingImpl) then) =
      __$$GoogleLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleLoadingImplCopyWithImpl<$Res>
    extends _$GoogleSigninStateCopyWithImpl<$Res, _$GoogleLoadingImpl>
    implements _$$GoogleLoadingImplCopyWith<$Res> {
  __$$GoogleLoadingImplCopyWithImpl(
      _$GoogleLoadingImpl _value, $Res Function(_$GoogleLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoogleSigninState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GoogleLoadingImpl implements GoogleLoading {
  const _$GoogleLoadingImpl();

  @override
  String toString() {
    return 'GoogleSigninState.googleLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoogleLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() googleLoading,
    required TResult Function(User user) googleSuccess,
    required TResult Function(String error) googleError,
  }) {
    return googleLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? googleLoading,
    TResult? Function(User user)? googleSuccess,
    TResult? Function(String error)? googleError,
  }) {
    return googleLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? googleLoading,
    TResult Function(User user)? googleSuccess,
    TResult Function(String error)? googleError,
    required TResult orElse(),
  }) {
    if (googleLoading != null) {
      return googleLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GoogleLoading value) googleLoading,
    required TResult Function(GoogleSuccess value) googleSuccess,
    required TResult Function(GoogleError value) googleError,
  }) {
    return googleLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GoogleLoading value)? googleLoading,
    TResult? Function(GoogleSuccess value)? googleSuccess,
    TResult? Function(GoogleError value)? googleError,
  }) {
    return googleLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GoogleLoading value)? googleLoading,
    TResult Function(GoogleSuccess value)? googleSuccess,
    TResult Function(GoogleError value)? googleError,
    required TResult orElse(),
  }) {
    if (googleLoading != null) {
      return googleLoading(this);
    }
    return orElse();
  }
}

abstract class GoogleLoading implements GoogleSigninState {
  const factory GoogleLoading() = _$GoogleLoadingImpl;
}

/// @nodoc
abstract class _$$GoogleSuccessImplCopyWith<$Res> {
  factory _$$GoogleSuccessImplCopyWith(
          _$GoogleSuccessImpl value, $Res Function(_$GoogleSuccessImpl) then) =
      __$$GoogleSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$GoogleSuccessImplCopyWithImpl<$Res>
    extends _$GoogleSigninStateCopyWithImpl<$Res, _$GoogleSuccessImpl>
    implements _$$GoogleSuccessImplCopyWith<$Res> {
  __$$GoogleSuccessImplCopyWithImpl(
      _$GoogleSuccessImpl _value, $Res Function(_$GoogleSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoogleSigninState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$GoogleSuccessImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$GoogleSuccessImpl implements GoogleSuccess {
  const _$GoogleSuccessImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'GoogleSigninState.googleSuccess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of GoogleSigninState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleSuccessImplCopyWith<_$GoogleSuccessImpl> get copyWith =>
      __$$GoogleSuccessImplCopyWithImpl<_$GoogleSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() googleLoading,
    required TResult Function(User user) googleSuccess,
    required TResult Function(String error) googleError,
  }) {
    return googleSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? googleLoading,
    TResult? Function(User user)? googleSuccess,
    TResult? Function(String error)? googleError,
  }) {
    return googleSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? googleLoading,
    TResult Function(User user)? googleSuccess,
    TResult Function(String error)? googleError,
    required TResult orElse(),
  }) {
    if (googleSuccess != null) {
      return googleSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GoogleLoading value) googleLoading,
    required TResult Function(GoogleSuccess value) googleSuccess,
    required TResult Function(GoogleError value) googleError,
  }) {
    return googleSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GoogleLoading value)? googleLoading,
    TResult? Function(GoogleSuccess value)? googleSuccess,
    TResult? Function(GoogleError value)? googleError,
  }) {
    return googleSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GoogleLoading value)? googleLoading,
    TResult Function(GoogleSuccess value)? googleSuccess,
    TResult Function(GoogleError value)? googleError,
    required TResult orElse(),
  }) {
    if (googleSuccess != null) {
      return googleSuccess(this);
    }
    return orElse();
  }
}

abstract class GoogleSuccess implements GoogleSigninState {
  const factory GoogleSuccess({required final User user}) = _$GoogleSuccessImpl;

  User get user;

  /// Create a copy of GoogleSigninState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoogleSuccessImplCopyWith<_$GoogleSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoogleErrorImplCopyWith<$Res> {
  factory _$$GoogleErrorImplCopyWith(
          _$GoogleErrorImpl value, $Res Function(_$GoogleErrorImpl) then) =
      __$$GoogleErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GoogleErrorImplCopyWithImpl<$Res>
    extends _$GoogleSigninStateCopyWithImpl<$Res, _$GoogleErrorImpl>
    implements _$$GoogleErrorImplCopyWith<$Res> {
  __$$GoogleErrorImplCopyWithImpl(
      _$GoogleErrorImpl _value, $Res Function(_$GoogleErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoogleSigninState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GoogleErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GoogleErrorImpl implements GoogleError {
  const _$GoogleErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'GoogleSigninState.googleError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of GoogleSigninState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleErrorImplCopyWith<_$GoogleErrorImpl> get copyWith =>
      __$$GoogleErrorImplCopyWithImpl<_$GoogleErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() googleLoading,
    required TResult Function(User user) googleSuccess,
    required TResult Function(String error) googleError,
  }) {
    return googleError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? googleLoading,
    TResult? Function(User user)? googleSuccess,
    TResult? Function(String error)? googleError,
  }) {
    return googleError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? googleLoading,
    TResult Function(User user)? googleSuccess,
    TResult Function(String error)? googleError,
    required TResult orElse(),
  }) {
    if (googleError != null) {
      return googleError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GoogleLoading value) googleLoading,
    required TResult Function(GoogleSuccess value) googleSuccess,
    required TResult Function(GoogleError value) googleError,
  }) {
    return googleError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GoogleLoading value)? googleLoading,
    TResult? Function(GoogleSuccess value)? googleSuccess,
    TResult? Function(GoogleError value)? googleError,
  }) {
    return googleError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GoogleLoading value)? googleLoading,
    TResult Function(GoogleSuccess value)? googleSuccess,
    TResult Function(GoogleError value)? googleError,
    required TResult orElse(),
  }) {
    if (googleError != null) {
      return googleError(this);
    }
    return orElse();
  }
}

abstract class GoogleError implements GoogleSigninState {
  const factory GoogleError({required final String error}) = _$GoogleErrorImpl;

  String get error;

  /// Create a copy of GoogleSigninState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoogleErrorImplCopyWith<_$GoogleErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

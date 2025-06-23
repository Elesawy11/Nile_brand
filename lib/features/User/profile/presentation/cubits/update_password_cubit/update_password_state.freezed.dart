// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdatePasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updatePasswordLoading,
    required TResult Function(LoginResponse response) updatePasswordSuccess,
    required TResult Function(String error) updatePasswordError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updatePasswordLoading,
    TResult? Function(LoginResponse response)? updatePasswordSuccess,
    TResult? Function(String error)? updatePasswordError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updatePasswordLoading,
    TResult Function(LoginResponse response)? updatePasswordSuccess,
    TResult Function(String error)? updatePasswordError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UpdatePasswordLoading value)
        updatePasswordLoading,
    required TResult Function(UpdatePasswordSuccess value)
        updatePasswordSuccess,
    required TResult Function(UpdatePasswordError value) updatePasswordError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UpdatePasswordLoading value)? updatePasswordLoading,
    TResult? Function(UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(UpdatePasswordError value)? updatePasswordError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UpdatePasswordLoading value)? updatePasswordLoading,
    TResult Function(UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(UpdatePasswordError value)? updatePasswordError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePasswordStateCopyWith<$Res> {
  factory $UpdatePasswordStateCopyWith(
          UpdatePasswordState value, $Res Function(UpdatePasswordState) then) =
      _$UpdatePasswordStateCopyWithImpl<$Res, UpdatePasswordState>;
}

/// @nodoc
class _$UpdatePasswordStateCopyWithImpl<$Res, $Val extends UpdatePasswordState>
    implements $UpdatePasswordStateCopyWith<$Res> {
  _$UpdatePasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdatePasswordState
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
    extends _$UpdatePasswordStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatePasswordState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UpdatePasswordState.initial()';
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
    required TResult Function() updatePasswordLoading,
    required TResult Function(LoginResponse response) updatePasswordSuccess,
    required TResult Function(String error) updatePasswordError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updatePasswordLoading,
    TResult? Function(LoginResponse response)? updatePasswordSuccess,
    TResult? Function(String error)? updatePasswordError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updatePasswordLoading,
    TResult Function(LoginResponse response)? updatePasswordSuccess,
    TResult Function(String error)? updatePasswordError,
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
    required TResult Function(UpdatePasswordLoading value)
        updatePasswordLoading,
    required TResult Function(UpdatePasswordSuccess value)
        updatePasswordSuccess,
    required TResult Function(UpdatePasswordError value) updatePasswordError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UpdatePasswordLoading value)? updatePasswordLoading,
    TResult? Function(UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(UpdatePasswordError value)? updatePasswordError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UpdatePasswordLoading value)? updatePasswordLoading,
    TResult Function(UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(UpdatePasswordError value)? updatePasswordError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UpdatePasswordState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UpdatePasswordLoadingImplCopyWith<$Res> {
  factory _$$UpdatePasswordLoadingImplCopyWith(
          _$UpdatePasswordLoadingImpl value,
          $Res Function(_$UpdatePasswordLoadingImpl) then) =
      __$$UpdatePasswordLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatePasswordLoadingImplCopyWithImpl<$Res>
    extends _$UpdatePasswordStateCopyWithImpl<$Res, _$UpdatePasswordLoadingImpl>
    implements _$$UpdatePasswordLoadingImplCopyWith<$Res> {
  __$$UpdatePasswordLoadingImplCopyWithImpl(_$UpdatePasswordLoadingImpl _value,
      $Res Function(_$UpdatePasswordLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatePasswordState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdatePasswordLoadingImpl implements UpdatePasswordLoading {
  const _$UpdatePasswordLoadingImpl();

  @override
  String toString() {
    return 'UpdatePasswordState.updatePasswordLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updatePasswordLoading,
    required TResult Function(LoginResponse response) updatePasswordSuccess,
    required TResult Function(String error) updatePasswordError,
  }) {
    return updatePasswordLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updatePasswordLoading,
    TResult? Function(LoginResponse response)? updatePasswordSuccess,
    TResult? Function(String error)? updatePasswordError,
  }) {
    return updatePasswordLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updatePasswordLoading,
    TResult Function(LoginResponse response)? updatePasswordSuccess,
    TResult Function(String error)? updatePasswordError,
    required TResult orElse(),
  }) {
    if (updatePasswordLoading != null) {
      return updatePasswordLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UpdatePasswordLoading value)
        updatePasswordLoading,
    required TResult Function(UpdatePasswordSuccess value)
        updatePasswordSuccess,
    required TResult Function(UpdatePasswordError value) updatePasswordError,
  }) {
    return updatePasswordLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UpdatePasswordLoading value)? updatePasswordLoading,
    TResult? Function(UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(UpdatePasswordError value)? updatePasswordError,
  }) {
    return updatePasswordLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UpdatePasswordLoading value)? updatePasswordLoading,
    TResult Function(UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(UpdatePasswordError value)? updatePasswordError,
    required TResult orElse(),
  }) {
    if (updatePasswordLoading != null) {
      return updatePasswordLoading(this);
    }
    return orElse();
  }
}

abstract class UpdatePasswordLoading implements UpdatePasswordState {
  const factory UpdatePasswordLoading() = _$UpdatePasswordLoadingImpl;
}

/// @nodoc
abstract class _$$UpdatePasswordSuccessImplCopyWith<$Res> {
  factory _$$UpdatePasswordSuccessImplCopyWith(
          _$UpdatePasswordSuccessImpl value,
          $Res Function(_$UpdatePasswordSuccessImpl) then) =
      __$$UpdatePasswordSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginResponse response});
}

/// @nodoc
class __$$UpdatePasswordSuccessImplCopyWithImpl<$Res>
    extends _$UpdatePasswordStateCopyWithImpl<$Res, _$UpdatePasswordSuccessImpl>
    implements _$$UpdatePasswordSuccessImplCopyWith<$Res> {
  __$$UpdatePasswordSuccessImplCopyWithImpl(_$UpdatePasswordSuccessImpl _value,
      $Res Function(_$UpdatePasswordSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$UpdatePasswordSuccessImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
    ));
  }
}

/// @nodoc

class _$UpdatePasswordSuccessImpl implements UpdatePasswordSuccess {
  const _$UpdatePasswordSuccessImpl({required this.response});

  @override
  final LoginResponse response;

  @override
  String toString() {
    return 'UpdatePasswordState.updatePasswordSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of UpdatePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePasswordSuccessImplCopyWith<_$UpdatePasswordSuccessImpl>
      get copyWith => __$$UpdatePasswordSuccessImplCopyWithImpl<
          _$UpdatePasswordSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updatePasswordLoading,
    required TResult Function(LoginResponse response) updatePasswordSuccess,
    required TResult Function(String error) updatePasswordError,
  }) {
    return updatePasswordSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updatePasswordLoading,
    TResult? Function(LoginResponse response)? updatePasswordSuccess,
    TResult? Function(String error)? updatePasswordError,
  }) {
    return updatePasswordSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updatePasswordLoading,
    TResult Function(LoginResponse response)? updatePasswordSuccess,
    TResult Function(String error)? updatePasswordError,
    required TResult orElse(),
  }) {
    if (updatePasswordSuccess != null) {
      return updatePasswordSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UpdatePasswordLoading value)
        updatePasswordLoading,
    required TResult Function(UpdatePasswordSuccess value)
        updatePasswordSuccess,
    required TResult Function(UpdatePasswordError value) updatePasswordError,
  }) {
    return updatePasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UpdatePasswordLoading value)? updatePasswordLoading,
    TResult? Function(UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(UpdatePasswordError value)? updatePasswordError,
  }) {
    return updatePasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UpdatePasswordLoading value)? updatePasswordLoading,
    TResult Function(UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(UpdatePasswordError value)? updatePasswordError,
    required TResult orElse(),
  }) {
    if (updatePasswordSuccess != null) {
      return updatePasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class UpdatePasswordSuccess implements UpdatePasswordState {
  const factory UpdatePasswordSuccess({required final LoginResponse response}) =
      _$UpdatePasswordSuccessImpl;

  LoginResponse get response;

  /// Create a copy of UpdatePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePasswordSuccessImplCopyWith<_$UpdatePasswordSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePasswordErrorImplCopyWith<$Res> {
  factory _$$UpdatePasswordErrorImplCopyWith(_$UpdatePasswordErrorImpl value,
          $Res Function(_$UpdatePasswordErrorImpl) then) =
      __$$UpdatePasswordErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$UpdatePasswordErrorImplCopyWithImpl<$Res>
    extends _$UpdatePasswordStateCopyWithImpl<$Res, _$UpdatePasswordErrorImpl>
    implements _$$UpdatePasswordErrorImplCopyWith<$Res> {
  __$$UpdatePasswordErrorImplCopyWithImpl(_$UpdatePasswordErrorImpl _value,
      $Res Function(_$UpdatePasswordErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UpdatePasswordErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePasswordErrorImpl implements UpdatePasswordError {
  const _$UpdatePasswordErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UpdatePasswordState.updatePasswordError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of UpdatePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePasswordErrorImplCopyWith<_$UpdatePasswordErrorImpl> get copyWith =>
      __$$UpdatePasswordErrorImplCopyWithImpl<_$UpdatePasswordErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updatePasswordLoading,
    required TResult Function(LoginResponse response) updatePasswordSuccess,
    required TResult Function(String error) updatePasswordError,
  }) {
    return updatePasswordError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updatePasswordLoading,
    TResult? Function(LoginResponse response)? updatePasswordSuccess,
    TResult? Function(String error)? updatePasswordError,
  }) {
    return updatePasswordError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updatePasswordLoading,
    TResult Function(LoginResponse response)? updatePasswordSuccess,
    TResult Function(String error)? updatePasswordError,
    required TResult orElse(),
  }) {
    if (updatePasswordError != null) {
      return updatePasswordError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UpdatePasswordLoading value)
        updatePasswordLoading,
    required TResult Function(UpdatePasswordSuccess value)
        updatePasswordSuccess,
    required TResult Function(UpdatePasswordError value) updatePasswordError,
  }) {
    return updatePasswordError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UpdatePasswordLoading value)? updatePasswordLoading,
    TResult? Function(UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult? Function(UpdatePasswordError value)? updatePasswordError,
  }) {
    return updatePasswordError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UpdatePasswordLoading value)? updatePasswordLoading,
    TResult Function(UpdatePasswordSuccess value)? updatePasswordSuccess,
    TResult Function(UpdatePasswordError value)? updatePasswordError,
    required TResult orElse(),
  }) {
    if (updatePasswordError != null) {
      return updatePasswordError(this);
    }
    return orElse();
  }
}

abstract class UpdatePasswordError implements UpdatePasswordState {
  const factory UpdatePasswordError({required final String error}) =
      _$UpdatePasswordErrorImpl;

  String get error;

  /// Create a copy of UpdatePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePasswordErrorImplCopyWith<_$UpdatePasswordErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

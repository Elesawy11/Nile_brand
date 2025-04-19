// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_signin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoogleSigninState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GoogleSigninState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GoogleSigninState()';
  }
}

/// @nodoc
class $GoogleSigninStateCopyWith<$Res> {
  $GoogleSigninStateCopyWith(
      GoogleSigninState _, $Res Function(GoogleSigninState) __);
}

/// @nodoc

class _Initial implements GoogleSigninState {
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
    return 'GoogleSigninState.initial()';
  }
}

/// @nodoc

class GoogleLoading implements GoogleSigninState {
  const GoogleLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GoogleLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GoogleSigninState.googleLoading()';
  }
}

/// @nodoc

class GoogleSuccess implements GoogleSigninState {
  const GoogleSuccess({required this.user});

  final User user;

  /// Create a copy of GoogleSigninState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GoogleSuccessCopyWith<GoogleSuccess> get copyWith =>
      _$GoogleSuccessCopyWithImpl<GoogleSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GoogleSuccess &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'GoogleSigninState.googleSuccess(user: $user)';
  }
}

/// @nodoc
abstract mixin class $GoogleSuccessCopyWith<$Res>
    implements $GoogleSigninStateCopyWith<$Res> {
  factory $GoogleSuccessCopyWith(
          GoogleSuccess value, $Res Function(GoogleSuccess) _then) =
      _$GoogleSuccessCopyWithImpl;
  @useResult
  $Res call({User user});
}

/// @nodoc
class _$GoogleSuccessCopyWithImpl<$Res>
    implements $GoogleSuccessCopyWith<$Res> {
  _$GoogleSuccessCopyWithImpl(this._self, this._then);

  final GoogleSuccess _self;
  final $Res Function(GoogleSuccess) _then;

  /// Create a copy of GoogleSigninState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(GoogleSuccess(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class GoogleError implements GoogleSigninState {
  const GoogleError({required this.error});

  final String error;

  /// Create a copy of GoogleSigninState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GoogleErrorCopyWith<GoogleError> get copyWith =>
      _$GoogleErrorCopyWithImpl<GoogleError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GoogleError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'GoogleSigninState.googleError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $GoogleErrorCopyWith<$Res>
    implements $GoogleSigninStateCopyWith<$Res> {
  factory $GoogleErrorCopyWith(
          GoogleError value, $Res Function(GoogleError) _then) =
      _$GoogleErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GoogleErrorCopyWithImpl<$Res> implements $GoogleErrorCopyWith<$Res> {
  _$GoogleErrorCopyWithImpl(this._self, this._then);

  final GoogleError _self;
  final $Res Function(GoogleError) _then;

  /// Create a copy of GoogleSigninState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(GoogleError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

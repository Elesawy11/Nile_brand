// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_sign_out_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoogleSignOutState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GoogleSignOutState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GoogleSignOutState()';
  }
}

/// @nodoc
class $GoogleSignOutStateCopyWith<$Res> {
  $GoogleSignOutStateCopyWith(
      GoogleSignOutState _, $Res Function(GoogleSignOutState) __);
}

/// @nodoc

class _Initial implements GoogleSignOutState {
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
    return 'GoogleSignOutState.initial()';
  }
}

/// @nodoc

class SignoutLoading implements GoogleSignOutState {
  const SignoutLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignoutLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GoogleSignOutState.signoutLoading()';
  }
}

/// @nodoc

class SignoutSuccess implements GoogleSignOutState {
  const SignoutSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignoutSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GoogleSignOutState.signoutSuccess()';
  }
}

/// @nodoc

class SignoutError implements GoogleSignOutState {
  const SignoutError({required this.error});

  final String error;

  /// Create a copy of GoogleSignOutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignoutErrorCopyWith<SignoutError> get copyWith =>
      _$SignoutErrorCopyWithImpl<SignoutError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignoutError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'GoogleSignOutState.signoutError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $SignoutErrorCopyWith<$Res>
    implements $GoogleSignOutStateCopyWith<$Res> {
  factory $SignoutErrorCopyWith(
          SignoutError value, $Res Function(SignoutError) _then) =
      _$SignoutErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$SignoutErrorCopyWithImpl<$Res> implements $SignoutErrorCopyWith<$Res> {
  _$SignoutErrorCopyWithImpl(this._self, this._then);

  final SignoutError _self;
  final $Res Function(SignoutError) _then;

  /// Create a copy of GoogleSignOutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(SignoutError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

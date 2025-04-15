// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_pass_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgotPassState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ForgotPassState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForgotPassState()';
  }
}

/// @nodoc
class $ForgotPassStateCopyWith<$Res> {
  $ForgotPassStateCopyWith(
      ForgotPassState _, $Res Function(ForgotPassState) __);
}

/// @nodoc

class _Initial implements ForgotPassState {
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
    return 'ForgotPassState.initial()';
  }
}

/// @nodoc

class ForgotLoading implements ForgotPassState {
  const ForgotLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ForgotLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForgotPassState.forgotLoading()';
  }
}

/// @nodoc

class ForgotSuccess implements ForgotPassState {
  const ForgotSuccess(this.forgotPass, this.email);

  final ForgotPassResponse forgotPass;
  final String email;

  /// Create a copy of ForgotPassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForgotSuccessCopyWith<ForgotSuccess> get copyWith =>
      _$ForgotSuccessCopyWithImpl<ForgotSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgotSuccess &&
            (identical(other.forgotPass, forgotPass) ||
                other.forgotPass == forgotPass) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forgotPass, email);

  @override
  String toString() {
    return 'ForgotPassState.forgotSuccess(forgotPass: $forgotPass, email: $email)';
  }
}

/// @nodoc
abstract mixin class $ForgotSuccessCopyWith<$Res>
    implements $ForgotPassStateCopyWith<$Res> {
  factory $ForgotSuccessCopyWith(
          ForgotSuccess value, $Res Function(ForgotSuccess) _then) =
      _$ForgotSuccessCopyWithImpl;
  @useResult
  $Res call({ForgotPassResponse forgotPass, String email});
}

/// @nodoc
class _$ForgotSuccessCopyWithImpl<$Res>
    implements $ForgotSuccessCopyWith<$Res> {
  _$ForgotSuccessCopyWithImpl(this._self, this._then);

  final ForgotSuccess _self;
  final $Res Function(ForgotSuccess) _then;

  /// Create a copy of ForgotPassState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? forgotPass = null,
    Object? email = null,
  }) {
    return _then(ForgotSuccess(
      null == forgotPass
          ? _self.forgotPass
          : forgotPass // ignore: cast_nullable_to_non_nullable
              as ForgotPassResponse,
      null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ForgotError implements ForgotPassState {
  const ForgotError({required this.error});

  final String error;

  /// Create a copy of ForgotPassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForgotErrorCopyWith<ForgotError> get copyWith =>
      _$ForgotErrorCopyWithImpl<ForgotError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgotError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'ForgotPassState.forgotError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $ForgotErrorCopyWith<$Res>
    implements $ForgotPassStateCopyWith<$Res> {
  factory $ForgotErrorCopyWith(
          ForgotError value, $Res Function(ForgotError) _then) =
      _$ForgotErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ForgotErrorCopyWithImpl<$Res> implements $ForgotErrorCopyWith<$Res> {
  _$ForgotErrorCopyWithImpl(this._self, this._then);

  final ForgotError _self;
  final $Res Function(ForgotError) _then;

  /// Create a copy of ForgotPassState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(ForgotError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

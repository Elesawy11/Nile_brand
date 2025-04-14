// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_code_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyCodeState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is VerifyCodeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'VerifyCodeState()';
  }
}

/// @nodoc
class $VerifyCodeStateCopyWith<$Res> {
  $VerifyCodeStateCopyWith(
      VerifyCodeState _, $Res Function(VerifyCodeState) __);
}

/// @nodoc

class _Initial implements VerifyCodeState {
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
    return 'VerifyCodeState.initial()';
  }
}

/// @nodoc

class VerifyLoading implements VerifyCodeState {
  const VerifyLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is VerifyLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'VerifyCodeState.verifyLoading()';
  }
}

/// @nodoc

class VerifySuccess implements VerifyCodeState {
  const VerifySuccess(this.forgotPass);

  final ForgotPassResponse forgotPass;

  /// Create a copy of VerifyCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifySuccessCopyWith<VerifySuccess> get copyWith =>
      _$VerifySuccessCopyWithImpl<VerifySuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifySuccess &&
            (identical(other.forgotPass, forgotPass) ||
                other.forgotPass == forgotPass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forgotPass);

  @override
  String toString() {
    return 'VerifyCodeState.verifySuccess(forgotPass: $forgotPass)';
  }
}

/// @nodoc
abstract mixin class $VerifySuccessCopyWith<$Res>
    implements $VerifyCodeStateCopyWith<$Res> {
  factory $VerifySuccessCopyWith(
          VerifySuccess value, $Res Function(VerifySuccess) _then) =
      _$VerifySuccessCopyWithImpl;
  @useResult
  $Res call({ForgotPassResponse forgotPass});
}

/// @nodoc
class _$VerifySuccessCopyWithImpl<$Res>
    implements $VerifySuccessCopyWith<$Res> {
  _$VerifySuccessCopyWithImpl(this._self, this._then);

  final VerifySuccess _self;
  final $Res Function(VerifySuccess) _then;

  /// Create a copy of VerifyCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? forgotPass = null,
  }) {
    return _then(VerifySuccess(
      null == forgotPass
          ? _self.forgotPass
          : forgotPass // ignore: cast_nullable_to_non_nullable
              as ForgotPassResponse,
    ));
  }
}

/// @nodoc

class VerifyError implements VerifyCodeState {
  const VerifyError({required this.error});

  final String error;

  /// Create a copy of VerifyCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifyErrorCopyWith<VerifyError> get copyWith =>
      _$VerifyErrorCopyWithImpl<VerifyError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'VerifyCodeState.verifyError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $VerifyErrorCopyWith<$Res>
    implements $VerifyCodeStateCopyWith<$Res> {
  factory $VerifyErrorCopyWith(
          VerifyError value, $Res Function(VerifyError) _then) =
      _$VerifyErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$VerifyErrorCopyWithImpl<$Res> implements $VerifyErrorCopyWith<$Res> {
  _$VerifyErrorCopyWithImpl(this._self, this._then);

  final VerifyError _self;
  final $Res Function(VerifyError) _then;

  /// Create a copy of VerifyCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(VerifyError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

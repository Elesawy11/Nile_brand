// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_pass_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResetPassState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResetPassState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ResetPassState()';
  }
}

/// @nodoc
class $ResetPassStateCopyWith<$Res> {
  $ResetPassStateCopyWith(ResetPassState _, $Res Function(ResetPassState) __);
}

/// @nodoc

class _Initial implements ResetPassState {
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
    return 'ResetPassState.initial()';
  }
}

/// @nodoc

class ResetLoading implements ResetPassState {
  const ResetLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResetLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ResetPassState.resetLoading()';
  }
}

/// @nodoc

class ResetSuccess implements ResetPassState {
  const ResetSuccess(this.data);

  final ForgotPassResponse data;

  /// Create a copy of ResetPassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResetSuccessCopyWith<ResetSuccess> get copyWith =>
      _$ResetSuccessCopyWithImpl<ResetSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'ResetPassState.resetSuccess(data: $data)';
  }
}

/// @nodoc
abstract mixin class $ResetSuccessCopyWith<$Res>
    implements $ResetPassStateCopyWith<$Res> {
  factory $ResetSuccessCopyWith(
          ResetSuccess value, $Res Function(ResetSuccess) _then) =
      _$ResetSuccessCopyWithImpl;
  @useResult
  $Res call({ForgotPassResponse data});
}

/// @nodoc
class _$ResetSuccessCopyWithImpl<$Res> implements $ResetSuccessCopyWith<$Res> {
  _$ResetSuccessCopyWithImpl(this._self, this._then);

  final ResetSuccess _self;
  final $Res Function(ResetSuccess) _then;

  /// Create a copy of ResetPassState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(ResetSuccess(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as ForgotPassResponse,
    ));
  }
}

/// @nodoc

class ResetError implements ResetPassState {
  const ResetError({required this.error});

  final String error;

  /// Create a copy of ResetPassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResetErrorCopyWith<ResetError> get copyWith =>
      _$ResetErrorCopyWithImpl<ResetError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'ResetPassState.resetError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $ResetErrorCopyWith<$Res>
    implements $ResetPassStateCopyWith<$Res> {
  factory $ResetErrorCopyWith(
          ResetError value, $Res Function(ResetError) _then) =
      _$ResetErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ResetErrorCopyWithImpl<$Res> implements $ResetErrorCopyWith<$Res> {
  _$ResetErrorCopyWithImpl(this._self, this._then);

  final ResetError _self;
  final $Res Function(ResetError) _then;

  /// Create a copy of ResetPassState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(ResetError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

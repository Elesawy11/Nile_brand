// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdatePasswordState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdatePasswordState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdatePasswordState()';
  }
}

/// @nodoc
class $UpdatePasswordStateCopyWith<$Res> {
  $UpdatePasswordStateCopyWith(
      UpdatePasswordState _, $Res Function(UpdatePasswordState) __);
}

/// @nodoc

class _Initial implements UpdatePasswordState {
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
    return 'UpdatePasswordState.initial()';
  }
}

/// @nodoc

class UpdatePasswordLoading implements UpdatePasswordState {
  const UpdatePasswordLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdatePasswordLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdatePasswordState.updatePasswordLoading()';
  }
}

/// @nodoc

class UpdatePasswordSuccess implements UpdatePasswordState {
  const UpdatePasswordSuccess({required this.response});

  final LoginResponse response;

  /// Create a copy of UpdatePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdatePasswordSuccessCopyWith<UpdatePasswordSuccess> get copyWith =>
      _$UpdatePasswordSuccessCopyWithImpl<UpdatePasswordSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatePasswordSuccess &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @override
  String toString() {
    return 'UpdatePasswordState.updatePasswordSuccess(response: $response)';
  }
}

/// @nodoc
abstract mixin class $UpdatePasswordSuccessCopyWith<$Res>
    implements $UpdatePasswordStateCopyWith<$Res> {
  factory $UpdatePasswordSuccessCopyWith(UpdatePasswordSuccess value,
          $Res Function(UpdatePasswordSuccess) _then) =
      _$UpdatePasswordSuccessCopyWithImpl;
  @useResult
  $Res call({LoginResponse response});
}

/// @nodoc
class _$UpdatePasswordSuccessCopyWithImpl<$Res>
    implements $UpdatePasswordSuccessCopyWith<$Res> {
  _$UpdatePasswordSuccessCopyWithImpl(this._self, this._then);

  final UpdatePasswordSuccess _self;
  final $Res Function(UpdatePasswordSuccess) _then;

  /// Create a copy of UpdatePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? response = null,
  }) {
    return _then(UpdatePasswordSuccess(
      response: null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
    ));
  }
}

/// @nodoc

class UpdatePasswordError implements UpdatePasswordState {
  const UpdatePasswordError({required this.error});

  final String error;

  /// Create a copy of UpdatePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdatePasswordErrorCopyWith<UpdatePasswordError> get copyWith =>
      _$UpdatePasswordErrorCopyWithImpl<UpdatePasswordError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatePasswordError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'UpdatePasswordState.updatePasswordError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $UpdatePasswordErrorCopyWith<$Res>
    implements $UpdatePasswordStateCopyWith<$Res> {
  factory $UpdatePasswordErrorCopyWith(
          UpdatePasswordError value, $Res Function(UpdatePasswordError) _then) =
      _$UpdatePasswordErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$UpdatePasswordErrorCopyWithImpl<$Res>
    implements $UpdatePasswordErrorCopyWith<$Res> {
  _$UpdatePasswordErrorCopyWithImpl(this._self, this._then);

  final UpdatePasswordError _self;
  final $Res Function(UpdatePasswordError) _then;

  /// Create a copy of UpdatePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(UpdatePasswordError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_feedback_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddFeedbackState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddFeedbackState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AddFeedbackState()';
  }
}

/// @nodoc
class $AddFeedbackStateCopyWith<$Res> {
  $AddFeedbackStateCopyWith(
      AddFeedbackState _, $Res Function(AddFeedbackState) __);
}

/// @nodoc

class _Initial implements AddFeedbackState {
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
    return 'AddFeedbackState.initial()';
  }
}

/// @nodoc

class AddFeedbackLoading implements AddFeedbackState {
  const AddFeedbackLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddFeedbackLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AddFeedbackState.addFeedbackLoading()';
  }
}

/// @nodoc

class AddFeedbackSuccess implements AddFeedbackState {
  const AddFeedbackSuccess({required this.feedback});

  final FeedbackModel feedback;

  /// Create a copy of AddFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddFeedbackSuccessCopyWith<AddFeedbackSuccess> get copyWith =>
      _$AddFeedbackSuccessCopyWithImpl<AddFeedbackSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddFeedbackSuccess &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedback);

  @override
  String toString() {
    return 'AddFeedbackState.addFeedbackSuccess(feedback: $feedback)';
  }
}

/// @nodoc
abstract mixin class $AddFeedbackSuccessCopyWith<$Res>
    implements $AddFeedbackStateCopyWith<$Res> {
  factory $AddFeedbackSuccessCopyWith(
          AddFeedbackSuccess value, $Res Function(AddFeedbackSuccess) _then) =
      _$AddFeedbackSuccessCopyWithImpl;
  @useResult
  $Res call({FeedbackModel feedback});
}

/// @nodoc
class _$AddFeedbackSuccessCopyWithImpl<$Res>
    implements $AddFeedbackSuccessCopyWith<$Res> {
  _$AddFeedbackSuccessCopyWithImpl(this._self, this._then);

  final AddFeedbackSuccess _self;
  final $Res Function(AddFeedbackSuccess) _then;

  /// Create a copy of AddFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? feedback = null,
  }) {
    return _then(AddFeedbackSuccess(
      feedback: null == feedback
          ? _self.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as FeedbackModel,
    ));
  }
}

/// @nodoc

class AddFeedbackError implements AddFeedbackState {
  const AddFeedbackError({required this.error});

  final String error;

  /// Create a copy of AddFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddFeedbackErrorCopyWith<AddFeedbackError> get copyWith =>
      _$AddFeedbackErrorCopyWithImpl<AddFeedbackError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddFeedbackError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'AddFeedbackState.addFeedbackError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $AddFeedbackErrorCopyWith<$Res>
    implements $AddFeedbackStateCopyWith<$Res> {
  factory $AddFeedbackErrorCopyWith(
          AddFeedbackError value, $Res Function(AddFeedbackError) _then) =
      _$AddFeedbackErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$AddFeedbackErrorCopyWithImpl<$Res>
    implements $AddFeedbackErrorCopyWith<$Res> {
  _$AddFeedbackErrorCopyWithImpl(this._self, this._then);

  final AddFeedbackError _self;
  final $Res Function(AddFeedbackError) _then;

  /// Create a copy of AddFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(AddFeedbackError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

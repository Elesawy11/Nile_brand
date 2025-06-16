// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_review_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateReviewState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreateReviewState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CreateReviewState()';
  }
}

/// @nodoc
class $CreateReviewStateCopyWith<$Res> {
  $CreateReviewStateCopyWith(
      CreateReviewState _, $Res Function(CreateReviewState) __);
}

/// @nodoc

class _Initial implements CreateReviewState {
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
    return 'CreateReviewState.initial()';
  }
}

/// @nodoc

class CreateReivewLoading implements CreateReviewState {
  const CreateReivewLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreateReivewLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CreateReviewState.createReivewLoading()';
  }
}

/// @nodoc

class CreateReivewSuccess implements CreateReviewState {
  const CreateReivewSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreateReivewSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CreateReviewState.createReivewSuccess()';
  }
}

/// @nodoc

class CreateReivewError implements CreateReviewState {
  const CreateReivewError({required this.error});

  final String error;

  /// Create a copy of CreateReviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateReivewErrorCopyWith<CreateReivewError> get copyWith =>
      _$CreateReivewErrorCopyWithImpl<CreateReivewError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateReivewError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'CreateReviewState.createReivewError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $CreateReivewErrorCopyWith<$Res>
    implements $CreateReviewStateCopyWith<$Res> {
  factory $CreateReivewErrorCopyWith(
          CreateReivewError value, $Res Function(CreateReivewError) _then) =
      _$CreateReivewErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$CreateReivewErrorCopyWithImpl<$Res>
    implements $CreateReivewErrorCopyWith<$Res> {
  _$CreateReivewErrorCopyWithImpl(this._self, this._then);

  final CreateReivewError _self;
  final $Res Function(CreateReivewError) _then;

  /// Create a copy of CreateReviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(CreateReivewError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

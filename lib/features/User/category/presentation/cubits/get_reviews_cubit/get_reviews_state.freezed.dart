// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_reviews_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetReviewsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetReviewsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetReviewsState()';
  }
}

/// @nodoc
class $GetReviewsStateCopyWith<$Res> {
  $GetReviewsStateCopyWith(
      GetReviewsState _, $Res Function(GetReviewsState) __);
}

/// @nodoc

class _Initial implements GetReviewsState {
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
    return 'GetReviewsState.initial()';
  }
}

/// @nodoc

class GetReviewsSuccess implements GetReviewsState {
  const GetReviewsSuccess({required final List<ReviewModel> reviews})
      : _reviews = reviews;

  final List<ReviewModel> _reviews;
  List<ReviewModel> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  /// Create a copy of GetReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetReviewsSuccessCopyWith<GetReviewsSuccess> get copyWith =>
      _$GetReviewsSuccessCopyWithImpl<GetReviewsSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetReviewsSuccess &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reviews));

  @override
  String toString() {
    return 'GetReviewsState.getReviewsSuccess(reviews: $reviews)';
  }
}

/// @nodoc
abstract mixin class $GetReviewsSuccessCopyWith<$Res>
    implements $GetReviewsStateCopyWith<$Res> {
  factory $GetReviewsSuccessCopyWith(
          GetReviewsSuccess value, $Res Function(GetReviewsSuccess) _then) =
      _$GetReviewsSuccessCopyWithImpl;
  @useResult
  $Res call({List<ReviewModel> reviews});
}

/// @nodoc
class _$GetReviewsSuccessCopyWithImpl<$Res>
    implements $GetReviewsSuccessCopyWith<$Res> {
  _$GetReviewsSuccessCopyWithImpl(this._self, this._then);

  final GetReviewsSuccess _self;
  final $Res Function(GetReviewsSuccess) _then;

  /// Create a copy of GetReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reviews = null,
  }) {
    return _then(GetReviewsSuccess(
      reviews: null == reviews
          ? _self._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>,
    ));
  }
}

/// @nodoc

class GetReviewsLoading implements GetReviewsState {
  const GetReviewsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetReviewsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetReviewsState.getReviewsLoading()';
  }
}

/// @nodoc

class GetReviewsError implements GetReviewsState {
  const GetReviewsError({required this.error});

  final String error;

  /// Create a copy of GetReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetReviewsErrorCopyWith<GetReviewsError> get copyWith =>
      _$GetReviewsErrorCopyWithImpl<GetReviewsError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetReviewsError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'GetReviewsState.getReviewsError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $GetReviewsErrorCopyWith<$Res>
    implements $GetReviewsStateCopyWith<$Res> {
  factory $GetReviewsErrorCopyWith(
          GetReviewsError value, $Res Function(GetReviewsError) _then) =
      _$GetReviewsErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GetReviewsErrorCopyWithImpl<$Res>
    implements $GetReviewsErrorCopyWith<$Res> {
  _$GetReviewsErrorCopyWithImpl(this._self, this._then);

  final GetReviewsError _self;
  final $Res Function(GetReviewsError) _then;

  /// Create a copy of GetReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(GetReviewsError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

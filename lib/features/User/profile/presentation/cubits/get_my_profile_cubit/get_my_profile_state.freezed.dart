// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_my_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetMyProfileState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetMyProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetMyProfileState()';
  }
}

/// @nodoc
class $GetMyProfileStateCopyWith<$Res> {
  $GetMyProfileStateCopyWith(
      GetMyProfileState _, $Res Function(GetMyProfileState) __);
}

/// @nodoc

class _Initial implements GetMyProfileState {
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
    return 'GetMyProfileState.initial()';
  }
}

/// @nodoc

class GetMyProfileLoading implements GetMyProfileState {
  const GetMyProfileLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetMyProfileLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetMyProfileState.getMyProfileLoading()';
  }
}

/// @nodoc

class GetMyProfileSuccess implements GetMyProfileState {
  const GetMyProfileSuccess({required this.myProfile});

  final MyProfileModel myProfile;

  /// Create a copy of GetMyProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetMyProfileSuccessCopyWith<GetMyProfileSuccess> get copyWith =>
      _$GetMyProfileSuccessCopyWithImpl<GetMyProfileSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMyProfileSuccess &&
            (identical(other.myProfile, myProfile) ||
                other.myProfile == myProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, myProfile);

  @override
  String toString() {
    return 'GetMyProfileState.getMyProfileSuccess(myProfile: $myProfile)';
  }
}

/// @nodoc
abstract mixin class $GetMyProfileSuccessCopyWith<$Res>
    implements $GetMyProfileStateCopyWith<$Res> {
  factory $GetMyProfileSuccessCopyWith(
          GetMyProfileSuccess value, $Res Function(GetMyProfileSuccess) _then) =
      _$GetMyProfileSuccessCopyWithImpl;
  @useResult
  $Res call({MyProfileModel myProfile});
}

/// @nodoc
class _$GetMyProfileSuccessCopyWithImpl<$Res>
    implements $GetMyProfileSuccessCopyWith<$Res> {
  _$GetMyProfileSuccessCopyWithImpl(this._self, this._then);

  final GetMyProfileSuccess _self;
  final $Res Function(GetMyProfileSuccess) _then;

  /// Create a copy of GetMyProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? myProfile = null,
  }) {
    return _then(GetMyProfileSuccess(
      myProfile: null == myProfile
          ? _self.myProfile
          : myProfile // ignore: cast_nullable_to_non_nullable
              as MyProfileModel,
    ));
  }
}

/// @nodoc

class GetMyProfileError implements GetMyProfileState {
  const GetMyProfileError({required this.error});

  final String error;

  /// Create a copy of GetMyProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetMyProfileErrorCopyWith<GetMyProfileError> get copyWith =>
      _$GetMyProfileErrorCopyWithImpl<GetMyProfileError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMyProfileError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'GetMyProfileState.getMyProfileError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $GetMyProfileErrorCopyWith<$Res>
    implements $GetMyProfileStateCopyWith<$Res> {
  factory $GetMyProfileErrorCopyWith(
          GetMyProfileError value, $Res Function(GetMyProfileError) _then) =
      _$GetMyProfileErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GetMyProfileErrorCopyWithImpl<$Res>
    implements $GetMyProfileErrorCopyWith<$Res> {
  _$GetMyProfileErrorCopyWithImpl(this._self, this._then);

  final GetMyProfileError _self;
  final $Res Function(GetMyProfileError) _then;

  /// Create a copy of GetMyProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(GetMyProfileError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

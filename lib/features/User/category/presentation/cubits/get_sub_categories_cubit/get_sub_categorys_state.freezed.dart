// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_sub_categorys_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetSubCategorysState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetSubCategorysState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetSubCategorysState()';
  }
}

/// @nodoc
class $GetSubCategorysStateCopyWith<$Res> {
  $GetSubCategorysStateCopyWith(
      GetSubCategorysState _, $Res Function(GetSubCategorysState) __);
}

/// @nodoc

class _Initial implements GetSubCategorysState {
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
    return 'GetSubCategorysState.initial()';
  }
}

/// @nodoc

class SubCategoryLoading implements GetSubCategorysState {
  const SubCategoryLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SubCategoryLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetSubCategorysState.subCategoryLoading()';
  }
}

/// @nodoc

class SubCategorySuccess implements GetSubCategorysState {
  const SubCategorySuccess(
      {required final List<SubCategoryModel> subCategories})
      : _subCategories = subCategories;

  final List<SubCategoryModel> _subCategories;
  List<SubCategoryModel> get subCategories {
    if (_subCategories is EqualUnmodifiableListView) return _subCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCategories);
  }

  /// Create a copy of GetSubCategorysState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubCategorySuccessCopyWith<SubCategorySuccess> get copyWith =>
      _$SubCategorySuccessCopyWithImpl<SubCategorySuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubCategorySuccess &&
            const DeepCollectionEquality()
                .equals(other._subCategories, _subCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_subCategories));

  @override
  String toString() {
    return 'GetSubCategorysState.subCategorySuccess(subCategories: $subCategories)';
  }
}

/// @nodoc
abstract mixin class $SubCategorySuccessCopyWith<$Res>
    implements $GetSubCategorysStateCopyWith<$Res> {
  factory $SubCategorySuccessCopyWith(
          SubCategorySuccess value, $Res Function(SubCategorySuccess) _then) =
      _$SubCategorySuccessCopyWithImpl;
  @useResult
  $Res call({List<SubCategoryModel> subCategories});
}

/// @nodoc
class _$SubCategorySuccessCopyWithImpl<$Res>
    implements $SubCategorySuccessCopyWith<$Res> {
  _$SubCategorySuccessCopyWithImpl(this._self, this._then);

  final SubCategorySuccess _self;
  final $Res Function(SubCategorySuccess) _then;

  /// Create a copy of GetSubCategorysState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? subCategories = null,
  }) {
    return _then(SubCategorySuccess(
      subCategories: null == subCategories
          ? _self._subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<SubCategoryModel>,
    ));
  }
}

/// @nodoc

class SubCategoryError implements GetSubCategorysState {
  const SubCategoryError({required this.error});

  final String error;

  /// Create a copy of GetSubCategorysState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubCategoryErrorCopyWith<SubCategoryError> get copyWith =>
      _$SubCategoryErrorCopyWithImpl<SubCategoryError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubCategoryError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'GetSubCategorysState.subCategoryError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $SubCategoryErrorCopyWith<$Res>
    implements $GetSubCategorysStateCopyWith<$Res> {
  factory $SubCategoryErrorCopyWith(
          SubCategoryError value, $Res Function(SubCategoryError) _then) =
      _$SubCategoryErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$SubCategoryErrorCopyWithImpl<$Res>
    implements $SubCategoryErrorCopyWith<$Res> {
  _$SubCategoryErrorCopyWithImpl(this._self, this._then);

  final SubCategoryError _self;
  final $Res Function(SubCategoryError) _then;

  /// Create a copy of GetSubCategorysState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(SubCategoryError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

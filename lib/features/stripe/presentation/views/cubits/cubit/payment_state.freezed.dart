// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentState()';
  }
}

/// @nodoc
class $PaymentStateCopyWith<$Res> {
  $PaymentStateCopyWith(PaymentState _, $Res Function(PaymentState) __);
}

/// @nodoc

class _Initial implements PaymentState {
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
    return 'PaymentState.initial()';
  }
}

/// @nodoc

class PaymentLoading implements PaymentState {
  const PaymentLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentState.paymentLoading()';
  }
}

/// @nodoc

class PaymentSuccess implements PaymentState {
  const PaymentSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentState.paymentSuccess()';
  }
}

/// @nodoc

class PaymentError implements PaymentState {
  const PaymentError({required this.error});

  final String error;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentErrorCopyWith<PaymentError> get copyWith =>
      _$PaymentErrorCopyWithImpl<PaymentError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'PaymentState.paymentError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $PaymentErrorCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory $PaymentErrorCopyWith(
          PaymentError value, $Res Function(PaymentError) _then) =
      _$PaymentErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$PaymentErrorCopyWithImpl<$Res> implements $PaymentErrorCopyWith<$Res> {
  _$PaymentErrorCopyWithImpl(this._self, this._then);

  final PaymentError _self;
  final $Res Function(PaymentError) _then;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(PaymentError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

import 'package:freezed_annotation/freezed_annotation.dart';
import 'signup_error_handler.dart';

part 'signup_result.freezed.dart';

@freezed
class SignupResult<T> with _$SignupResult<T> {
  const SignupResult._(); // Private constructor for freezed

  const factory SignupResult.success(T data) = Success<T>;
  const factory SignupResult.failure(SignupErrorHandler errorHandler) =
      Failure<T>;
}

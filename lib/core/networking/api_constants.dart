class ApiConstants {
  ApiConstants._();

  static const String baseUrl = 'https://nile-brands-backend.up.railway.app/api/v1/';
  static const String signup = 'auth/signup';
  static const String login = 'auth/login';
  static const String forgotPassword = 'auth/forgetPassword';
  static const String verifyCode = 'auth/verifyCode';
  static const String resetPassword = 'auth/resetPassword';
  static const String categories = 'categories';
  static const String subcategories = 'subcategories';
  static const String products = 'products';
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}

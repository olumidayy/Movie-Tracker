import 'package:movie_tracker/core/exceptions/api.dart';

class AuthenticationException extends ApiException {

  AuthenticationException({String message, int code}) : super(message: message, statusCode: code);
}

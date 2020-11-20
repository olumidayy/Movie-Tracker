import 'package:movie_tracker/core/exceptions/api.dart';

class Http404Exception extends ApiException {
  Http404Exception({String message, int code}) : super(message: message, statusCode: code);
}
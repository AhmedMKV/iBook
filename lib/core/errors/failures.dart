import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  Failures(this.errMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        // TODO: Handle this case.
        return ServerFailure('Connection Timeout');
      case DioExceptionType.sendTimeout:
        // TODO: Handle this case.
        return ServerFailure('Send Timeout');
      case DioExceptionType.receiveTimeout:
        // TODO: Handle this case.
        return ServerFailure('Receive Timeout');
      case DioExceptionType.badCertificate:
        // TODO: Handle this case.
        return ServerFailure('Bad certificate');
      case DioExceptionType.badResponse:
        // TODO: Handle this case.
        return ServerFailure('Bad Response');
      case DioExceptionType.cancel:
        // TODO: Handle this case.
        return ServerFailure('Your request was cancelled');
      case DioExceptionType.connectionError:
        // TODO: Handle this case.
        return ServerFailure('Connection Error');
      case DioExceptionType.unknown:
        // TODO: Handle this case.
        return ServerFailure('Unexpected Error ,Please try again');
    }
  }
}

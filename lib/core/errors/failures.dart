import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;
  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with the server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with the server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recieve timeout with the server');
      case DioExceptionType.badCertificate:
        return ServerFailure(
            'Connection failed due to an invalid certificate. Please check your network security settings.');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with the server');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected error, Please try again!');
      default:
        return ServerFailure('Unexpected error, Please try again!');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return response['error']['message'];
    } else if (statusCode == 404) {
      return ServerFailure('Your request was not found, please try again');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try again later');
    } else {
      return ServerFailure(
          'There was an error, try again or contact our support and it will be fixed as soon as possible');
    }
  }
}

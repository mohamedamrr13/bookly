import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/models/repos/home_repo.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic>? data = await apiService.get(
          //var ???
          endPoint: 'volumes?q=Hollywood&Sorting=newest&Filtering=free-ebooks');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(
          ServerFailure.fromDioError(e),
        );
      } else {
        return Left(ServerFailure(
          e.toString(),
        ));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      Map<String, dynamic>? data = await apiService.get(
          //var ???
          endPoint: 'volumes?q=Marvel:Hollywood&Filtering=free-ebooks');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (exception) {
      if (exception is DioException) {
        return Left(
          ServerFailure.fromDioError(exception),
        );
      } else {
        return Left(ServerFailure(
          exception.toString(),
        ));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimillarBooks(
      {required String category}) async {
    try {
      Map<String, dynamic>? data = await apiService.get(
          endPoint:
              'volumes?q=subject:Fiction&Sorting=relevance&Filtering=free-ebooks');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (exception) {
      if (exception is DioException) {
        return Left(
          ServerFailure.fromDioError(exception),
        );
      } else {
        return Left(ServerFailure(
          exception.toString(),
        ));
      }
    }
  }
}

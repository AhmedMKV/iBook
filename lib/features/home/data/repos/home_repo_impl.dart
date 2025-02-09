import 'package:dartz/dartz.dart';
import 'package:ibook/core/errors/failures.dart';
import 'package:ibook/core/utils/api_service.dart';
import 'package:ibook/features/home/data/models/book_model/BookModel.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchLatestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free_ebooks&Sorting=newest&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }
}

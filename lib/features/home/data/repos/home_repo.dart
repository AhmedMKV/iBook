import 'package:dartz/dartz.dart';
import 'package:ibook/core/errors/failures.dart';
import 'package:ibook/features/home/data/models/book_model/BookModel.dart';

abstract class HomeRepo{
  Future<Either <Failures,List<BookModel>>> fetchFeaturedBooks();
  Future<Either <Failures,List<BookModel>>> fetchLatestBooks();
  Future<Either <Failures,List<BookModel>>> fetchSimilarBooks({required String category});
}
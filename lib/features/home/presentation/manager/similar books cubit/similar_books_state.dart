part of 'similar_books_cubit.dart';

@immutable
sealed class SimilarBooksState {}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;

  SimilarBooksSuccess(this.books);
}

final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksFailed extends SimilarBooksState {
  final String errMessage;

  SimilarBooksFailed(this.errMessage);
}

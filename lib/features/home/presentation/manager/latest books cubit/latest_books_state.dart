part of 'latest_books_cubit.dart';

@immutable
sealed class LatestBooksState {}

final class LatestBooksInitial extends LatestBooksState {}
final class LatestBooksFailed extends LatestBooksState {
  final String errMessage;

  LatestBooksFailed(this.errMessage);
}
final class LatestBooksLoading extends LatestBooksState {}
final class LatestBooksSuccess extends LatestBooksState {

  final List<BookModel> books ;

  LatestBooksSuccess(this.books);
}

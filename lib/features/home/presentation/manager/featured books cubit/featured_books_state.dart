part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksFailed extends FeaturedBooksState {
  final String errMessage;

  FeaturedBooksFailed(this.errMessage);
}

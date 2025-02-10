import 'package:bloc/bloc.dart';
import 'package:ibook/features/home/data/models/book_model/BookModel.dart';
import 'package:ibook/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'latest_books_state.dart';

class LatestBooksCubit extends Cubit<LatestBooksState> {
  LatestBooksCubit(this.homeRepo) : super(LatestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchLatestBooks() async {
    emit(LatestBooksLoading());
    var result = await homeRepo.fetchLatestBooks();
    result.fold(
      (failure) {
        emit(LatestBooksFailed(failure.errMessage));
      },
      (books) {
        emit(LatestBooksSuccess(books));
      },
    );
  }
}

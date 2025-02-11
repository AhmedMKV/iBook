import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ibook/core/errors/failures.dart';
import 'package:ibook/features/home/data/models/book_model/BookModel.dart';
import 'package:ibook/features/home/data/repos/home_repo.dart';
import 'package:ibook/features/home/presentation/manager/latest%20books%20cubit/latest_books_cubit.dart';
import 'package:meta/meta.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBooksFailed(failure.errMessage));
    }, (books) {
    emit(SimilarBooksSuccess(books));
    },);

  }
}

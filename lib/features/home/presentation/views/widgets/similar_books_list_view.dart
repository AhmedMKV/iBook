import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibook/core/utils/styles.dart';
import 'package:ibook/features/home/presentation/manager/similar%20books%20cubit/similar_books_cubit.dart';
import 'similar_books_list_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
      if (state is SimilarBooksSuccess) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: SimilarBooksListItem(
                  book: state.books[index],
                ),
              );
            });
      } else if (state is SimilarBooksFailed) {
        return Center(
          child: Text(
            state.errMessage,
            style: Styles.text22,
          ),
        );
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibook/core/utils/styles.dart';
import 'package:ibook/features/home/presentation/manager/latest%20books%20cubit/latest_books_cubit.dart';
import 'package:ibook/features/home/presentation/views/widgets/book_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return
      BlocBuilder<LatestBooksCubit, LatestBooksState>(
        builder: (context, state) {
           if (state is LatestBooksSuccess){
            return ListView.builder(

                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: BookListViewItem(book: state.books[index],),
                  );
                }
            );
          }else if (state is LatestBooksFailed){
             return Text(state.errMessage , style: Styles.text22,);
           }else{
             return Center(
               child: CircularProgressIndicator(),
             );
           }
        },
      );
  }
}

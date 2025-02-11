import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibook/core/utils/styles.dart';
import 'package:ibook/features/home/presentation/manager/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:ibook/features/home/presentation/views/widgets/custom_book_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * .3,
            child: ListView.builder(
           itemCount: state.books.length,

              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomBookItem(book: state.books[index],),
                );
              },
          
            ),
          );
        }else if (state is FeaturedBooksFailed){
          return Text(state.errMessage,style: Styles.text22,);
        }else{
         return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

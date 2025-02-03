import 'package:flutter/material.dart';
import 'package:ibook/features/home/presentation/views/widgets/custom_book_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: MediaQuery.of(context).size.height*.3,
        child: ListView.builder(

        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder:(context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomBookItem(),
          );
          } ,

            ),
      );
  }
}

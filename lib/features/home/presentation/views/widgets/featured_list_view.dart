import 'package:flutter/material.dart';
import 'package:ibook/features/home/presentation/views/widgets/custom_book_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      scrollDirection: Axis.horizontal,
      itemBuilder:(context,index)=>CustomBookItem() ,

    );
  }
}

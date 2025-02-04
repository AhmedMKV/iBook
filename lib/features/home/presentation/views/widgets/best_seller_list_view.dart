import 'package:flutter/material.dart';
import 'package:ibook/features/home/presentation/views/widgets/custom_best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
   physics: NeverScrollableScrollPhysics(),
        itemCount: 7,
        itemBuilder: (context , index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: BookListViewItem(),
          );
        }
    );
  }
}

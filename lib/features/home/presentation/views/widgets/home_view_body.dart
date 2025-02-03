import 'package:flutter/material.dart';
import 'package:ibook/core/utils/styles.dart';
import 'package:ibook/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:ibook/features/home/presentation/views/widgets/custom_best_seller_item.dart';

import 'package:ibook/features/home/presentation/views/widgets/featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
         FeaturedListView(),
        SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text('Best Seller ',
            style: Styles.text22,),
        ),
        CustomBestSellerItem()
      ],
    );
  }
}

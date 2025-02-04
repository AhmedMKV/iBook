import 'package:flutter/material.dart';
import 'package:ibook/core/utils/styles.dart';
import 'package:ibook/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:ibook/features/search/presentation/views/widgets/custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomSearchTextField(),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Results',
                  style: Styles.text16.copyWith(fontSize: 19),
                ),
                SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
          SliverFillRemaining(
            child: BestSellerListView(),
          )
        ],
      ),
    );
  }
}

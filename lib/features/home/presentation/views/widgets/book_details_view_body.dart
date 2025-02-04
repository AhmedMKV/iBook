import 'package:flutter/material.dart';
import 'package:ibook/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookDetailsAppBar()
      ],
    );
  }
}

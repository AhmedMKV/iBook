import 'package:flutter/material.dart';
import 'package:ibook/core/utils/styles.dart';
import 'package:ibook/features/home/data/models/book_model/BookModel.dart';
import 'package:ibook/features/home/presentation/views/widgets/books_button.dart';
import 'package:ibook/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:ibook/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:ibook/features/home/presentation/views/widgets/similar_books_list_view.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomBookDetailsAppBar(),
        SizedBox(
          height: 15,
        ),
        CustomBookImage(imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,),
        SizedBox(
          height: 30,
        ),
        Text(
          book.volumeInfo!.title!,
          style: Styles.text30,
        ),
        Text(
          book.volumeInfo!.authors![0],
          style: Styles.text16.copyWith(color: Colors.grey),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Text(
              '4.9',
              style: Styles.text22.copyWith(fontSize: 18),
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              '(23333)',
              style: Styles.text14,
            )
          ],
        ),
        SizedBox(
          height: 25,
        ),
        BooksButton(book: book,),
        SizedBox(
          height: 20,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('You can also like ',
                  style: Styles.text16.copyWith(fontSize: 19)),
            )),
        SizedBox(
          height: 8,
        ),
        Expanded(child: SimilarBooksListView())
      ],
    );
  }
}

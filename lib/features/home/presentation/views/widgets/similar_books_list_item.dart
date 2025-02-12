import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibook/features/home/data/models/book_model/BookModel.dart';

class SimilarBooksListItem extends StatelessWidget {
  const SimilarBooksListItem({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push('/bookDetailsView', extra: book);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
              aspectRatio: .6,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
              )),
        ),
      ),
    );
  }
}

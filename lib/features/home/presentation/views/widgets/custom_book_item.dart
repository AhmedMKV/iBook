import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibook/features/home/data/models/book_model/BookModel.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({
    super.key,
    required this.book,
  });

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push('/bookDetailsView', extra: book);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: .7,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
          ),
        ),
      ),
    );
  }
}

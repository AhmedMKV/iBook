import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:ibook/constants.dart';
import 'package:ibook/core/utils/styles.dart';
import 'package:ibook/features/home/data/models/book_model/BookModel.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.book});
final BookModel book ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: () {
          GoRouter.of(context).push('/bookDetailsView',extra: book);
         },
        child: SizedBox(
          height: 130,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: .7,
                  child: CachedNetworkImage(

                    imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
                    fit: BoxFit.fill,
                  )
                ),
              ),
              SizedBox(
                width: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.volumeInfo!.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.text22.copyWith(
                          fontFamily: kFont, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: 4 ),
                    Text(book.volumeInfo!.authors![0], style: Styles.text14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Free',
                          style: Styles.text22.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text('4.9',style: Styles.text22.copyWith(fontSize: 18),),
                            SizedBox(width: 3,),
                            Text('(23333)',style: Styles.text14,)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

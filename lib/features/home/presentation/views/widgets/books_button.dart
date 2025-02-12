import 'package:flutter/material.dart';
import 'package:ibook/core/utils/styles.dart';
import 'package:ibook/features/home/data/models/book_model/BookModel.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksButton extends StatelessWidget {
  const BooksButton({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () async {
              Uri uri = Uri.parse(book.volumeInfo!.previewLink!);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width * .4,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  )),
              child: Center(
                child: Text(
                  'Free ',
                  style: Styles.text22.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              Uri uri = Uri.parse(book.volumeInfo!.previewLink!);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width * .4,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xffEF8265),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  )),
              child: Center(
                child: Text(
                  'Free Preview ',
                  style: Styles.text16,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

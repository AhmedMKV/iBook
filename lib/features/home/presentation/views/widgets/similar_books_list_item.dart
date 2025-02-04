import 'package:flutter/material.dart';
import 'package:ibook/constants.dart';
class SimilarBooksListItem extends StatelessWidget {
  const SimilarBooksListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){},
        child:
        SizedBox(
          height: MediaQuery.of(context).size.height*.5,
          child: AspectRatio(
          aspectRatio: .6,
          child: Container(
            decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              kTestImage,
              fit: BoxFit.fill,
            ),
          ),
              ),
        ),
      );
  }
}

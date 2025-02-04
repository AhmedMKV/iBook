import 'package:flutter/material.dart';
import 'package:ibook/core/utils/styles.dart';

class BooksButton extends StatelessWidget {
  const BooksButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*.4,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            )),

            child: Center(
              child: Text(
                '19.99 ',
                style: Styles.text22.copyWith(fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*.4,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xffEF8265),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                )),

            child:
            Center(
              child: Text(
                'Free Preview ',
                style: Styles.text22.copyWith( color: Colors.white,fontWeight: FontWeight.normal),textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}

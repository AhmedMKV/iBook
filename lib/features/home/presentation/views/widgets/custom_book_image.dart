import 'package:flutter/material.dart';
import 'package:ibook/constants.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .4,
      child: AspectRatio(
          aspectRatio: .7,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              kTestImage,
              fit: BoxFit.fill,
            ),
          )),
    );
  }
}


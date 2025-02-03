import 'package:flutter/material.dart';
import 'package:ibook/constants.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child:
      AspectRatio(
        aspectRatio:.7,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),

          child: Image.asset(kTestImage,fit: BoxFit.fill,),
        ),
      ),
    );
  }
}

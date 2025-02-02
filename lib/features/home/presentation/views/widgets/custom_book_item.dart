import 'package:flutter/material.dart';
import 'package:ibook/constants.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child:
      SizedBox(
       width: MediaQuery.of(context).size.width*.25,
        child: AspectRatio(
          aspectRatio:.7,
          child: Container(

            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: AssetImage(kTestImage),fit: BoxFit.fill)),
          ),
        ),
      ),
    );
  }
}

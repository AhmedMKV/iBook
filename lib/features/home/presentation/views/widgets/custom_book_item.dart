import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibook/constants.dart';
import 'package:ibook/features/home/presentation/views/book_details_view.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
     GoRouter.of(context).push('/bookDetailsView');
      },
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

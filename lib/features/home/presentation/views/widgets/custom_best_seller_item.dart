import 'package:flutter/material.dart';
import 'package:ibook/constants.dart';
import 'package:ibook/core/utils/styles.dart';

class CustomBestSellerItem extends StatelessWidget {
  const CustomBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          height: 130,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: .7,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    kTestImage,
                    fit: BoxFit.fill,
                  ),
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
                      'Harry Potter and the goblet of fire ',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.text22.copyWith(
                          fontFamily: kFont, fontWeight: FontWeight.normal),
                    ),
                    Text('This is the author name ', style: Styles.text14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '19.99 ',
                          style: Styles.text22.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '4.9',
                          style: Styles.text22,
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

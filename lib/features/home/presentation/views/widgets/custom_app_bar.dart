import 'package:flutter/material.dart';
import 'package:ibook/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      child: Row(
        children: [
          Image.asset(
            kLogo,
            height: 55,
          ),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.search,size: 34,))
        ],
      ),
    );
  }
}

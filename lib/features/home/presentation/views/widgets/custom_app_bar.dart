import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibook/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            kLogo,
            height: 55,
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push('/searchView');
              },
              icon: Icon(
                Icons.search,
                size: 34,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}

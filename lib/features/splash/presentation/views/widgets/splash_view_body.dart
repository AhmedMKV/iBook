import 'package:flutter/material.dart';
import 'package:ibook/constants.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(kLogo),
        SizedBox(
          height: 15,
        ),
        Text(
          'Unlocking Minds, One Page at a Time',
          style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: kFont),
        )
      ],
    );
  }
}

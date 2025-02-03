import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const IBookApp());
}

class IBookApp extends StatelessWidget {
  const IBookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}


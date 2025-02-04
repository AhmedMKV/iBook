import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';
import 'package:ibook/core/utils/app_router.dart';

import 'constants.dart';


void main() {
  runApp(const IBookApp());
}

class IBookApp extends StatelessWidget {
  const IBookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),
      debugShowCheckedModeBanner: false,

    );
  }
}


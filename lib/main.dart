import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:ibook/core/utils/app_router.dart';
import 'package:ibook/core/utils/service_locator.dart';
import 'package:ibook/features/home/data/repos/home_repo_impl.dart';
import 'package:ibook/features/home/presentation/manager/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:ibook/features/home/presentation/manager/lates%20books%20cubit/latest_books_cubit.dart';

import 'constants.dart';

void main() {
setup();
  runApp(const IBookApp());
}

class IBookApp extends StatelessWidget {
  const IBookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) => LatestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

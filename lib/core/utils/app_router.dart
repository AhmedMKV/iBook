import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ibook/core/utils/service_locator.dart';
import 'package:ibook/features/home/data/models/book_model/BookModel.dart';
import 'package:ibook/features/home/data/repos/home_repo_impl.dart';
import 'package:ibook/features/home/presentation/manager/similar%20books%20cubit/similar_books_cubit.dart';
import 'package:ibook/features/home/presentation/views/book_details_view.dart';
import 'package:ibook/features/home/presentation/views/home_view.dart';
import 'package:ibook/features/splash/presentation/views/splash_view.dart';
import 'package:ibook/features/search/presentation/views/search_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: '/bookDetailsView',
        builder: (context, state) =>
            BlocProvider(
              create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
              child: BookDetailsView(book: state.extra as BookModel,),
            ),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => SearchView(),
      ),
    ],
  );

}
import 'package:go_router/go_router.dart';
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
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => SearchView(),
      ),
    ],
  );

}
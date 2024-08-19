import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const homeviewPath = '/homeView';
  static const detailsviewPath = '/detailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeviewPath,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: detailsviewPath,
        builder: (context, state) => const BookDetailsView(),
      )
    ],
  );
}

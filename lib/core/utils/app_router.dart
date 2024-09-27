import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/models/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manager/simillar_books_cubit/simillar_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) => SimillarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(bookModel: state.extra as BookModel),
        ),
      ),
    ],
  );
}

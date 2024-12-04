import 'package:go_router/go_router.dart';
import 'package:movie_review_app/Get_Started/Main_Started.dart';
import 'package:movie_review_app/Login/login.dart';
import 'package:movie_review_app/Login/registered.dart';
import 'Screen/Screen.dart';

class RouterWidget {
  static final GoRouter router = GoRouter(
    initialLocation: '/started',
    routes: [
      GoRoute(
        path: '/started',
        builder: (context, state) => Started(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => LoginUi(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => SignUp(),
      ),
      GoRoute(
        path: '/homepage',
        builder: (context, state) => Home(),
      ),
      GoRoute(
        path: '/films',
        builder: (context, state) => Films(),
      ),
      GoRoute(
        path: '/diary',
        builder: (context, state) => Diary(),
      ),
      GoRoute(
        path: '/reviews',
        builder: (context, state) => Reviews(),
      ),
      GoRoute(
        path: '/watchList',
        builder: (context, state) => Watchlist(),
      ),
      GoRoute(
        path: '/lists',
        builder: (context, state) => Lists(),
      ),
      GoRoute(
        path: '/likes',
        builder: (context, state) => Likes(),
      ),
    ],
  );
}

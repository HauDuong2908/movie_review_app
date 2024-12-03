import 'package:go_router/go_router.dart';
import 'package:movie_review_app/Get_Started/Main_Started.dart';
import 'package:movie_review_app/Screen/Diary/diary.dart';
import 'package:movie_review_app/Screen/Watchlist/watchlist.dart';
import 'package:movie_review_app/Screen/home/home.dart';
import 'package:movie_review_app/Login/login.dart';
import 'package:movie_review_app/Login/registered.dart';

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
        path: '/diary',
        builder: (context, state) => Diary(),
      ),
      GoRoute(
        path: '/watchList',
        builder: (context, state) => Watchlist(),
      ),
    ],
  );
}

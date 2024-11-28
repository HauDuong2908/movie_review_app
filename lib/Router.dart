import 'package:go_router/go_router.dart';
import 'package:movie_review_app/Get_Started/Main_Started.dart';
import 'package:movie_review_app/Login/login_ui.dart';

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
      )
    ],
  );
}

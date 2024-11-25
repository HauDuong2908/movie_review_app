import 'package:go_router/go_router.dart';
import 'package:movie_review_app/Get_Started/Main_Started.dart';

class RouterWidget {
  static final GoRouter router = GoRouter(
    initialLocation: '/Started',
    routes: [
      GoRoute(
        path: '/Started',
        builder: (context, state) => Started(),
      ),
    ],
  );
}

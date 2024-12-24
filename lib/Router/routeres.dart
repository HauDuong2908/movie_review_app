import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_review_app/Router/Router.dart';
import '../Screen/Screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: RouterWidget.homepage,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => Navbar(
        navigationShell: navigationShell,
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterWidget.homepage,
              builder: (context, state) => const Home(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterWidget.Reviewpage,
              builder: (context, state) => const Reviews(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterWidget.listpage,
              builder: (context, state) => const Lists(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterWidget.userpage,
              builder: (context, state) => const User(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: RouterWidget.filmpage,
      builder: (context, state) => const Films(),
    )
  ],
);

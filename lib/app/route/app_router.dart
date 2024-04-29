import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../main.dart';
import '../../second/view/second_page.dart';
import 'app_path.dart';

class AppRouter {
  AppRouter();
  GoRouter get router => _router;

  final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

  late final GoRouter _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: [
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        name: AppPath.home.toLabel,
        path: AppPath.home.toPath,
        builder: (BuildContext context, GoRouterState state) => const MyApp(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        name: AppPath.second.toLabel,
        path: AppPath.second.toPath,
        builder: (BuildContext context, GoRouterState state) => const SecondPage(),
      ),
    ],
  );
}

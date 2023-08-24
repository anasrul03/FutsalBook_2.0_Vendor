import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/views/booked_court_page.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/views/circular_progress_view.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/views/home_page_view.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/cubits/routing/routes_cubit.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      navigatorKey: _rootNavigatorKey,
      errorBuilder: (context, state) {
        return const Scaffold(
          body: Center(
            child: Text("Error Not Found"),
          ),
        );
      },
      routes: [
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: '/',
          builder: (builder, context) {
            return const CircularView();
          },
        ),
        ShellRoute(
            navigatorKey: _shellNavigatorKey,
            builder: (context, state, child) {
              return BlocProvider(
                create: (context) => RoutesCubit(),
                child: HomePage(
                  screen: child,
                ),
              );
            },
            routes: [
              GoRoute(
                parentNavigatorKey: _shellNavigatorKey,
                path: "/home",
                pageBuilder: (context, state) {
                  return const NoTransitionPage(
                      child: Center(
                    child: Text('Homepage'),
                  ));
                },
              ),
              GoRoute(
                parentNavigatorKey: _shellNavigatorKey,
                path: "/booked",
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: BookedCourtPage());
                },
              )
            ])
      ]);

  static GoRouter get router => _router;
}

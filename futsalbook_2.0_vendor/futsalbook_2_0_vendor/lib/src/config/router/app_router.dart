//Package import
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/views/authentication/onboarding_view.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/views/authentication/registration_view.dart';
import 'package:go_router/go_router.dart';

//Local import
import 'package:futsalbook_2_0_vendor/src/config/router/router_utils.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/views/authentication/login_view.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/views/booked_court_view.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/views/loading/circular_progress_view.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/views/dashboard_view.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/views/promotion_view.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/views/home_page_view.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/views/profile_settings_view.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/views/venue_list_view.dart';
import '../../presentation/cubits/routing/routes_cubit.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    initialLocation: PAGES.onboarding.screenPath,
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
            name: PAGES.home.screenName,
            path: PAGES.home.screenPath,
            pageBuilder: (context, state) {
              return const NoTransitionPage(child: DashboardPage());
            },
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            name: PAGES.bookedList.screenName,
            path: PAGES.bookedList.screenPath,
            pageBuilder: (context, state) {
              return const NoTransitionPage(child: BookedCourtPage());
            },
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            name: PAGES.promotion.screenName,
            path: PAGES.promotion.screenPath,
            pageBuilder: (context, state) {
              return const NoTransitionPage(child: PromotionPage());
            },
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            name: PAGES.venueList.screenName,
            path: PAGES.venueList.screenPath,
            pageBuilder: (context, state) {
              return const NoTransitionPage(child: VenueListPage());
            },
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            name: PAGES.settings.screenName,
            path: PAGES.settings.screenPath,
            pageBuilder: (context, state) {
              return const NoTransitionPage(child: ProfileSettingsPage());
            },
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        name: PAGES.onboarding.screenName,
        path: PAGES.onboarding.screenPath,
        builder: (builder, context) {
          return const OnBoarding();
        },
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        name: PAGES.register.screenName,
        path: PAGES.register.screenPath,
        builder: (builder, context) {
          return const RegistrationPage();
        },
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        name: PAGES.loadingUser.screenName,
        path: PAGES.loadingUser.screenPath,
        builder: (builder, context) {
          return const CircularView();
        },
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        name: PAGES.login.screenName,
        path: PAGES.login.screenPath,
        builder: (builder, context) {
          return const LoginPage();
        },
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/',
        builder: (builder, context) {
          return const CircularView();
        },
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.bookedDetails.screenPath,
        builder: (builder, context) {
          return const CircularView();
        },
      ),
    ],
  );

  static GoRouter get router => _router;
}

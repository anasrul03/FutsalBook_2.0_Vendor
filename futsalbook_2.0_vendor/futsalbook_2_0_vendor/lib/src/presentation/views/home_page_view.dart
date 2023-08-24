import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futsalbook_2_0_vendor/src/config/router/router_utils.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/widgets/bottom_navigation_bar_route.dart';
import 'package:go_router/go_router.dart';

import '../cubits/routing/routes_cubit.dart';
import '../cubits/routing/routes_state.dart';

class HomePage extends StatefulWidget {
  final Widget screen;
  const HomePage({super.key, required this.screen});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final tabs = [
    BottomNavigationBarRoute(
      initialLocation: PAGES.home.screenPath,
      icon: const Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarRoute(
      initialLocation: PAGES.booked.screenPath,
      icon: const Icon(Icons.bookmark_border),
      label: 'Booked',
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widget.screen,
        bottomNavigationBar: _buildBottomNavigation(context, tabs));
  }
}

BlocBuilder<RoutesCubit, RoutesState> _buildBottomNavigation(
        mContext, List<BottomNavigationBarRoute> tabs) =>
    BlocBuilder<RoutesCubit, RoutesState>(
      buildWhen: (previous, current) => previous.index != current.index,
      builder: (context, state) {
        return BottomNavigationBar(
          onTap: (value) async {
            if (state.index != value) {
              context.read<RoutesCubit>().selectedNavigationBarItems(value);
              context.go(tabs[value].initialLocation);
            }
          },
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 0,
          backgroundColor: Colors.blue,
          unselectedItemColor: Colors.blueAccent[100],
          selectedIconTheme: IconThemeData(
            color: Colors.white,
            size: ((IconTheme.of(mContext).size)! * 1.3),
          ),
          items: tabs,
          currentIndex: state.index,
          type: BottomNavigationBarType.fixed,
        );
      },
    );

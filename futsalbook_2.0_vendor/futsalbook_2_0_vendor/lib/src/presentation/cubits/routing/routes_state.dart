import 'package:equatable/equatable.dart';
import 'package:futsalbook_2_0_vendor/src/config/router/router_utils.dart';

// Status is for better user experience whenever the app needed to load.
enum RouteStatus { initial, success, loading, failed }

class RoutesState extends Equatable {
  final String bottomNavItems;
  final int index;
  final RouteStatus status;

  const RoutesState(
      {required this.bottomNavItems,
      required this.index,
      required this.status});

  factory RoutesState.initial() {
    return RoutesState(
        bottomNavItems: PAGES.home.screenPath,
        index: 0,
        status: RouteStatus.initial);
  }

  @override
  List<Object?> get props => [bottomNavItems, index, status];
}

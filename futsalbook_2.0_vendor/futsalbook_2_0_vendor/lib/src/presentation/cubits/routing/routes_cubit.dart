import 'package:bloc/bloc.dart';
import 'package:futsalbook_2_0_vendor/src/config/router/router_utils.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/cubits/routing/routes_state.dart';

class RoutesCubit extends Cubit<RoutesState> {
  RoutesCubit() : super(RoutesState.initial());

  void selectedNavigationBarItems(int index) {
    switch (index) {
      case 0:
        emit(RoutesState(
            bottomNavItems: PAGES.home.screenName,
            index: index,
            status: RouteStatus.initial));
        break;
      case 1:
        emit(RoutesState(
            bottomNavItems: PAGES.bookedList.screenName,
            index: index,
            status: RouteStatus.initial));
        break;
      case 2:
        emit(RoutesState(
            bottomNavItems: PAGES.promotion.screenName,
            index: index,
            status: RouteStatus.initial));
        break;
      case 3:
        emit(RoutesState(
            bottomNavItems: PAGES.venueList.screenName,
            index: index,
            status: RouteStatus.initial));
        break;
      case 4:
        emit(RoutesState(
            bottomNavItems: PAGES.settings.screenName,
            index: index,
            status: RouteStatus.initial));
        break;
      //can add more item here for more feature coming
    }
  }
}

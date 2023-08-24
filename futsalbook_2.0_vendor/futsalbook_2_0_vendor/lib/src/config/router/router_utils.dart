enum PAGES {
  home,
  booked,
  bookedDetails,
  promotion,
  futsalDetails,
  settings,
  profile,
  payment,
}

extension RouteUtilities on PAGES {
  String get screenPath {
    switch (this) {
      case PAGES.home:
        return "/home";
      case PAGES.booked:
        return "/booked";
      default:
        return "/error-404";
    }
  }

  String get screenName {
    switch (this) {
      case PAGES.home:
        return "HOME";
      case PAGES.booked:
        return "BOOKED";
      default:
        return "ERROR NOT FOUND: 404";
    }
  }
}

enum PAGES {
  // Entry Pages
  onboarding,
  loadingUser,
  login,
  register,

  // User's Pages
  bottomNavigationBar,
  home,
  profile,
  settings,

  // Listing Modules Pages
  // Booked
  bookedList,
  bookedDetails,

  // Venue
  venueList,
  venueDetails,

  // Courts
  courtList,
  courtDetails,

  // Promotions
  promotion,
  addPromotionForm,
  promotionDetails,

  // Payments
  paymentList,
  paymentDetails,
}

extension RouteUtilities on PAGES {
  String get screenPath {
    switch (this) {
      // Entry Pages
      case PAGES.onboarding:
        return "/onboarding";
      case PAGES.loadingUser:
        return "/loadingUser";
      case PAGES.login:
        return "/login";

      // User's Pages
      case PAGES.bottomNavigationBar:
        return "/bottomNavigationBar";
      case PAGES.home:
        return "/home";
      case PAGES.settings:
        return "/settings";
      case PAGES.profile:
        return "profile";

      // Listing Modules Pages
      // Booked
      case PAGES.bookedList:
        return "/booked";
      case PAGES.bookedDetails:
        return "/bookedDetails";

      // Promotion
      case PAGES.promotion:
        return "/promotion";
      case PAGES.addPromotionForm:
        return "addPromotion";
      case PAGES.promotionDetails:
        return "promotionDetails";

      // Venue
      case PAGES.venueList:
        return "/venueList";
      case PAGES.venueDetails:
        return "venueDetails";

      // Courts
      case PAGES.courtList:
        return "/courtList";
      case PAGES.courtDetails:
        return "courtDetails";

      // Payments

      default:
        return "/error-404";
    }
  }

  String get screenName {
    switch (this) {
      case PAGES.onboarding:
        return "ON BOARDING";
      case PAGES.loadingUser:
        return "LOADING USER";
      case PAGES.login:
        return "LOGIN";
      case PAGES.home:
        return "HOME";
      case PAGES.bookedList:
        return "BOOKED";
      case PAGES.bookedDetails:
        return "BOOKED DETAILS";
      case PAGES.promotion:
        return "PROMOTION";
      case PAGES.addPromotionForm:
        return "ADD PROMOTION FORM";
      case PAGES.promotionDetails:
        return "PROMOTION DETAILS";
      case PAGES.venueList:
        return "VENUE LIST";
      case PAGES.venueDetails:
        return "VENUE DETAILS";
      case PAGES.courtList:
        return "COURT LIST";
      case PAGES.courtDetails:
        return "COURT DETAILS";
      case PAGES.settings:
        return "SETTINGS";
      case PAGES.profile:
        return "PROFILE";
      default:
        return "ERROR NOT FOUND: 404";
    }
  }
}

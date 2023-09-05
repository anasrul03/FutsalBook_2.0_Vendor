class Promotion {
  final String promotionID;
  final String title;
  final String description;
  final String couponCode;
  final String vendorID;
  final String venueID;
  final double discountAmount;
  final DateTime createdDate;
  final DateTime expiredDate;

  Promotion({
    required this.promotionID,
    required this.title,
    required this.description,
    required this.createdDate,
    required this.expiredDate,
    required this.discountAmount,
    required this.couponCode,
    required this.vendorID,
    required this.venueID,
  });
}

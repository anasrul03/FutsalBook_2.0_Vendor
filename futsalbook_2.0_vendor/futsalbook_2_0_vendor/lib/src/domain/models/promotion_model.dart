class Promotion {
  final String promotionID;
  final String title;
  final String description;
  final String couponCode;
  final String vendorID;
  final double discountAmount;
  final DateTime createdDate;
  final DateTime expiredDate;

  Promotion(
    this.promotionID,
    this.title,
    this.description,
    this.createdDate,
    this.expiredDate,
    this.discountAmount,
    this.couponCode,
    this.vendorID,
  );
}

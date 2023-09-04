class Review {
  final String reviewID;
  final double rating;
  final String comment;
  final DateTime createdDate;
  final String customerID;
  final String venueID;

  Review({
    required this.reviewID,
    required this.rating,
    required this.comment,
    required this.createdDate,
    required this.customerID,
    required this.venueID,
  });
}

class Customer {
  final String customerID;
  final String name;
  final String email;
  final String phone;
  final String hashPassword;
  final double walletBalance;

  Customer({
    required this.customerID,
    required this.name,
    required this.email,
    required this.phone,
    required this.hashPassword,
    required this.walletBalance,
  });
}

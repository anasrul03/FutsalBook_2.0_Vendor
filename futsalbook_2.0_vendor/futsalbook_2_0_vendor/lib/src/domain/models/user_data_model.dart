class UserData {
  String? username;
  String? email;
  String? phone;
  String? companyName;

  UserData({this.username, this.email, this.phone, this.companyName});

  UserData.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    phone = json['phone'];
    companyName = json['company_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{
      'username': username,
      'email': email,
      'phone': phone,
      'company_name': companyName,
    };
    return data;
  }
}

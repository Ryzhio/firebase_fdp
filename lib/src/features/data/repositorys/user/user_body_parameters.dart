class UserBodyParameters {
  UserBodyParameters({
    this.localId,
    this.role,
    this.username,
    this.email,
    this.phone,
    this.dateOfBirth,
    this.startDate,
    this.photo,
    this.shippingAddress,
    this.billingAddress,
    this.idToken,
  });

  String? localId;
  String? role;
  String? username;
  String? email;
  String? phone;
  String? dateOfBirth;
  String? startDate;
  String? photo;
  String? shippingAddress;
  String? billingAddress;
  String? idToken;

  Map<String, dynamic> toMap() => {
        "billingAddress": billingAddress,
        "dateOfBirth": dateOfBirth,
        "email": email,
        "idToken": idToken,
        "localId": localId,
        "phone": phone,
        "photo": photo,
        "role": role,
        "shippingAddress": shippingAddress,
        "startDate": startDate,
        "username": username,
      };
}

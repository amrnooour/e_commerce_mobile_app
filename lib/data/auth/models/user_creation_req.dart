
class UserCreationReq {
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  int? gender;
  String? age;

  UserCreationReq(
      {required this.firstName,
      required this.lastName,
      required this.emailAddress,
      required this.password,
      required this.gender,
      required this.age});
}

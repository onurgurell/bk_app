import 'dart:convert';

List<UserModel> userModelListFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

UserModel userModelFromJson(String str) => UserModel.fromJson(jsonDecode(str));

class UserModel {
  late final String name;
  late String surname;
  late String email;
  late String phone;
  late String avatar;
  late String id;

  UserModel(
      {required this.name,
      required this.surname,
      required this.email,
      required this.phone,
      required this.avatar,
      required this.id});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    surname = json['surname'];
    email = json['email'];
    phone = json['phone'];
    avatar = json['avatar'];
    id = json['id'];
  }
}

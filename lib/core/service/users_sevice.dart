import 'dart:convert';

import '../model/user_model.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import '../utils/constants/user_constants_sevice.dart';

class UserService {
  Future<List<UserModel>> getUsers() async {
    final uri = Uri.parse(UserConstantsService.USER_URL);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      List<UserModel>? userList = userModelListFromJson(response.body);

      print("Result of Service: $userList");
      return userList;
    } else {
      print('data not found');
    }
    return [];
  }
}

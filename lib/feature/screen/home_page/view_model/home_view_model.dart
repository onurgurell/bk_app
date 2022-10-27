import 'package:bk_app/core/service/users_sevice.dart';
import 'package:flutter/material.dart';

import '../../../../core/model/user_model.dart';

enum UserDataEnum { Loading, Error, Idle }

class HomeViewModel extends ChangeNotifier {
  HomeViewModel() {
    getUserData();
  }

  final UserService _userService = UserService();

  List<UserModel> _users = [];
  List<UserModel> get users => _users;

  UserDataEnum userDataEnum = UserDataEnum.Idle;

  getUserData() async {
    userDataEnum = UserDataEnum.Loading;
    notifyListeners();
    try {
      _users = await _userService.getUsers();
      userDataEnum = UserDataEnum.Idle;
      notifyListeners();
    } catch (e) {
      userDataEnum = UserDataEnum.Error;
      notifyListeners();
      print("HomeViewModel/getUserData $e");
    }
  }
}

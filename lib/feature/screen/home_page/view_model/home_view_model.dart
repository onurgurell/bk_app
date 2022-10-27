import 'package:bk_app/core/service/users_sevice.dart';
import 'package:flutter/material.dart';

import '../../../../core/model/user_model.dart';

class HomeViewModel extends ChangeNotifier {
  final UserService _userService = UserService();

  List<UserModel> _user = [];
  List<UserModel> get user => _user;

  var _loading = false;
  bool get loading => _loading;

  getUserData() async {
    _loading = true;
    notifyListeners();
    _user = await _userService.getUsers();
    _loading = false;
    notifyListeners();
  }
}

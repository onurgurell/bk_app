import 'package:flutter/material.dart';
import '../../../../core/helper/text_helper.dart';
import '../../../../core/model/user_model.dart';
import '../../../../core/utils/constants/app_strings_constans.dart';

class DetailPageView extends StatelessWidget {
  UserModel userModel;

  DetailPageView({super.key, required this.userModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _detailCircleAvatar(),
              const SizedBox(
                height: 10,
              ),
              _detailUserName(),
              const SizedBox(
                height: 10,
              ),
              _detailUserSurName(),
              _detailUserInfo(),
            ],
          ),
        ));
  }

  Container _detailUserInfo() {
    return Container(
      padding: const EdgeInsets.all(12),
      child: const Text(
        AppStringConstants.userDetailInfo,
        textAlign: TextAlign.start,
      ),
    );
  }

  Text _detailUserSurName() => Text(userModel.surname);

  Text _detailUserName() => Text(userModel.name);

  CircleAvatar _detailCircleAvatar() {
    return CircleAvatar(
      backgroundImage: NetworkImage(userModel.avatar),
      radius: 75,
    );
  }
}

import 'package:bk_app/core/model/user_model.dart';
import 'package:bk_app/feature/screen/home_page/widgets/custom_user_card.dart';
import 'package:flutter/material.dart';

class CustomUserListWidget extends StatelessWidget {
  CustomUserListWidget({super.key, required this.users});

  List<UserModel> users;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      key: const PageStorageKey<String>('page'),
      shrinkWrap: true,
      itemCount: users.length,
      itemBuilder: ((context, index) {
        return CustomUserCard(
          userModel: users[index],
        );
      }),
    );
  }
}

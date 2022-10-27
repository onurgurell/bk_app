import 'package:bk_app/core/utils/constants/app_strings_constans.dart';
import 'package:bk_app/feature/screen/home_page/view/custom_user_list_widget.dart';
import 'package:bk_app/feature/screen/home_page/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/loading_widget.dart';

class UserInfoCard extends StatefulWidget {
  const UserInfoCard({super.key});

  @override
  State<UserInfoCard> createState() => _UserInfoCardState();
}

class _UserInfoCardState extends State<UserInfoCard> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: ((context, viewModel, child) {
        if (viewModel.userDataEnum == UserDataEnum.Loading) {
          return const LoadingWidget();
        }
        if (viewModel.userDataEnum == UserDataEnum.Error) {
          return const SizedBox(
            child: Text(AppStringConstants.error),
          );
        }
        return CustomUserListWidget(
          users: viewModel.users,
        );
      }),
    );
  }
}

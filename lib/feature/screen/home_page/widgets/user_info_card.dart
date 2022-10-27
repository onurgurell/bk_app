import 'package:bk_app/feature/screen/home_page/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../product/widgets/custom_text_area.dart';
import 'detail_button.dart';

class UserInfoCard extends StatefulWidget {
  const UserInfoCard({super.key});

  @override
  State<UserInfoCard> createState() => _UserInfoCardState();
}

class _UserInfoCardState extends State<UserInfoCard> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<HomeViewModel>(context, listen: false).getUserData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: ((context, viewModel, child) {
        if (viewModel.loading) {
          return _isLoading();
        }
        return _customUserCardList(viewModel);
      }),
    );
  }

  Center _isLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  ListView _customUserCardList(HomeViewModel viewModel) {
    return ListView.builder(
      key: const PageStorageKey<String>('page'),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: viewModel.user.length,
      itemBuilder: ((context, index) {
        return _customUserCard(context, viewModel, index);
      }),
    );
  }

  Card _customUserCard(
      BuildContext context, HomeViewModel viewModel, int index) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(22),
        ),
        height: MediaQuery.of(context).size.height * .3,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _customCircleAvatar(viewModel, index),
              const SizedBox(
                height: 12,
              ),
              _cardTextAreas(viewModel, index),
              const SizedBox(
                height: 20,
              ),
              _customDetailButton(viewModel, index),
            ],
          ),
        ),
      ),
    );
  }

  CustomTextArea _cardTextAreas(HomeViewModel viewModel, int index) {
    return CustomTextArea(
      name: viewModel.user[index].name,
      surName: viewModel.user[index].surname,
      email: viewModel.user[index].email,
      number: viewModel.user[index].phone,
    );
  }

  DetailButton _customDetailButton(HomeViewModel viewModel, int index) {
    return DetailButton(
      userModel: viewModel.user[index],
    );
  }

  CircleAvatar _customCircleAvatar(HomeViewModel viewModel, int index) {
    return CircleAvatar(
      radius: 35,
      backgroundImage: NetworkImage('${viewModel.user[index].avatar}'),
    );
  }
}

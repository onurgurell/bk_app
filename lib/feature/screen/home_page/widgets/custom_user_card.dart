import 'package:bk_app/core/model/user_model.dart';
import 'package:flutter/material.dart';
import '../../../../product/widgets/custom_text_area.dart';
import 'detail_button.dart';

class CustomUserCard extends StatelessWidget {
  const CustomUserCard({super.key, required this.userModel});

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(22),
        ),
        height: MediaQuery.of(context).size.height * .3,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _customCircleAvatar(),
              const SizedBox(
                height: 12,
              ),
              _cardTextAreas(),
              const SizedBox(
                height: 20,
              ),
              _customDetailButton(),
            ],
          ),
        ),
      ),
    );
  }

  CustomTextArea _cardTextAreas() {
    return CustomTextArea(
      name: userModel.name,
      surName: userModel.surname,
      email: userModel.email,
      number: userModel.phone,
    );
  }

  DetailButton _customDetailButton() {
    return DetailButton(
      userModel: userModel,
    );
  }

  CircleAvatar _customCircleAvatar() {
    return CircleAvatar(
      radius: 35,
      backgroundImage: NetworkImage(userModel.avatar),
    );
  }
}

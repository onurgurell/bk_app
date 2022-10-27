import 'package:flutter/material.dart';

import '../../../../core/helper/text_helper.dart';
import '../../../../core/model/user_model.dart';
import '../../detail_page/view/detail_page_view.dart';

class DetailButton extends StatelessWidget {
  UserModel userModel;
  DetailButton({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (() {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailPageView(userModel: userModel)),
        );
      }),
      child: _buttonName(),
    );
  }

  Text _buttonName() => const Text(StringConstant.detailButton);
}

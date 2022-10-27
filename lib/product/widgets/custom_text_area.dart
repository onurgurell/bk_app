import 'package:flutter/material.dart';

import '../../core/utils/constants/app_strings_constans.dart';

class CustomTextArea extends StatelessWidget {
  final String name;
  final String surName;

  final String email;
  final String number;
  const CustomTextArea(
      {super.key,
      required this.email,
      required this.name,
      required this.number,
      required this.surName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .8,
      child: Column(
        children: [
          getText(AppStringConstants.name, name),
          getText(AppStringConstants.surName, surName),
          getText(AppStringConstants.email, email),
          getText(AppStringConstants.number, number),
        ],
      ),
    );
  }

  Widget getText(String title, String val) {
    return Text(
      '$title: $val',
      style: const TextStyle(fontSize: 17),
    );
  }
}

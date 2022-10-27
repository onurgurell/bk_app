import 'package:flutter/material.dart';

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
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      child: Column(
        children: [
          Text(
            'name: $name',
            style: TextStyle(fontSize: 17),
          ),
          Text(
            'surName: $surName',
            style: TextStyle(fontSize: 17),
          ),
          Text(
            'email: $email',
            style: TextStyle(fontSize: 17),
          ),
          Text(
            'number: $number',
            style: TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'user_info_card.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: UserInfoCard(),
      ),
    );
  }
}

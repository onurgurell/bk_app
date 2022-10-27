import 'package:flutter/material.dart';

import '../widgets/user_info_card.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            UserInfoCard(),
          ],
        ),
      ),
    );
  }
}

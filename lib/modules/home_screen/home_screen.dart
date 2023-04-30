import 'package:flutter/material.dart';
import 'package:task_badr/modules/home_screen/widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeAppBar(),
        ],
      ),
    );
  }
}

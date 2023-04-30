import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 375.w,
            height: 1000.h,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

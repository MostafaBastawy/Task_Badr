import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_badr/modules/home_screen/widgets/account_status.dart';
import 'package:task_badr/modules/home_screen/widgets/add_new_service.dart';
import 'package:task_badr/modules/home_screen/widgets/home_app_bar.dart';
import 'package:task_badr/modules/home_screen/widgets/our_services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeAppBar(),
        SizedBox(height: 32.h),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                const AccountStatus(),
                SizedBox(height: 21.h),
                const AddNewService(),
                SizedBox(height: 25.h),
                const OurServices(),
                SizedBox(height: 32.h),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

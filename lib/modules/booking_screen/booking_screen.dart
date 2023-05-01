import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_badr/modules/booking_screen/widgets/booking_app_bar.dart';
import 'package:task_badr/modules/booking_screen/widgets/booking_list.dart';
import 'package:task_badr/modules/booking_screen/widgets/booking_tabs.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BookingAppBar(),
        SizedBox(height: 24.h),
        const BookingTabs(),
        SizedBox(height: 10.h),
        const BookingList(),
        SizedBox(height: 80.h),
      ],
    );
  }
}

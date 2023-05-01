import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_badr/modules/booking_screen/widgets/booking_app_bar.dart';
import 'package:task_badr/modules/booking_screen/widgets/booking_item.dart';
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
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            itemBuilder: (BuildContext context, int index) =>
                const BookingItem(),
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 16.h),
            itemCount: 10,
          ),
        ),
        SizedBox(height: 80.h),
      ],
    );
  }
}

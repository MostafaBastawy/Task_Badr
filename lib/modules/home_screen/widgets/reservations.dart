import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';

class Reservations extends StatelessWidget {
  const Reservations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'طلبات الحجوزات',
              style: TextStyle(
                color: ColorsManager.f000000,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'مشاهدة الكل',
              style: TextStyle(
                color: ColorsManager.f555556,
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        SizedBox(height: 28.h),
        SizedBox(
          height: 182.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) => Container(),
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(width: 16.w),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

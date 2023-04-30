import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';

class ReservationChart extends StatelessWidget {
  const ReservationChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'عدد المراجعين',
              style: TextStyle(
                color: ColorsManager.f000000,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              width: 112.w,
              height: 36.h,
              decoration: BoxDecoration(
                color: ColorsManager.fF8F8F8,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'أخر 7 أيام',
                    style: TextStyle(
                      color: ColorsManager.f555556,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/images/home_screen/drop.svg',
                    width: 28.w,
                    height: 28.h,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 25.h),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';

class BookingAppBar extends StatelessWidget {
  const BookingAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      width: 375.w,
      height: 109.h,
      decoration: BoxDecoration(
        color: ColorsManager.f615198,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.r),
          bottomRight: Radius.circular(15.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: 30.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/images/booking_screen/arrow_right.svg',
                width: 28.w,
                height: 28.h,
              ),
            ),
            Text(
              'الحجوزات',
              style: TextStyle(
                color: ColorsManager.fF6F6F6,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 32.w,
                height: 32.h,
                decoration: BoxDecoration(
                  color: ColorsManager.fF6F6F6.withOpacity(0.31),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/images/home_screen/bell.svg',
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

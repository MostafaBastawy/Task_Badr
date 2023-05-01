import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';

class BookingItem extends StatelessWidget {
  const BookingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      decoration: BoxDecoration(
        color: ColorsManager.fF8F8F8,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
            width: 335.w,
            decoration: BoxDecoration(
              color: ColorsManager.f8778B7,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.r),
                topRight: Radius.circular(8.r),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/home_screen/calendar.svg',
                  width: 20.w,
                  height: 20.h,
                ),
                SizedBox(width: 8.w),
                Text(
                  'الثلاثاء , 16 يونيو',
                  style: TextStyle(
                    color: ColorsManager.fffffff,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(
                  'assets/images/home_screen/clock.svg',
                  width: 20.w,
                  height: 20.h,
                ),
                SizedBox(width: 8.w),
                Text(
                  '00 : 10 ص',
                  style: TextStyle(
                    color: ColorsManager.fffffff,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 18.w),
              Image.asset(
                'assets/images/home_screen/profile1.png',
                fit: BoxFit.fill,
                width: 36,
                height: 36,
              ),
              SizedBox(width: 16.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'محمد صالح',
                    style: TextStyle(
                      color: ColorsManager.f202A2E,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    'خدمة قص شعر قط صغير',
                    style: TextStyle(
                      color: ColorsManager.f202A2E,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 32.h),
          Container(
            width: 335.w,
            height: 1.h,
            color: ColorsManager.fE4E4E4,
          ),
          SizedBox(height: 13.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/home_screen/accept.svg',
                width: 20.w,
                height: 20.h,
              ),
              SizedBox(width: 8.w),
              Text(
                'قبول',
                style: TextStyle(
                  color: ColorsManager.f3EBF60,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: 63.w),
              SvgPicture.asset(
                'assets/images/home_screen/reject.svg',
                width: 20.w,
                height: 20.h,
              ),
              SizedBox(width: 8.w),
              Text(
                'طلب إعادة جدولة',
                style: TextStyle(
                  color: ColorsManager.fEA4E2C,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 13.h),
        ],
      ),
    );
  }
}

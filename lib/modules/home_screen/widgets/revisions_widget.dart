import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';

class RevisionsWidget extends StatelessWidget {
  const RevisionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      width: 160.w,
      height: 164.h,
      decoration: BoxDecoration(
          color: ColorsManager.fBDEF95,
          borderRadius: BorderRadius.circular(8.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),
          Text(
            'الإستشارات',
            style: TextStyle(
              color: ColorsManager.f202A2E,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 14.h),
          Text(
            'لديك 5 رسائل جديدة',
            style: TextStyle(
              color: ColorsManager.f202A2E,
              fontSize: 12.sp,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/home_screen/profile1.png',
                    width: 32,
                    height: 32,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 20.w),
                    child: Image.asset(
                      'assets/images/home_screen/profile2.png',
                      width: 32,
                      height: 32,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 40.w),
                    child: Image.asset(
                      'assets/images/home_screen/profile3.png',
                      width: 32,
                      height: 32,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SvgPicture.asset(
                'assets/images/home_screen/plus.svg',
                width: 18.w,
                height: 18.h,
              ),
            ],
          ),
          SizedBox(height: 22.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'الذهاب إلى',
                style: TextStyle(
                  color: ColorsManager.f202A2E,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(width: 2.w),
              SvgPicture.asset(
                'assets/images/home_screen/arrow left.svg',
                width: 18.w,
                height: 18.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

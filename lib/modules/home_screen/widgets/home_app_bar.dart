import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            width: 375.w,
            height: 109.h,
            decoration: BoxDecoration(
              color: ColorsManager.f615198,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.r),
                bottomRight: Radius.circular(15.r),
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: SvgPicture.asset(
            'assets/images/home_screen/app_bar_linear.svg',
          ),
        ),
        Positioned(
          bottom: 30.h,
          right: 20.w,
          left: 20.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 32.w,
                height: 32.h,
                decoration: BoxDecoration(
                  color: ColorsManager.fF6F6F6.withOpacity(0.31),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/images/home_screen/menu.svg',
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ),
              SizedBox(width: 20.w),
              Expanded(
                child: Text(
                  'عيادة بيتس هاوس',
                  style: TextStyle(
                    color: ColorsManager.fF6F6F6,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(width: 20.w),
              Container(
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
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';

class WalletWidget extends StatelessWidget {
  const WalletWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/home_screen/wallet.png',
          height: 164.h,
          width: 184.w,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              Text(
                'المحفظة',
                style: TextStyle(
                  color: ColorsManager.f202A2E,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 75.h),
              Text(
                'المبلغ  الإجمالي',
                style: TextStyle(
                  color: ColorsManager.f202A2E,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                '5500 ر.س',
                style: TextStyle(
                  color: ColorsManager.f202A2E,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

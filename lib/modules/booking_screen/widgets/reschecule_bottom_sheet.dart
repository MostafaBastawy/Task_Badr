import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_badr/modules/booking_screen/widgets/app_button.dart';
import 'package:task_badr/utilis/styles/colors_manager.dart';

class RescheduleBottomSheet extends StatelessWidget {
  const RescheduleBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      width: 375.w,
      height: 522.h,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  'assets/images/booking_screen/close.svg',
                  width: 28.w,
                  height: 28.h,
                ),
              ),
              SizedBox(width: 112.w),
              Container(
                width: 60.w,
                height: 6.h,
                decoration: BoxDecoration(
                  color: ColorsManager.fBDBDBD,
                  borderRadius: BorderRadius.circular(3.r),
                ),
              ),
            ],
          ),
          SizedBox(height: 45.h),
          SvgPicture.asset(
            'assets/images/booking_screen/calendar.svg',
            width: 237.w,
            height: 156.h,
          ),
          SizedBox(height: 45.h),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Text(
              'اقتراح موعد آخر',
              style: TextStyle(
                color: ColorsManager.f151522,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              InkWell(
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.utc(2050, 12, 31),
                  );
                },
                child: SizedBox(
                  width: 208.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'التاريخ',
                        style: TextStyle(
                          color: ColorsManager.f151522,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 8.h),
                        decoration: BoxDecoration(
                          color: ColorsManager.fffffff,
                          borderRadius: BorderRadius.circular(
                            5.r,
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: ColorsManager.f000000.withOpacity(0.24),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'اختر  التاريخ',
                              style: TextStyle(
                                color: ColorsManager.f151522.withOpacity(0.4),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/images/booking_screen/calendar2.svg',
                              width: 24.w,
                              height: 24.h,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                },
                child: SizedBox(
                  width: 112.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'الوقت',
                        style: TextStyle(
                          color: ColorsManager.f151522,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 8.h),
                        decoration: BoxDecoration(
                          color: ColorsManager.fffffff,
                          borderRadius: BorderRadius.circular(
                            5.r,
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: ColorsManager.f000000.withOpacity(0.24),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: '00 : 00    ',
                                style: TextStyle(
                                  color: ColorsManager.f151522.withOpacity(0.4),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'ص',
                                    style: TextStyle(
                                      color: ColorsManager.f151522
                                          .withOpacity(0.72),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/images/booking_screen/arrow_down.svg',
                              width: 24.w,
                              height: 24.h,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 32.h),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: AppButton(
              width: 176.w,
              height: 40.h,
              onTap: () {
                Navigator.pop(context);
              },
              label: 'إقتراح موعد',
            ),
          ),
        ],
      ),
    );
  }
}
